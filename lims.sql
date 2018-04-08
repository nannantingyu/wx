/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : 127.0.0.1:3306
Source Database       : lims

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-08 14:08:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ba_biologicalanalyzer
-- ----------------------------
DROP TABLE IF EXISTS `ba_biologicalanalyzer`;
CREATE TABLE `ba_biologicalanalyzer` (
  `biologicalAnalyzerId` int(11) NOT NULL AUTO_INCREMENT,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `orderState` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `endDate` varchar(30) DEFAULT NULL,
  `sensitivity` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`biologicalAnalyzerId`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ba_biologicalanalyzer
-- ----------------------------
INSERT INTO `ba_biologicalanalyzer` VALUES ('108', '张春可', '2018-03-29 10:15:15', '已反馈', '', '张春可', '2018-03-29 10:14:51', '张春可', '2018-03-29 10:15:38', '210020180329101451', '2018-03-29', '低灵敏度');
INSERT INTO `ba_biologicalanalyzer` VALUES ('109', '张春可', '2018-03-29 10:20:26', '已反馈', '', '张春可', '2018-03-29 10:20:11', '张春可', '2018-03-29 10:20:34', '210020180329102011', '2018-03-29', '低灵敏度');

-- ----------------------------
-- Table structure for ba_biologicalanalyzerdetails
-- ----------------------------
DROP TABLE IF EXISTS `ba_biologicalanalyzerdetails`;
CREATE TABLE `ba_biologicalanalyzerdetails` (
  `biologicalAnalyzerDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `buildFeedbackStrategy` varchar(50) DEFAULT NULL,
  `checkProjectName` varchar(50) NOT NULL,
  `feedbackFragmentSize` varchar(50) DEFAULT NULL,
  `feedbackOperator` varchar(50) DEFAULT NULL,
  `feedbackProcessMode` varchar(20) DEFAULT NULL,
  `feedbackQualified` varchar(50) DEFAULT NULL,
  `feedbackRemark` longtext,
  `feedbackResult` varchar(10) DEFAULT NULL,
  `feedbackSampleNo` varchar(50) DEFAULT NULL,
  `feedbackSampleUnit` varchar(20) DEFAULT NULL,
  `feedbackStorage` varchar(50) DEFAULT NULL,
  `feedbackSurplus` varchar(50) DEFAULT NULL,
  `feedbackTotalAmount` varchar(50) DEFAULT NULL,
  `feedbackUsageAmount` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) NOT NULL,
  `orderSampleUnit` varchar(20) NOT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `sampleGtasksId` int(30) DEFAULT NULL,
  `buildBy` varchar(50) DEFAULT NULL,
  `mixingRatio` varchar(100) DEFAULT NULL,
  `number2100` varchar(50) DEFAULT NULL,
  `purificationConcentration` varchar(50) DEFAULT '',
  `purificationVolume` varchar(50) DEFAULT '',
  `feedbackAmount` varchar(50) DEFAULT '',
  `diluentConcentration` varchar(50) DEFAULT '',
  `diluentVolume` varchar(50) DEFAULT '',
  `orderProjectNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`biologicalAnalyzerDetailsId`),
  UNIQUE KEY `feedbackSampleNo` (`feedbackSampleNo`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ba_biologicalanalyzerdetails
-- ----------------------------
INSERT INTO `ba_biologicalanalyzerdetails` VALUES ('261', 'QPCR2100', '优馨安--无创产前基因检测', '1', '张春可', '通过', '合格', '', '成功', 'PN00GL00PJ0002-1-15', '2100', '', '20', '20', '1', '', 'PN00GL00PJ0002-1-15', 'nl', 'PN00G00PJ0002', '', '全血', 'PN00G00PJ0002', '张春可', '2018-03-29 10:15:38', '210020180329101451', '139249', 'bioo(PCR)', '1', null, '1', '30', '30', '', '', '');
INSERT INTO `ba_biologicalanalyzerdetails` VALUES ('262', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '2', '张春可', '通过', '合格', '', '成功', 'NE00GL00NJ0004-1-17', '2100', '', '20', '20', '1', '', 'NE00GL00NJ0004-1-17', 'nl', 'NE00G00NJ0004', '', '全血', 'NE00G00NJ0004', '张春可', '2018-03-29 10:15:38', '210020180329101451', '139251', 'bioo(PCR)', '1', null, '2', '30', '60', '', '', '');
INSERT INTO `ba_biologicalanalyzerdetails` VALUES ('263', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '3', '张春可', '通过', '合格', '', '成功', 'NE00GL00NJ0003-1-18', '2100', '', '20', '20', '1', '', 'NE00GL00NJ0003-1-18', 'nl', 'NE00G00NJ0003', '', '全血', 'NE00G00NJ0003', '张春可', '2018-03-29 10:15:38', '210020180329101451', '139253', 'bioo(PCR)', '1', null, '3', '30', '90', '', '', '');
INSERT INTO `ba_biologicalanalyzerdetails` VALUES ('264', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '4', '张春可', '通过', '合格', '', '成功', 'NE00GL00NJ0001-1-21', '2100', '', '20', '20', '1', '', 'NE00GL00NJ0001-1-21', 'nl', 'NE00G00NJ0001', '', '全血', 'NE00G00NJ0001', '张春可', '2018-03-29 10:15:38', '210020180329101451', '139255', 'bioo(PCR)', '1', null, '1', '30', '30', '', '', '');
INSERT INTO `ba_biologicalanalyzerdetails` VALUES ('265', 'QPCR2100', '优馨安--无创产前基因检测', '1', '张春可', '通过', '合格', '', '成功', 'PN00GL00PJ0003-1-25', '2100', '', '20', '20', '1', '', 'PN00GL00PJ0003-1-25', 'nl', 'PN00G00PJ0003', '', '流产组织', 'PN00G00PJ0003', '张春可', '2018-03-29 10:20:34', '210020180329102011', '139261', 'bioo(PCR)', '1', null, '1', '30', '30', '', '', '');
INSERT INTO `ba_biologicalanalyzerdetails` VALUES ('266', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '2', '张春可', '通过', '合格', '', '成功', 'NE00GL00NJ0002-1-26', '2100', '', '20', '20', '1', '', 'NE00GL00NJ0002-1-26', 'nl', 'NE00G00NJ0002', '', '全血', 'NE00G00NJ0002', '张春可', '2018-03-29 10:20:34', '210020180329102011', '139263', 'bioo(PCR)', '1', null, '1', '30', '30', '', '', '');
INSERT INTO `ba_biologicalanalyzerdetails` VALUES ('267', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '3', '张春可', '通过', '合格', '', '成功', 'NE00GL00NJ0005-1-27', '2100', '', '20', '20', '1', '', 'NE00GL00NJ0005-1-27', 'nl', 'NE00G00NJ0005', '', '全血', 'NE00G00NJ0005', '张春可', '2018-03-29 10:20:34', '210020180329102011', '139265', 'bioo(PCR)', '1', null, '1', '30', '30', '', '', '');
INSERT INTO `ba_biologicalanalyzerdetails` VALUES ('268', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '4', '张春可', '通过', '合格', '', '成功', 'NE00GL00NJ0005-6-28', '2100', '', '20', '20', '1', '', 'NE00GL00NJ0005-6-28', 'nl', 'NE00G00NJ0005', '', '全血', 'NE00G00NJ0005', '张春可', '2018-03-29 10:20:34', '210020180329102011', '139267', 'bioo(PCR)', '1', null, '1', '30', '30', '', '', '');

-- ----------------------------
-- Table structure for bc_biologicalcomputer
-- ----------------------------
DROP TABLE IF EXISTS `bc_biologicalcomputer`;
CREATE TABLE `bc_biologicalcomputer` (
  `biologicalComputerId` int(11) NOT NULL AUTO_INCREMENT,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `orderState` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `endDate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`biologicalComputerId`)
) ENGINE=InnoDB AUTO_INCREMENT=605 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bc_biologicalcomputer
-- ----------------------------
INSERT INTO `bc_biologicalcomputer` VALUES ('603', '张春可', '2018-03-29 10:16:43', '已反馈', '', '张春可', '2018-03-29 10:16:23', '张春可', '2018-03-29 11:25:54', 'SJ20180329101623', '2018-03-29');
INSERT INTO `bc_biologicalcomputer` VALUES ('604', '系统', '2018-03-29 10:30:16', '已反馈', '', '系统', '2018-03-29 10:30:16', '系统', '2018-03-29 10:30:16', 'SJ20180329103015', '2018-03-29 10:30:16');

-- ----------------------------
-- Table structure for bc_biologicalcomputerdetails
-- ----------------------------
DROP TABLE IF EXISTS `bc_biologicalcomputerdetails`;
CREATE TABLE `bc_biologicalcomputerdetails` (
  `biologicalComputerDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `buildFeedbackStrategy` varchar(50) DEFAULT NULL,
  `checkProjectName` varchar(50) NOT NULL,
  `feedbackDensity` varchar(50) DEFAULT NULL,
  `feedbackOperator` varchar(50) DEFAULT NULL,
  `feedbackProcessMode` varchar(20) DEFAULT NULL,
  `feedbackQualified` varchar(50) DEFAULT NULL,
  `feedbackRemark` longtext,
  `feedbackResult` varchar(10) DEFAULT NULL,
  `feedbackSampleNo` varchar(150) DEFAULT NULL,
  `feedbackSampleUnit` varchar(20) DEFAULT NULL,
  `feedbackSurplus` varchar(50) DEFAULT NULL,
  `feedbackTotalAmount` varchar(50) DEFAULT NULL,
  `feedbackUsageAmount` varchar(50) DEFAULT NULL,
  `feedbackYield` varchar(50) DEFAULT NULL,
  `feedbackpf` varchar(50) DEFAULT NULL,
  `feedbackq30` varchar(50) DEFAULT NULL,
  `orderBiologicalAnalyzer` varchar(50) DEFAULT NULL,
  `orderCaptureLibraryNo` varchar(50) DEFAULT NULL,
  `orderData` varchar(50) DEFAULT NULL,
  `orderDate` varchar(30) DEFAULT NULL,
  `orderDiluentConcentration` varchar(50) DEFAULT NULL,
  `orderDiluentvolume` varchar(50) DEFAULT NULL,
  `orderIndex` varchar(50) DEFAULT NULL,
  `orderLane` varchar(30) DEFAULT NULL,
  `orderLibraryName` varchar(50) DEFAULT NULL,
  `orderOutAmount` varchar(50) DEFAULT NULL,
  `orderOutConcentration` varchar(50) DEFAULT NULL,
  `orderOutVolume` varchar(50) DEFAULT NULL,
  `orderProjectName` varchar(50) DEFAULT NULL,
  `orderProjectNo` varchar(50) DEFAULT NULL,
  `orderQpcr` varchar(50) DEFAULT NULL,
  `orderReads` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleName` varchar(50) DEFAULT NULL,
  `orderSampleNo` varchar(50) NOT NULL,
  `orderSampleUnit` varchar(20) NOT NULL,
  `orderSequencerNo` varchar(30) DEFAULT NULL,
  `orderSequencingStrategy` varchar(30) DEFAULT NULL,
  `orderfcId` varchar(30) DEFAULT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `sampleGtasksId` int(30) DEFAULT NULL,
  `buildBy` varchar(50) DEFAULT NULL,
  `bufferNumber` varchar(50) DEFAULT NULL,
  `reagentNumber` varchar(50) DEFAULT NULL,
  `correctingReads` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`biologicalComputerDetailsId`),
  UNIQUE KEY `feedbackSampleNo` (`feedbackSampleNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bc_biologicalcomputerdetails
-- ----------------------------
INSERT INTO `bc_biologicalcomputerdetails` VALUES ('999', 'QPCR2100', '优馨安--无创产前基因检测', '', '张春可', '通过', '合格', '', '成功', 'PN00GL00PJ0002-1-15_4554_L1234_PN00GL00PJ0002-1-15_20180329_3', 'sj', '20', '20', '1', '', '', '', '1', 'PN00GL00PJ0002-1-15', '', '20180329', '', '', '15', '1/2/3/4', 'PN00GL00PJ0002-1-15', '30', '1', '30', '', 'NIPT', '1', '5', '', 'PN00G00PJ0002', 'PN00GL00PJ0002-1-15', 'qc', '2334', '3345232', '4554', 'PN00G00PJ0002', '未推送', '全血', 'PN00G00PJ0002', '张春可', '2018-03-29 11:25:54', 'SJ20180329101623', '139257', 'bioo(PCR)', null, null, null);
INSERT INTO `bc_biologicalcomputerdetails` VALUES ('1000', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '', '张春可', '通过', '合格', '', '成功', 'NE00GL00NJ0004-1-17_4554_L1234_NE00GL00NJ0004-1-17_20180329_3', 'sj', '20', '20', '1', '', '', '', '2', 'NE00GL00NJ0004-1-17', '', '20180329', '', '', '17', '1/2/3/4', 'NE00GL00NJ0004-1-17', '60', '2', '30', '', 'NIPT', '23', '5', '', 'NE00G00NJ0004', 'NE00GL00NJ0004-1-17', 'qc', '2334', '3345232', '4554', 'NE00G00NJ0004', '未推送', '全血', 'NE00G00NJ0004', '张春可', '2018-03-29 11:25:54', 'SJ20180329101623', '139258', 'bioo(PCR)', null, null, null);
INSERT INTO `bc_biologicalcomputerdetails` VALUES ('1001', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '', '张春可', '通过', '合格', '', '成功', 'NE00GL00NJ0003-1-18_4554_L1234_NE00GL00NJ0003-1-18_20180329_3', 'sj', '20', '20', '1', '', '', '', '3', 'NE00GL00NJ0003-1-18', '', '20180329', '', '', '18', '1/2/3/4', 'NE00GL00NJ0003-1-18', '90', '3', '30', '', 'NIPT', '3', '5', '', 'NE00G00NJ0003', 'NE00GL00NJ0003-1-18', 'qc', '2334', '3345232', '4554', 'NE00G00NJ0003', '未推送', '全血', 'NE00G00NJ0003', '张春可', '2018-03-29 11:25:54', 'SJ20180329101623', '139259', 'bioo(PCR)', null, null, null);
INSERT INTO `bc_biologicalcomputerdetails` VALUES ('1002', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', '', '张春可', '通过', '不合格', '', '成功', 'NE00GL00NJ0001-1-21_4554_L1234_NE00GL00NJ0001-1-21_20180329_3', 'sj', '0', '20', '1', '', '', '', '4', 'NE00GL00NJ0001-1-21', '', '20180329', '', '', '21', '1/2/3/4', 'NE00GL00NJ0001-1-21', '30', '1', '30', '', 'NIPT', '4', '5', '', 'NE00G00NJ0001', 'NE00GL00NJ0001-1-21', 'qc', '2334', '3345232', '4554', 'NE00G00NJ0001', '未推送', '全血', 'NE00G00NJ0001', '张春可', '2018-03-29 11:25:54', 'SJ20180329101623', '139260', 'bioo(PCR)', null, null, null);
INSERT INTO `bc_biologicalcomputerdetails` VALUES ('1003', 'QPCR2100', '优馨安--无创产前基因检测', null, '系统', null, '合格', null, null, 'PN00GL00PJ0003-1-25_HN5KHBGX3_L1234_PN00GL00PJ0003-1-25_20180329_S', 'sj', null, '20', '1', null, null, null, '1.0', 'PN00GL00PJ0003-1-25', null, '20180329', '', null, '25', '1/2/3/4', 'PN00GL00PJ0003-1-25', '30', '1', '30', '优馨安', 'NIPT', '0.452', '25.0', '合格', 'PN00G00PJ0003', 'PN00GL00PJ0003-1-25', 'qc', 'NB501107', 'SE76+9', 'HN5KHBGX3', 'PN00G00PJ0003', null, '流产组织', 'PN00G00PJ0003', '张春可', '2018-03-29 10:30:15', 'SJ20180329103015', '139269', 'bioo(PCR)', null, null, null);
INSERT INTO `bc_biologicalcomputerdetails` VALUES ('1004', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', null, '系统', null, '合格', null, null, 'NE00GL00NJ0002-1-26_HN5KHBGX3_L1234_NE00GL00NJ0002-1-26_20180329_S', 'sj', null, '20', '1', null, null, null, '2.0', 'NE00GL00NJ0002-1-26', null, '20180329', '', null, '26', '1/2/3/4', 'NE00GL00NJ0002-1-26', '30', '1', '30', '优馨安plus', 'NIPT+', '0.678', '25.0', '合格', 'NE00G00NJ0002', 'NE00GL00NJ0002-1-26', 'qc', 'NB501107', 'SE76+9', 'HN5KHBGX3', 'NE00G00NJ0002', null, '全血', 'NE00G00NJ0002', '张春可', '2018-03-29 10:30:16', 'SJ20180329103015', '139270', 'bioo(PCR)', null, null, null);
INSERT INTO `bc_biologicalcomputerdetails` VALUES ('1005', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', null, '系统', null, '合格', null, null, 'NE00GL00NJ0005-1-27_HN5KHBGX3_L1234_NE00GL00NJ0005-1-27_20180329_S', 'sj', null, '20', '1', null, null, null, '3.0', 'NE00GL00NJ0005-1-27', null, '20180329', '', null, '27', '1/2/3/4', 'NE00GL00NJ0005-1-27', '30', '1', '30', '优馨安plus', 'NIPT+', '0.452', '25.0', '合格', 'NE00G00NJ0005', 'NE00GL00NJ0005-1-27', 'qc', 'NB501107', 'SE76+9', 'HN5KHBGX3', 'NE00G00NJ0005', null, '全血', 'NE00G00NJ0005', '张春可', '2018-03-29 10:30:16', 'SJ20180329103015', '139271', 'bioo(PCR)', null, null, null);
INSERT INTO `bc_biologicalcomputerdetails` VALUES ('1006', 'QPCR2100', '优馨安--无创产前基因检测(NIPT plus)', null, '系统', null, '合格', null, null, 'NE00GL00NJ0005-6-28_HN5KHBGX3_L1234_NE00GL00NJ0005-6-28_20180329_S', 'sj', null, '20', '1', null, null, null, '4.0', 'NE00GL00NJ0005-6-28', null, '20180329', '', null, '28', '1/2/3/4', 'NE00GL00NJ0005-6-28', '30', '1', '30', '优馨安plus', 'NIPT+', '0.452', '25.0', '合格', 'NE00G00NJ0005', 'NE00GL00NJ0005-6-28', 'qc', 'NB501107', 'SE76+9', 'HN5KHBGX3', 'NE00G00NJ0005', null, '全血', 'NE00G00NJ0005', '张春可', '2018-03-29 10:30:16', 'SJ20180329103015', '139272', 'bioo(PCR)', null, null, null);

-- ----------------------------
-- Table structure for bgglinfo
-- ----------------------------
DROP TABLE IF EXISTS `bgglinfo`;
CREATE TABLE `bgglinfo` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `times` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgglinfo
-- ----------------------------

-- ----------------------------
-- Table structure for binding_details
-- ----------------------------
DROP TABLE IF EXISTS `binding_details`;
CREATE TABLE `binding_details` (
  `package_id` int(11) NOT NULL AUTO_INCREMENT,
  `package` text COMMENT '检测项目',
  `userbasicID` int(11) NOT NULL COMMENT '用户信息表id',
  `tjTel` varchar(30) DEFAULT NULL COMMENT '用户电话',
  `familyHistory` varchar(50) DEFAULT NULL COMMENT '家族史',
  `familyRelation` varchar(10) DEFAULT NULL COMMENT '与受检者关系',
  `onsetAge` varchar(10) DEFAULT NULL COMMENT '发病年龄',
  `presentHistory` varchar(50) DEFAULT NULL COMMENT '现病史',
  `treatment` varchar(50) DEFAULT NULL COMMENT '治疗情况',
  `normal_history` varchar(30) DEFAULT NULL COMMENT '烟酒药物史',
  `medicine_history` varchar(50) DEFAULT NULL COMMENT '药物史',
  `different_history` varchar(30) DEFAULT NULL COMMENT '有毒有害接触史',
  `different_other` varchar(50) DEFAULT NULL COMMENT '其他有毒有害接触史',
  `caijiTime` varchar(30) DEFAULT NULL COMMENT '采集时间',
  `pdfurl` varchar(100) DEFAULT NULL,
  `frompro` varchar(30) DEFAULT NULL COMMENT '产品线来源',
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of binding_details
-- ----------------------------
INSERT INTO `binding_details` VALUES ('39', null, '39', '18800100830', '有一个人啊', '祖孙', '76', null, '', '烟,酒', null, null, '', '2018-02-25', null, '体检优逸小癌肿', '测试1', '2018-03-26 11:06:20', '测试1', '2018-03-26 11:06:20');

-- ----------------------------
-- Table structure for binding_userbasic
-- ----------------------------
DROP TABLE IF EXISTS `binding_userbasic`;
CREATE TABLE `binding_userbasic` (
  `bindingID` int(11) NOT NULL AUTO_INCREMENT,
  `openID` varchar(30) DEFAULT NULL COMMENT '微信端获取',
  `testState` int(5) DEFAULT NULL COMMENT '样本检测状态',
  `tjName` varchar(10) DEFAULT NULL COMMENT '受检者姓名',
  `tjSex` varchar(10) DEFAULT NULL COMMENT '受检者性别',
  `tjAge` varchar(10) DEFAULT NULL COMMENT '受检者年龄',
  `tjTel` varchar(30) DEFAULT NULL COMMENT '受检者电话',
  `tjpeopleAddress` varchar(50) DEFAULT NULL COMMENT '受检者地址',
  `tj_samplenum` varchar(30) DEFAULT NULL COMMENT '样本编号',
  `frompro` varchar(30) DEFAULT NULL COMMENT '产品线来源',
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`bindingID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of binding_userbasic
-- ----------------------------
INSERT INTO `binding_userbasic` VALUES ('39', 'oeKeMwam_whQsmmgEnpsNxWfszbA', '1', '测试1', '男', '36', '18800100830', '陕西省,商洛市,商州区 测试地址1', null, '体检优逸小癌肿', '测试1', '2018-03-26 11:06:20', '测试1', '2018-03-26 11:06:20');

-- ----------------------------
-- Table structure for bl_buildlibraries
-- ----------------------------
DROP TABLE IF EXISTS `bl_buildlibraries`;
CREATE TABLE `bl_buildlibraries` (
  `buildLibrariesId` int(11) NOT NULL AUTO_INCREMENT,
  `buildLibrariesMethod` varchar(50) NOT NULL,
  `buildLibrariesState` varchar(50) NOT NULL,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `endDate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`buildLibrariesId`)
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_buildlibraries
-- ----------------------------
INSERT INTO `bl_buildlibraries` VALUES ('656', 'bioo(PCR)', '已反馈', '张春可', '2018-03-29 09:38:10', '', '张春可', '2018-03-29 09:34:52', '张春可', '2018-03-29 09:44:21', 'JK20180329093452', '2018-03-29');
INSERT INTO `bl_buildlibraries` VALUES ('657', 'bioo(PCR)', '已下单', '张春可', '2018-03-29 10:05:00', '', '张春可', '2018-03-29 09:47:51', '张春可', '2018-03-29 09:49:46', 'JK20180329094751', '2018-03-29');
INSERT INTO `bl_buildlibraries` VALUES ('658', 'bioo(PCR)', '已反馈', '张春可', '2018-03-29 10:09:22', '', '张春可', '2018-03-29 10:09:07', '张春可', '2018-03-29 10:12:57', 'JK20180329100907', '2018-03-29');
INSERT INTO `bl_buildlibraries` VALUES ('659', 'bioo(PCR)', '已反馈', '张春可', '2018-03-29 10:20:01', '', '张春可', '2018-03-29 10:19:36', '张春可', '2018-03-29 10:20:07', 'JK20180329101936', '2018-03-29');
INSERT INTO `bl_buildlibraries` VALUES ('660', 'bioo(PCR)', '已下单', '张春可', '2018-03-29 11:20:32', '', '张春可', '2018-03-29 11:20:14', '张春可', '2018-03-29 11:20:29', 'JK20180329112014', '2018-03-29');
INSERT INTO `bl_buildlibraries` VALUES ('661', 'bioo(PCR)', '已下单', '管理员', '2018-03-29 11:24:10', '', '管理员', '2018-03-29 11:23:51', '管理员', '2018-03-29 11:24:03', 'JK20180329112351', '2018-03-29');

-- ----------------------------
-- Table structure for bl_buildlibrariesdetails
-- ----------------------------
DROP TABLE IF EXISTS `bl_buildlibrariesdetails`;
CREATE TABLE `bl_buildlibrariesdetails` (
  `buildLibrariesDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProjectName` varchar(50) NOT NULL,
  `feedbackAmount` varchar(50) DEFAULT NULL,
  `feedbackDataSize` varchar(50) DEFAULT NULL,
  `feedbackDiluentConcentration` varchar(50) DEFAULT NULL,
  `feedbackHybridType` varchar(50) DEFAULT NULL,
  `feedbackHybridUsageAmount` varchar(50) DEFAULT NULL,
  `feedbackIntermediate` varchar(50) DEFAULT NULL,
  `feedbackOperator` varchar(50) DEFAULT NULL,
  `feedbackOutConcentration` varchar(50) DEFAULT NULL,
  `feedbackOutVolume` varchar(50) DEFAULT NULL,
  `feedbackProcessMode` varchar(20) DEFAULT NULL,
  `feedbackQualified` varchar(50) DEFAULT NULL,
  `feedbackRemark` longtext,
  `feedbackResult` varchar(10) DEFAULT NULL,
  `feedbackSampleNo` varchar(50) DEFAULT NULL,
  `feedbackSampleUnit` varchar(20) DEFAULT NULL,
  `feedbackSequenceDepth` varchar(50) DEFAULT NULL,
  `feedbackSurplus` varchar(50) DEFAULT NULL,
  `feedbackTotalAmount` varchar(50) DEFAULT NULL,
  `feedbackUsageAmount` varchar(50) DEFAULT NULL,
  `feedbackVolume` varchar(50) DEFAULT NULL,
  `feedbackisDiluent` varchar(50) DEFAULT NULL,
  `feedbackqcStrategy` varchar(50) DEFAULT NULL,
  `orderIndexNo` varchar(50) DEFAULT NULL,
  `orderProbe` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) NOT NULL,
  `orderSampleUnit` varchar(20) NOT NULL,
  `orderScope` varchar(50) DEFAULT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `sampleGtasksId` int(30) DEFAULT NULL,
  `pcrNumber` varchar(50) DEFAULT NULL,
  `reagentNumber` varchar(50) DEFAULT NULL,
  `feedBackState` varchar(50) DEFAULT NULL,
  `osReceiveDateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`buildLibrariesDetailsId`),
  UNIQUE KEY `feedbackSampleNo` (`feedbackSampleNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1928 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_buildlibrariesdetails
-- ----------------------------
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1917', '优馨安--无创产前基因检测', '30', '5', '', '', '', '', '张春可', '1', '30', '通过', '合格', '', '', 'PN00GL00PJ0002-1-15', 'ml', '', '20', '20', '40', '', '否', 'QPCR2100', '15', '', '', 'PN00G00PJ0002-1', 'nl', '', 'PN00G00PJ0002', '已推送', '全血', 'PN00G00PJ0002', '张春可', '2018-03-29 09:44:21', 'JK20180329093452', '139232', null, null, '已反馈', '2018-03-28');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1918', '优馨安--无创产前基因检测(NIPT plus)', '60', '5', '', '', '', '', '张春可', '2', '30', '通过', '合格', '', '', 'NE00GL00NJ0004-1-17', 'ml', '', '20', '20', '80', '', '否', 'QPCR2100', '17', '', '', 'NE00G00NJ0004-1', 'nl', '', 'NE00G00NJ0004', '已推送', '全血', 'NE00G00NJ0004', '张春可', '2018-03-29 09:44:21', 'JK20180329093452', '139233', null, null, '已反馈', '2018-03-28');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1919', '优馨安--无创产前基因检测(NIPT plus)', '90', '5', '', '', '', '', '张春可', '3', '30', '通过', '合格', '', '', 'NE00GL00NJ0003-1-18', 'ml', '', '20', '20', '60', '', '否', 'QPCR2100', '18', '', '', 'NE00G00NJ0003-1', 'nl', '', 'NE00G00NJ0003', '已推送', '全血', 'NE00G00NJ0003', '张春可', '2018-03-29 09:44:21', 'JK20180329093452', '139234', null, null, '已反馈', '2018-03-28');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1920', '优馨安--无创产前基因检测(NIPT plus)', null, '5', null, null, null, null, null, null, null, '通过', '合格', null, null, null, 'ml', null, null, '20', '36', null, '否', 'QPCR2100', '19', null, '', 'NE00G00NJ0006-1', 'nl', null, 'NE00G00NJ0006', null, '流产组织', 'NE00G00NJ0006', '张春可', '2018-03-29 09:49:46', 'JK20180329094751', '139247', null, null, '未反馈', '2018-03-13');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1921', '优馨安--无创产前基因检测(NIPT plus)', '30', '5', '', '', '', '', '张春可', '1', '30', '通过', '合格', '', '', 'NE00GL00NJ0001-1-21', 'ml', '', '20', '20', '20', '', '否', 'QPCR2100', '21', '', '', 'NE00G00NJ0001-1', 'nl', '', 'NE00G00NJ0001', '已推送', '全血', 'NE00G00NJ0001', '张春可', '2018-03-29 10:12:57', 'JK20180329100907', '139236', null, null, '已反馈', '2018-03-28');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1922', '优馨安--无创产前基因检测', '30', '5', '', '', '', '', '张春可', '1', '30', '通过', '合格', '', '', 'PN00GL00PJ0003-1-25', 'ml', '', '20', '20', '36', '', '否', 'QPCR2100', '25', '', '', 'PN00G00PJ0003-1', 'nl', '', 'PN00G00PJ0003', '已推送', '流产组织', 'PN00G00PJ0003', '张春可', '2018-03-29 10:20:07', 'JK20180329101936', '139248', null, null, '已反馈', '2018-03-24');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1923', '优馨安--无创产前基因检测(NIPT plus)', '30', '5', '', '', '', '', '张春可', '1', '30', '通过', '合格', '', '', 'NE00GL00NJ0002-1-26', 'ml', '', '20', '20', '40', '', '否', 'QPCR2100', '26', '', '', 'NE00G00NJ0002-1', 'nl', '', 'NE00G00NJ0002', '已推送', '全血', 'NE00G00NJ0002', '张春可', '2018-03-29 10:20:07', 'JK20180329101936', '139235', null, null, '已反馈', '2018-03-28');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1924', '优馨安--无创产前基因检测(NIPT plus)', '30', '5', '', '', '', '', '张春可', '1', '30', '通过', '合格', '', '', 'NE00GL00NJ0005-1-27', 'ml', '', '20', '20', '20', '', '否', 'QPCR2100', '27', '', '', 'NE00G00NJ0005-1', 'nl', '', 'NE00G00NJ0005', '已推送', '全血', 'NE00G00NJ0005', '张春可', '2018-03-29 10:20:07', 'JK20180329101936', '139231', null, null, '已反馈', '2018-03-29');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1925', '优馨安--无创产前基因检测(NIPT plus)', '30', '5', '', '', '', '', '张春可', '1', '30', '通过', '合格', '', '', 'NE00GL00NJ0005-6-28', 'ml', '', '20', '20', '20', '', '否', 'QPCR2100', '28', '', '', 'NE00G00NJ0005-6', 'nl', '', 'NE00G00NJ0005', '已推送', '全血', 'NE00G00NJ0005', '张春可', '2018-03-29 10:20:07', 'JK20180329101936', '139230', null, null, '已反馈', '2018-03-29');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1926', '优馨安--无创产前基因检测', null, '5', null, null, null, null, null, null, null, '通过', '合格', null, null, 'PN00GL00PJ0003R-1-31', 'ml', null, null, '20', '36', null, '否', 'QPCR2100', '31', null, '', 'PN00G00PJ0003R-1', 'nl', null, 'PN00G00PJ0003R', null, '血浆', 'PN00G00PJ0003R', '张春可', '2018-03-29 11:20:29', 'JK20180329112014', '139246', null, null, '未反馈', '2018-03-29');
INSERT INTO `bl_buildlibrariesdetails` VALUES ('1927', '优馨安--无创产前基因检测(NIPT plus)', null, '25', null, null, null, null, null, null, null, '通过', '合格', null, null, 'NE00GL00NJ0005-2-32', 'ml', null, null, '20', null, null, '否', 'QPCR2100', '32', null, '', 'NE00G00NJ0005-2', 'nl', null, 'NE00G00NJ0005', null, '全血', 'NE00G00NJ0005', '管理员', '2018-03-29 11:24:03', 'JK20180329112351', '139231', null, null, '未反馈', '2018-03-29');

-- ----------------------------
-- Table structure for ch_checkhospital
-- ----------------------------
DROP TABLE IF EXISTS `ch_checkhospital`;
CREATE TABLE `ch_checkhospital` (
  `checkHospitalId` int(11) NOT NULL AUTO_INCREMENT,
  `checkHospital` varchar(30) DEFAULT NULL,
  `note` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `product` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`checkHospitalId`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ch_checkhospital
-- ----------------------------
INSERT INTO `ch_checkhospital` VALUES ('167', '北京第三医院', null, '演示', '2018-03-27 15:55:01', null);
INSERT INTO `ch_checkhospital` VALUES ('168', '北京医院', null, '演示', '2018-03-28 15:21:32', '肿瘤');

-- ----------------------------
-- Table structure for eb_tumourbuild
-- ----------------------------
DROP TABLE IF EXISTS `eb_tumourbuild`;
CREATE TABLE `eb_tumourbuild` (
  `tumourBuildId` int(11) NOT NULL AUTO_INCREMENT,
  `endDate` varchar(30) DEFAULT NULL,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `workOrderState` varchar(50) NOT NULL,
  PRIMARY KEY (`tumourBuildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eb_tumourbuild
-- ----------------------------

-- ----------------------------
-- Table structure for eb_tumourbuilddetails
-- ----------------------------
DROP TABLE IF EXISTS `eb_tumourbuilddetails`;
CREATE TABLE `eb_tumourbuilddetails` (
  `tumourBuildDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProjectName` varchar(50) NOT NULL,
  `estimatedOutTime` varchar(50) DEFAULT NULL,
  `feedBackState` varchar(50) DEFAULT NULL,
  `feedbackOperator` varchar(50) DEFAULT NULL,
  `feedbackQualified` varchar(50) DEFAULT NULL,
  `feedbackSampleNo` varchar(50) DEFAULT NULL,
  `feedbackVolume` varchar(50) DEFAULT NULL,
  `hybridCross` varchar(50) DEFAULT NULL,
  `intermediateConcentration` varchar(50) DEFAULT NULL,
  `orderIndexNo` varchar(50) DEFAULT NULL,
  `orderProbe` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) NOT NULL,
  `orderScope` varchar(50) DEFAULT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `pcRcycleConcentration` varchar(50) DEFAULT NULL,
  `pcRcycleNum` varchar(50) DEFAULT NULL,
  `purificationFactorone` varchar(50) DEFAULT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `sampleGtasksId` int(11) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `sampleVolume` varchar(50) DEFAULT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `superiorDetailsId` int(11) DEFAULT NULL,
  `orderProjectNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`tumourBuildDetailsId`),
  UNIQUE KEY `feedbackSampleNo` (`feedbackSampleNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eb_tumourbuilddetails
-- ----------------------------

-- ----------------------------
-- Table structure for eb_tumourextraction
-- ----------------------------
DROP TABLE IF EXISTS `eb_tumourextraction`;
CREATE TABLE `eb_tumourextraction` (
  `tumourExtractionId` int(11) NOT NULL AUTO_INCREMENT,
  `endDate` varchar(30) DEFAULT NULL,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `workOrderState` varchar(50) NOT NULL,
  `reviewState` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tumourExtractionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eb_tumourextraction
-- ----------------------------

-- ----------------------------
-- Table structure for eb_tumourextractiondetails
-- ----------------------------
DROP TABLE IF EXISTS `eb_tumourextractiondetails`;
CREATE TABLE `eb_tumourextractiondetails` (
  `tumourExtractionDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `buildFeedbackSampleNo` varchar(50) DEFAULT NULL,
  `buildStartAmount` varchar(50) DEFAULT NULL,
  `builduseAmount` varchar(50) DEFAULT NULL,
  `checkProjectName` varchar(50) NOT NULL,
  `checkProjectPerson` varchar(50) DEFAULT NULL,
  `checkerName` varchar(50) DEFAULT NULL,
  `estimatedOutTime` varchar(50) DEFAULT NULL,
  `executorName` varchar(50) DEFAULT NULL,
  `extractionConcentration` varchar(50) DEFAULT NULL,
  `feedBackState` varchar(50) DEFAULT NULL,
  `feedbackAmount` varchar(50) DEFAULT NULL,
  `feedbackOperator` varchar(50) DEFAULT NULL,
  `feedbackQualified` varchar(10) DEFAULT NULL,
  `feedbackSampleNo` varchar(50) DEFAULT NULL,
  `feedbackSurplus` varchar(50) DEFAULT NULL,
  `interruptedSampling` varchar(50) DEFAULT NULL,
  `interruptedTime` varchar(50) DEFAULT NULL,
  `numResult` varchar(50) DEFAULT NULL,
  `orderIndexNo` varchar(50) DEFAULT NULL,
  `orderProbe` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) NOT NULL,
  `orderScope` varchar(50) DEFAULT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `purifiedConcentration` varchar(50) DEFAULT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `remark` longtext,
  `sampleGtasksId` int(11) DEFAULT NULL,
  `sampleNumber` varchar(50) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `sampleUsageAmount` varchar(50) DEFAULT NULL,
  `samplingVolume` varchar(50) DEFAULT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `superiorDetailsId` int(11) DEFAULT NULL,
  `reviewPerson` varchar(50) DEFAULT NULL,
  `residualTissue` varchar(50) DEFAULT '',
  `noOkResult` varchar(50) DEFAULT '',
  `orderProjectNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`tumourExtractionDetailsId`),
  UNIQUE KEY `buildFeedbackSampleNo` (`buildFeedbackSampleNo`),
  UNIQUE KEY `feedbackSampleNo` (`feedbackSampleNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eb_tumourextractiondetails
-- ----------------------------

-- ----------------------------
-- Table structure for eb_tumourhybrid
-- ----------------------------
DROP TABLE IF EXISTS `eb_tumourhybrid`;
CREATE TABLE `eb_tumourhybrid` (
  `tumourHybridId` int(11) NOT NULL AUTO_INCREMENT,
  `endDate` varchar(30) DEFAULT NULL,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `workOrderState` varchar(50) NOT NULL,
  `reviewState` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tumourHybridId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eb_tumourhybrid
-- ----------------------------

-- ----------------------------
-- Table structure for eb_tumourhybriddetails
-- ----------------------------
DROP TABLE IF EXISTS `eb_tumourhybriddetails`;
CREATE TABLE `eb_tumourhybriddetails` (
  `tumourHybridDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProjectName` varchar(50) NOT NULL,
  `diluentConcentration` varchar(50) DEFAULT NULL,
  `diluentVolume` varchar(50) DEFAULT NULL,
  `feedBackState` varchar(50) DEFAULT NULL,
  `feedbackOperator` varchar(50) DEFAULT NULL,
  `feedbackQualified` varchar(50) DEFAULT NULL,
  `feedbackTotalAmount` varchar(50) DEFAULT NULL,
  `feedbackSampleNo` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) NOT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `postpcRcycleConcentration` varchar(50) DEFAULT NULL,
  `purificationConcentration` varchar(50) DEFAULT NULL,
  `purificationFactortwo` varchar(50) DEFAULT NULL,
  `purificationVolume` varchar(50) DEFAULT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `sampleGtasksId` int(11) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `superiorDetailsId` int(11) DEFAULT NULL,
  `reviewPerson` varchar(50) DEFAULT NULL,
  `orderProjectNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`tumourHybridDetailsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eb_tumourhybriddetails
-- ----------------------------

-- ----------------------------
-- Table structure for elephant_zhu
-- ----------------------------
DROP TABLE IF EXISTS `elephant_zhu`;
CREATE TABLE `elephant_zhu` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(50) DEFAULT NULL,
  `risk` varchar(50) DEFAULT NULL,
  `klf` varchar(50) DEFAULT NULL,
  `aldh` varchar(50) DEFAULT NULL,
  `nos` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `inputName` varchar(50) DEFAULT NULL,
  `inputTime` varchar(50) DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of elephant_zhu
-- ----------------------------
INSERT INTO `elephant_zhu` VALUES ('1', 'ME18SD6B51', '1.2', 'GG', 'GG', 'GG', '高', '忘愁', '忘愁', '忘愁', '2015-12-12 10::10:00');

-- ----------------------------
-- Table structure for elephant_zi
-- ----------------------------
DROP TABLE IF EXISTS `elephant_zi`;
CREATE TABLE `elephant_zi` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `checkProject` varchar(50) DEFAULT NULL,
  `geneName` varchar(50) DEFAULT NULL,
  `rsNo` varchar(50) DEFAULT NULL,
  `geneType` varchar(50) DEFAULT NULL,
  `personRisk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of elephant_zi
-- ----------------------------
INSERT INTO `elephant_zi` VALUES ('1', '热点-心源性猝死基因检测', 'KLF15', 'rs9838915', 'GG', '4');
INSERT INTO `elephant_zi` VALUES ('2', '热点-心源性猝死基因检测', 'KLF15', 'rs9838915', 'GA', '4');
INSERT INTO `elephant_zi` VALUES ('3', '热点-心源性猝死基因检测', 'KLF15', 'rs9838915', 'AA', '2');
INSERT INTO `elephant_zi` VALUES ('4', '热点-心源性猝死基因检测', 'ALDH2', 'rs671', 'GG', '3');
INSERT INTO `elephant_zi` VALUES ('5', '热点-心源性猝死基因检测', 'ALDH2', 'rs671', 'GA', '3');
INSERT INTO `elephant_zi` VALUES ('6', '热点-心源性猝死基因检测', 'ALDH2', 'rs671', 'AA', '1');
INSERT INTO `elephant_zi` VALUES ('7', '热点-心源性猝死基因检测', 'NOS3', 'rs1799983', 'TT', '4');
INSERT INTO `elephant_zi` VALUES ('8', '热点-心源性猝死基因检测', 'NOS3', 'rs1799983', 'TG', '2');
INSERT INTO `elephant_zi` VALUES ('9', '热点-心源性猝死基因检测', 'NOS3', 'rs1799983', 'GG', '2');

-- ----------------------------
-- Table structure for emailinfo
-- ----------------------------
DROP TABLE IF EXISTS `emailinfo`;
CREATE TABLE `emailinfo` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `danhao` varchar(100) DEFAULT NULL,
  `jindu` varchar(100) DEFAULT NULL,
  `times` varchar(50) DEFAULT NULL,
  `remark` mediumtext,
  `inputuser` varchar(10) DEFAULT NULL,
  `tables` mediumtext,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emailinfo
-- ----------------------------
INSERT INTO `emailinfo` VALUES ('140', '样本入库失败', 'YX10B1ACC1126', '入库失败', '2018-03-23 11:47:46', '肿瘤样本YX10B1ACC1126入库失败，\n 外来入库检测项目为:优旭--CTC\n肿瘤寄送样检测项目为:优替--高级版（549基因）', '刘楠1', '', '18222362304,0,0,0,0,13511069317,0,0,0,');
INSERT INTO `emailinfo` VALUES ('141', '优馨安预处理任务单', 'YCL20180323133121', '已下达', '2018-03-23 13:31:34', 'YCL20180323133121预处理任务单已下达，请及时查看！', '管理员', '', '18544568451,');
INSERT INTO `emailinfo` VALUES ('142', '优馨安预处理已反馈', 'YCL20180323133121', '已反馈', '2018-03-23 13:31:59', 'YCL20180323133121预处理任务单已反馈，共1个样本，无不合格样本！', '管理员', '', '1237,12330,0,0,0,0,');
INSERT INTO `emailinfo` VALUES ('143', '【LIMS】任务单下达', 'PM20180323133207', '已下达', '2018-03-23 13:32:28', '任务单号：PM20180323133207<br/>入库日期：null<br/>预出库日期：2018-03-23<br/>出库负责人：阿萨德<br/>预上机日期：2018-03-23<br/>上机负责人：asd<br/>信息分析日期：2018-03-23<br/>信息负责人：阿萨德<br/>报告最晚日期：2018-03-23<br/>报告负责人：阿萨德<br/>样本编号:<br/>zzzzzzz123<br/><br/>祝好！<br/> 登录人：管理员<br/>   该邮件为LIMS系统自动生成', '管理员', '任务单号：PM20180323133207<br/>入库日期：null<br/>预出库日期：2018-03-23<br/>出库负责人：阿萨德<br/>预上机日期：2018-03-23<br/>上机负责人：asd<br/>信息分析日期：2018-03-23<br/>信息负责人：阿萨德<br/>报告最晚日期：2018-03-23<br/>报告负责人：阿萨德<br/>样本编号:<br/>zzzzzzz123<br/><br/>祝好！<br/> 登录人：管理员<br/>   该邮件为LIMS系统自动生成', '0,0,0,0,12330,1237,0,0,0,');
INSERT INTO `emailinfo` VALUES ('144', '【LIMS】报告邮寄情况', '产前报告', '已寄出', '2018-03-23 14:20:33', '您好！今寄出如下报告，收到后请核对报告和发票情况是否与邮件内容一致，如有问题请在收件48小时内与客服联系，谢谢配合！', '刘楠1', '销售：刘楠1<br/>————————————————————————<br/>快递公司:<br/>快递单号:<br/>收件人姓名：刘楠1<br/>收件人电话：18511254620<br/>收件人详细地址：dasdas<table border=\'1\' cellpadding=\'3\' cellspacing=\'0\'><tr bgcolor=\'yellow\'><td>编号</td><td>姓名</td><td>检测项目</td><td>发票</td></tr><tr><td>ZD00B16AD0094</td><td>s</td><td>优馨安</td><td>不开</td></tr></table><br/>————————————————————————<br/>祝好！<br/> 登录人：刘楠1<br/>   该邮件为LIMS系统自动生成', '18511254620,');
INSERT INTO `emailinfo` VALUES ('145', '【LIMS】报告邮寄情况', '产前报告', '已寄出', '2018-03-23 14:21:27', '您好！今寄出如下报告，收到后请核对报告和发票情况是否与邮件内容一致，如有问题请在收件48小时内与客服联系，谢谢配合！', '刘楠1', '销售：刘楠1<br/>————————————————————————<br/>快递公司:<br/>快递单号:<br/>收件人姓名：刘楠1<br/>收件人电话：18511254620<br/>收件人详细地址：dasdas<table border=\'1\' cellpadding=\'3\' cellspacing=\'0\'><tr bgcolor=\'yellow\'><td>编号</td><td>姓名</td><td>检测项目</td><td>发票</td></tr><tr><td>ZD00B16AD0094</td><td>s</td><td>优馨安</td><td>不开</td></tr></table><br/>————————————————————————<br/>祝好！<br/> 登录人：刘楠1<br/>   该邮件为LIMS系统自动生成', '18511254620,');
INSERT INTO `emailinfo` VALUES ('146', '【LIMS】报告邮寄情况', '产前报告', '已寄出', '2018-03-23 14:24:40', '您好！今寄出如下报告，收到后请核对报告和发票情况是否与邮件内容一致，如有问题请在收件48小时内与客服联系，谢谢配合！', '刘楠1', '销售：刘楠1<br/>————————————————————————<br/>快递公司:<br/>快递单号:<br/>收件人姓名：刘楠1<br/>收件人电话：18511254620<br/>收件人详细地址：dasdas<table border=\'1\' cellpadding=\'3\' cellspacing=\'0\'><tr bgcolor=\'yellow\'><td>编号</td><td>姓名</td><td>检测项目</td><td>发票</td></tr><tr><td>ZD00B16AD0094</td><td>s</td><td>优馨安</td><td>不开</td></tr></table><br/>————————————————————————<br/>祝好！<br/> 登录人：刘楠1<br/>   该邮件为LIMS系统自动生成', '18511254620,15000116947,');
INSERT INTO `emailinfo` VALUES ('147', '【LIMS】报告邮寄情况', '产前报告', '已寄出', '2018-03-23 14:27:01', '您好！今寄出如下报告，收到后请核对报告和发票情况是否与邮件内容一致，如有问题请在收件48小时内与客服联系，谢谢配合！', '刘楠1', '销售：刘楠1<br/>————————————————————————<br/>快递公司:<br/>快递单号:<br/>收件人姓名：刘楠1<br/>收件人电话：18511254620<br/>收件人详细地址：dasdas<table border=\'1\' cellpadding=\'3\' cellspacing=\'0\'><tr bgcolor=\'yellow\'><td>编号</td><td>姓名</td><td>检测项目</td><td>发票</td></tr><tr><td>ZD00B16AD0094</td><td>s</td><td>优馨安</td><td>不开</td></tr></table><br/>————————————————————————<br/>祝好！<br/> 登录人：刘楠1<br/>   该邮件为LIMS系统自动生成', '18511254620,15001116947,');
INSERT INTO `emailinfo` VALUES ('148', '样本入库失败', '', '入库失败', '2018-03-23 14:30:11', '肿瘤样本入库失败，\n 检测项目为\n 肿瘤寄送样无此样本，请知悉！', '管理员', '', '0,12330,0,0,0,0,0,0,0,');
INSERT INTO `emailinfo` VALUES ('149', '样本入库失败', 'PM00G17AP0495R', '入库失败', '2018-03-23 14:32:00', '肿瘤样本PM00G17AP0495R入库失败，\n 检测项目为优旭--单项癌种（肺癌）\n 肿瘤寄送样无此样本，请知悉！', '管理员', '', '0,12330,0,0,0,0,0,0,0,');

-- ----------------------------
-- Table structure for email_xxtz
-- ----------------------------
DROP TABLE IF EXISTS `email_xxtz`;
CREATE TABLE `email_xxtz` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(10) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `times` char(50) DEFAULT NULL,
  `openid` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_xxtz
-- ----------------------------
INSERT INTO `email_xxtz` VALUES ('26', '刘楠', '18511254620', 'nanliu@scisoon.cn', '2018-03-23 14:24:29', 'oeKeMwRpuUvny2Huev5TU9sXfxp0');

-- ----------------------------
-- Table structure for express_expresscompany
-- ----------------------------
DROP TABLE IF EXISTS `express_expresscompany`;
CREATE TABLE `express_expresscompany` (
  `expressCompanyId` int(11) NOT NULL AUTO_INCREMENT,
  `expressCompanyCom` varchar(50) NOT NULL,
  `expressCompanyName` varchar(50) NOT NULL,
  PRIMARY KEY (`expressCompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of express_expresscompany
-- ----------------------------
INSERT INTO `express_expresscompany` VALUES ('1', 'shunfeng', '顺丰');
INSERT INTO `express_expresscompany` VALUES ('2', 'yuantong', '圆通');
INSERT INTO `express_expresscompany` VALUES ('3', 'zhongtong', '中通');
INSERT INTO `express_expresscompany` VALUES ('4', 'yunda', '韵达');
INSERT INTO `express_expresscompany` VALUES ('5', 'lianbang', '联邦');
INSERT INTO `express_expresscompany` VALUES ('6', 'baishihuitong', '百世汇通');
INSERT INTO `express_expresscompany` VALUES ('7', 'ems', 'EMS');
INSERT INTO `express_expresscompany` VALUES ('8', 'tiantiankuaidi', '天天快递');
INSERT INTO `express_expresscompany` VALUES ('9', 'gaotiekuaidi', '高铁快递');
INSERT INTO `express_expresscompany` VALUES ('10', 'ziti', '自提');

-- ----------------------------
-- Table structure for finance_invoice
-- ----------------------------
DROP TABLE IF EXISTS `finance_invoice`;
CREATE TABLE `finance_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(30) DEFAULT NULL,
  `invoiceAddress` varchar(255) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `invoiceAmount` varchar(30) DEFAULT NULL,
  `invoiceHeader` varchar(30) DEFAULT NULL,
  `invoiceNum` varchar(30) DEFAULT NULL,
  `invoiceState` varchar(30) DEFAULT NULL,
  `invoiceType` varchar(30) DEFAULT NULL,
  `openingBank` varchar(100) DEFAULT NULL,
  `sendSampleID` int(11) DEFAULT NULL,
  `taxNum` varchar(30) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `workPlace` varchar(100) DEFAULT NULL,
  `tumourSendSampleID` int(11) DEFAULT NULL,
  `billingTime` varchar(30) DEFAULT NULL,
  `billingName` varchar(30) DEFAULT NULL,
  `recipientName` varchar(30) DEFAULT NULL,
  `recipientAddress` varchar(100) DEFAULT NULL,
  `recipientPhone` varchar(30) DEFAULT NULL,
  `reviewName` varchar(30) DEFAULT NULL,
  `reviewTime` varchar(30) DEFAULT NULL,
  `reviewState` varchar(30) DEFAULT NULL,
  `tijianSendSampleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sendSampleID` (`sendSampleID`) USING BTREE,
  KEY `tumourSendSampleID` (`tumourSendSampleID`) USING BTREE,
  KEY `index_tumourSendSampleID` (`tumourSendSampleID`) USING BTREE,
  KEY `index_tijianSendSampleID` (`tijianSendSampleID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3741 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance_invoice
-- ----------------------------
INSERT INTO `finance_invoice` VALUES ('3652', '', '', '张春可', '2017-08-31 12:11:02', '', '', '', '不开发票', '', '', '3045', '', '', '周晓锋', '2018-03-22 09:20:51', '', null, null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3653', null, null, '张春可', '2018-03-22 09:44:50', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 09:51:33', null, '2921', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3654', null, null, '张春可', '2018-03-22 10:00:21', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 10:00:21', null, '2922', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3655', null, null, '张春可', '2018-03-22 10:02:28', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 10:02:28', null, '2923', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3656', null, null, '张春可', '2018-03-22 10:07:15', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 10:11:55', null, '2924', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3657', null, null, '张春可', '2018-03-22 10:35:06', '300', '你', null, '开发票', '普通发票', null, null, null, null, '张春可', '2018-03-22 10:35:06', '个人', '2925', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3658', null, null, '张春可', '2018-03-22 10:49:39', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 10:49:39', null, '2926', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3659', null, null, '张春可', '2018-03-22 10:52:24', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 10:53:43', null, '2927', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3660', '64878', '434646', '张春可', '2018-03-22 10:57:23', '133131', '九', null, '补开发票', '普通发票', 'ming明明', null, '61977', '15101093727', '张春可', '2018-03-23 13:13:05', '单位', '2928', null, null, '北京市', '看了看', '15101093727', null, null, '未审核', null);
INSERT INTO `finance_invoice` VALUES ('3661', '64678648487', '北京市朝阳区人民法院', '张春可', '2018-03-22 11:04:48', '1000', '十1', '33434', '已开发票', '普通发票', '交通', null, '', '15101093727', '张春可', '2018-03-22 11:36:47', '单位', '2929', '343434', '周晓锋', null, null, null, '周晓锋', '2018-03-22 11:26:39', '同意', null);
INSERT INTO `finance_invoice` VALUES ('3662', '166464', '北京市朝阳区人民法院', '张春可', '2018-03-22 11:16:19', '1000', '十一1', '3234', '已开发票', '普通发票', '交通', null, '', '15101093727', '张春可', '2018-03-22 11:21:52', '单位', '2930', '343433', '周晓锋', null, null, null, '周晓锋', '2018-03-22 11:20:49', '同意', null);
INSERT INTO `finance_invoice` VALUES ('3663', null, null, '张春可', '2018-03-22 13:25:45', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 13:25:45', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `finance_invoice` VALUES ('3664', null, null, '张春可', '2018-03-22 13:37:37', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 13:37:37', null, null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `finance_invoice` VALUES ('3665', null, null, '张春可', '2018-03-22 13:40:06', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 15:38:15', null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `finance_invoice` VALUES ('3666', null, null, '张春可', '2018-03-22 13:41:22', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-22 13:41:22', null, null, null, null, null, null, null, null, null, null, '4');
INSERT INTO `finance_invoice` VALUES ('3667', null, null, '张春可', '2018-03-22 14:03:22', null, null, null, '不开发票', null, null, '3046', null, null, '张春可', '2018-03-22 14:03:22', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3668', null, null, '张春可', '2018-03-22 14:04:55', null, null, null, '不开发票', null, null, '3047', null, null, '张春可', '2018-03-22 14:04:55', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3669', '62173464', '北京市朝阳区', '张春可', '2018-03-22 14:10:45', '1000', '5', null, '补开发票', '普通发票', '交通', '3048', '123456789', '15101093727', '张春可', '2018-03-22 16:40:43', '单位', null, null, null, '5', '北京市朝阳区', '15101093727', null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3670', '6164949', '北京市朝阳区', '张春可', '2018-03-22 15:43:10', '1000', '五', null, '补开发票', '专用发票', '交通银行', null, '12345678901', '15101093727', '周晓锋', '2018-03-22 16:34:54', '单位', null, null, null, '五', '北京市西城区gyro', '15101093737', '周晓锋', '2018-03-22 16:34:54', '同意', '5');
INSERT INTO `finance_invoice` VALUES ('3671', '6468787', '北京市朝阳区', '张春可', '2018-03-22 15:48:39', '1000', '七', null, '开发票', '普通发票', '交通', null, '799487948474', '15101093727', '张春可', '2018-03-22 15:49:23', '单位', null, null, null, null, null, null, null, null, '同意', '6');
INSERT INTO `finance_invoice` VALUES ('3672', null, null, '张春可', '2018-03-22 15:54:10', '1000', '体检', '12666979799', '开发票', '专用发票', null, null, null, null, '张春可', '2018-03-22 15:59:22', '个人', null, '566566', '周晓锋', null, null, null, '周晓锋', '2018-03-22 15:57:11', '同意', '7');
INSERT INTO `finance_invoice` VALUES ('3673', null, null, '张春可', '2018-03-22 16:09:49', '2000', '九', '23233434', '不开发票', '普通发票', null, null, null, null, '张春可', '2018-03-22 16:13:50', '个人', null, '343434', '周晓锋', null, null, null, '周晓锋', '2018-03-22 16:13:02', '同意', '8');
INSERT INTO `finance_invoice` VALUES ('3674', '166464', '北京市朝阳区人民法院', '周晓锋', '2018-03-22 16:36:37', '1000', '十一', null, '重开发票', '普通发票', '交通', null, '232323232323', '15101093727', '周晓锋', '2018-03-22 16:36:37', '单位', '2930', null, null, '', '', '', null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3675', '', '', '王鑫尧', '2018-03-23 09:36:50', '564', '放大', null, '开发票', '普通发票', '', '3049', '', '', '王鑫尧', '2018-03-23 09:37:47', '单位', null, null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3676', null, null, '王鑫尧', '2018-03-23 09:54:42', '46546', '分肯', null, '开发票', '普通发票', null, null, null, null, '王鑫尧', '2018-03-23 09:54:42', '个人', null, null, null, null, null, null, null, null, '同意', '9');
INSERT INTO `finance_invoice` VALUES ('3677', '', '', '王鑫尧', '2018-03-23 10:01:59', '556', 'vgw', null, '开发票', '普通发票', '', null, '15341654646', '', '王鑫尧', '2018-03-23 10:23:37', '单位', null, null, null, null, null, null, null, null, '同意', '10');
INSERT INTO `finance_invoice` VALUES ('3678', null, null, '王鑫尧', '2018-03-23 11:11:38', null, null, null, '不开发票', null, null, '3050', null, null, '王鑫尧', '2018-03-23 11:11:38', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3679', '', '', '王鑫尧', '2018-03-23 11:15:28', '465', '工卡啊', null, '开发票', '普通发票', '', '3051', '', '', '王鑫尧', '2018-03-23 11:49:14', '单位', null, null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3680', null, null, '王鑫尧', '2018-03-23 11:31:40', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-03-23 11:31:50', null, '2931', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3681', null, null, '王鑫尧', '2018-03-23 11:32:53', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-03-23 11:32:53', null, '2932', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3682', null, null, '张春可', '2018-03-23 11:38:36', null, null, null, '不开发票', null, null, '3052', null, null, '张春可', '2018-03-23 11:38:36', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3683', null, null, '张春可', '2018-03-23 11:40:06', null, null, null, '不开发票', null, null, '3053', null, null, '张春可', '2018-03-23 11:40:06', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3684', null, null, '张春可', '2018-03-23 11:41:39', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-23 11:41:39', null, '2933', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3685', null, null, '张春可', '2018-03-23 11:42:59', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-23 11:42:59', null, '2934', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3686', '346464', '北京市', '张春可', '2018-03-23 12:53:07', '1000', '明', null, '补开发票', '普通发票', '中国银行', '3054', '', '15101093727', '张春可', '2018-03-23 12:59:04', '单位', null, null, null, '明年', '明年', '15101093727', null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3687', '646878', '北京市朝阳区', '张春可', '2018-03-23 13:01:35', '1000', '红', null, '开发票', '普通发票', '中国银行', '3055', '12345678901234567892', '15101093727', '王鑫尧', '2018-03-26 15:31:01', '单位', null, null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3688', '', '', '张春可', '2018-03-23 13:54:33', '', '', '', '不开发票', '', '', null, '', '', '张春可', '2018-03-23 13:54:32', '', '2935', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3689', '', '', '张春可', '2018-03-23 13:54:43', '', '', '', '不开发票', '', '', null, '', '', '张春可', '2018-03-23 13:54:43', '', '2936', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3690', '', '', '张春可', '2018-03-23 13:55:08', '', '', '', '不开发票', '', '', null, '', '', '张春可', '2018-03-23 13:55:08', '', '2937', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3691', '', '', '张春可', '2018-03-23 13:55:20', '', '', '', '不开发票', '', '', null, '', '', '张春可', '2018-03-23 13:55:20', '', '2938', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3692', '', '', '张春可', '2018-03-23 13:55:40', '', '', '', '不开发票', '', '', null, '', '', '张春可', '2018-03-23 13:55:40', '', '2939', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3693', '136484', '76466', '张春可', '2018-03-23 14:26:04', '1000', '高科技', null, '开发票', '普通发票', '明明', null, '', '15101093727', '张春可', '2018-03-23 14:26:42', '单位', null, null, null, null, null, null, null, null, '同意', '11');
INSERT INTO `finance_invoice` VALUES ('3694', null, null, '张春可', '2018-03-23 14:32:57', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-03-23 14:34:44', null, '2940', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3695', '', '', '周晓锋', '2018-03-23 14:48:09', '', '', '', '不开发票', '', '', null, '', '', '周晓锋', '2018-03-23 14:48:08', '', '2941', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3696', '', '', '周晓锋', '2018-03-23 14:48:19', '', '', '', '不开发票', '', '', null, '', '', '周晓锋', '2018-03-23 14:48:19', '', '2942', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3697', '', '', '周晓锋', '2018-03-23 14:48:42', '', '', '', '不开发票', '', '', null, '', '', '周晓锋', '2018-03-23 14:48:42', '', '2943', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3698', '', '', '周晓锋', '2018-03-23 14:48:48', '', '', '', '不开发票', '', '', null, '', '', '周晓锋', '2018-03-23 14:48:48', '', '2944', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3699', '', '', '演示', '2018-03-26 13:04:29', '', '', '', '不开发票', '', '', '3056', '', '', '演示', '2018-03-26 13:04:29', '', null, null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3700', null, null, '王鑫尧', '2018-03-26 15:27:24', null, null, null, '不开发票', null, null, '3057', null, null, '王鑫尧', '2018-03-26 15:27:52', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3701', null, null, '王鑫尧', '2018-03-26 16:04:00', null, null, null, '不开发票', null, null, '3058', null, null, '王鑫尧', '2018-03-26 16:04:30', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3702', '', '', '张春可', '2018-03-27 13:29:32', '', '', '', '不开发票', '', '', '3059', '', '', '张春可', '2018-03-27 13:29:52', '', null, null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3703', null, null, '王鑫尧', '2018-03-27 14:09:50', null, null, null, '不开发票', null, null, '3060', null, null, '王鑫尧', '2018-03-27 14:09:50', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3704', null, null, '王鑫尧', '2018-03-27 14:11:11', null, null, null, '不开发票', null, null, '3061', null, null, '王鑫尧', '2018-03-27 14:11:11', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3705', null, null, '王鑫尧', '2018-03-27 14:28:21', null, null, null, '不开发票', null, null, '3062', null, null, '王鑫尧', '2018-03-27 14:28:21', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3706', null, null, '王鑫尧', '2018-03-27 14:29:22', null, null, null, '不开发票', null, null, '3063', null, null, '王鑫尧', '2018-03-27 14:29:22', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3707', null, null, '王鑫尧', '2018-03-28 09:04:48', null, null, null, '不开发票', null, null, '3064', null, null, '王鑫尧', '2018-03-28 09:07:59', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3708', null, null, '王鑫尧', '2018-03-28 09:09:34', null, null, null, '不开发票', null, null, '3065', null, null, '王鑫尧', '2018-03-28 09:10:22', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3709', null, null, '王鑫尧', '2018-03-28 09:13:40', null, null, null, '不开发票', null, null, '3066', null, null, '王鑫尧', '2018-03-28 09:30:42', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3710', null, null, '王鑫尧', '2018-03-28 09:22:06', null, null, null, '不开发票', null, null, '3067', null, null, '王鑫尧', '2018-03-28 09:22:06', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3711', '', '', '演示', '2018-03-28 11:56:21', '', '', '', '不开发票', '', '', null, '', '', '演示', '2018-03-28 11:56:21', '', '2945', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3712', '', '', '张春可', '2018-03-28 15:33:25', '', '', '', '不开发票', '', '', '3068', '', '', '张春可', '2018-03-28 16:40:17', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3713', null, null, '张春可', '2018-03-28 15:35:53', null, null, null, '不开发票', null, null, '3069', null, null, '张春可', '2018-03-28 15:35:53', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3714', '', '', '张春可', '2018-03-28 17:32:30', '', '', '', '不开发票', '', '', null, '', '', '张春可', '2018-03-28 17:32:30', '', '2946', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3715', '', '', '张春可', '2018-03-28 17:32:37', '', '', '', '不开发票', '', '', null, '', '', '张春可', '2018-03-28 17:32:37', '', '2947', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3716', '', '', '张春可', '2018-03-28 17:34:39', '', '', '', '不开发票', '', '', null, '', '', '周晓锋', '2018-03-28 17:36:38', '', '2948', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3717', '', '', '张春可', '2018-03-28 17:34:44', '', '', '', '不开发票', '', '', null, '', '', '周晓锋', '2018-03-28 17:36:42', '', '2949', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3718', '', '', '张春可', '2018-03-28 17:34:49', '', '', '', '不开发票', '', '', null, '', '', '周晓锋', '2018-03-28 17:36:46', '', '2950', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3719', '', '', '张春可', '2018-03-28 17:34:57', '', '', '', '不开发票', '', '', null, '', '', '周晓锋', '2018-03-28 17:36:51', '', '2951', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3720', '', '', '张春可', '2018-03-28 18:44:21', '', '', '', '不开发票', '', '', null, '', '', '张春可', '2018-03-28 18:44:21', '', '2952', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3721', '', '', '张春可', '2018-03-28 18:55:32', '', '', '', '不开发票', '', '', null, '', '', '王鑫尧', '2018-03-29 11:54:34', '', '2953', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3722', null, null, '王鑫尧', '2018-03-29 13:36:35', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-03-29 13:51:42', null, '2954', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3723', null, null, '王鑫尧', '2018-03-29 13:40:51', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-03-29 13:50:43', null, '2955', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3724', null, null, '张春可', '2018-03-30 12:42:45', null, null, null, '不开发票', null, null, '3070', null, null, '张春可', '2018-03-30 12:42:45', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3725', null, null, '王鑫尧', '2018-03-30 15:32:31', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-03-30 15:32:31', null, '2956', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3726', '', '', '演示', '2018-04-02 17:38:48', '', '', '', '不开发票', '', '', '3071', '', '', '演示', '2018-04-02 17:38:48', '', null, null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3727', null, null, '张春可', '2018-04-03 11:22:48', null, null, null, '不开发票', null, null, '3072', null, null, '张春可', '2018-04-03 11:22:48', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3728', null, null, '王鑫尧', '2018-04-03 11:33:29', null, null, null, '不开发票', null, null, '3073', null, null, '王鑫尧', '2018-04-03 11:34:29', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3729', null, null, '王鑫尧', '2018-04-03 11:39:52', null, null, null, '不开发票', null, null, '3074', null, null, '王鑫尧', '2018-04-03 11:39:52', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3730', null, null, '王鑫尧', '2018-04-03 11:49:47', null, null, null, '不开发票', null, null, '3075', null, null, '王鑫尧', '2018-04-03 11:49:47', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3731', null, null, '张春可', '2018-04-03 11:55:18', null, null, null, '不开发票', null, null, '3076', null, null, '张春可', '2018-04-03 11:55:18', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3732', null, null, '张春可', '2018-04-03 16:11:52', null, null, null, '不开发票', null, null, null, null, null, '张春可', '2018-04-03 16:11:52', null, '2957', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3733', '', '', '张娟', '2018-04-03 16:30:13', '', '', '', '不开发票', '', '', null, '', '', '张娟', '2018-04-04 15:57:58', '', '2958', null, null, null, null, null, null, null, '同意', null);
INSERT INTO `finance_invoice` VALUES ('3734', null, null, '王鑫尧', '2018-04-03 17:45:24', null, null, null, '不开发票', null, null, '3077', null, null, '王鑫尧', '2018-04-03 17:45:24', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3735', null, null, '王鑫尧', '2018-04-03 17:46:27', null, null, null, '不开发票', null, null, '3078', null, null, '王鑫尧', '2018-04-03 17:46:27', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3736', null, null, '王鑫尧', '2018-04-03 18:20:14', null, null, null, '不开发票', null, null, '3079', null, null, '王鑫尧', '2018-04-03 18:20:14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3737', null, null, '王鑫尧', '2018-04-04 11:44:30', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-04-04 11:44:30', null, '2959', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3738', null, null, '王鑫尧', '2018-04-04 11:47:44', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-04-04 11:47:44', null, '2960', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3739', null, null, '王鑫尧', '2018-04-08 10:19:49', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-04-08 10:19:49', null, '2961', null, null, null, null, null, null, null, null, null);
INSERT INTO `finance_invoice` VALUES ('3740', null, null, '王鑫尧', '2018-04-08 10:50:50', null, null, null, '不开发票', null, null, null, null, null, '王鑫尧', '2018-04-08 10:50:50', null, '2962', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for finance_refund
-- ----------------------------
DROP TABLE IF EXISTS `finance_refund`;
CREATE TABLE `finance_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(30) DEFAULT NULL,
  `custConfirm` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `manageConfirm` varchar(30) DEFAULT NULL,
  `openingBank` varchar(100) DEFAULT NULL,
  `refundAccount` varchar(30) DEFAULT NULL,
  `refundAmount` varchar(30) DEFAULT NULL,
  `refundReason` varchar(255) DEFAULT NULL,
  `refundState` varchar(30) DEFAULT NULL,
  `refundWay` varchar(30) DEFAULT NULL,
  `sendSampleID` int(11) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `tumourSendSampleID` int(11) DEFAULT NULL,
  `custRemarks` text,
  `manageRemarks` text,
  `custName` varchar(30) DEFAULT NULL,
  `custTime` varchar(30) DEFAULT NULL,
  `manageName` varchar(30) DEFAULT NULL,
  `manageTime` varchar(30) DEFAULT NULL,
  `refundName` varchar(30) DEFAULT NULL,
  `refundTime` varchar(30) DEFAULT NULL,
  `businessState` varchar(30) DEFAULT NULL,
  `businessName` varchar(30) DEFAULT NULL,
  `businessTime` varchar(30) DEFAULT NULL,
  `tijianSendSampleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sendSampleID` (`sendSampleID`) USING BTREE,
  KEY `index_tumourSendSampleID` (`tumourSendSampleID`) USING BTREE,
  KEY `index_tijianSendSampleID` (`tijianSendSampleID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance_refund
-- ----------------------------
INSERT INTO `finance_refund` VALUES ('100', '23', '是', '张春可', '2018-03-30 14:37:32', '是', '34', '23', '34', '不检测了', '申请退款', '转账', '3055', '演示', '2018-03-30 14:38:53', null, '实验领导同意', '项目管理同意', '演示', '2018-03-30 14:38:03', '演示', '2018-03-30 14:37:55', null, null, '已审核', '演示', '2018-03-30 14:38:53', null);

-- ----------------------------
-- Table structure for finance_settlement
-- ----------------------------
DROP TABLE IF EXISTS `finance_settlement`;
CREATE TABLE `finance_settlement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `sendSampleID` int(11) DEFAULT NULL,
  `settlementAmount` varchar(30) DEFAULT NULL,
  `settlementName` varchar(30) DEFAULT NULL,
  `settlementState` varchar(30) DEFAULT NULL,
  `settlementTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `workPlace` varchar(100) DEFAULT NULL,
  `tumourSendSampleID` int(11) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `ybszSheng` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `patientName` varchar(30) DEFAULT NULL,
  `checkProject` varchar(255) DEFAULT NULL,
  `collectionDate` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `backAmount` varchar(30) DEFAULT NULL,
  `invoiceAmount` varchar(30) DEFAULT NULL,
  `backQuota` varchar(30) DEFAULT NULL,
  `shouldReceive` varchar(30) DEFAULT NULL,
  `shouldPay` varchar(30) DEFAULT NULL,
  `tijianSendSampleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sendSampleID` (`sendSampleID`) USING BTREE,
  KEY `index_tumourSendSampleID` (`tumourSendSampleID`) USING BTREE,
  KEY `index_tijianSendSampleID` (`tijianSendSampleID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance_settlement
-- ----------------------------

-- ----------------------------
-- Table structure for finance_transfer
-- ----------------------------
DROP TABLE IF EXISTS `finance_transfer`;
CREATE TABLE `finance_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `transferPay` varchar(30) DEFAULT NULL,
  `referenceNum` varchar(100) DEFAULT NULL,
  `sendSampleID` int(11) DEFAULT NULL,
  `transferAmount` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `tumourSendSampleID` int(11) DEFAULT NULL,
  `transferName` varchar(30) DEFAULT NULL,
  `receiveDate` varchar(30) DEFAULT NULL,
  `poundage` varchar(30) DEFAULT NULL,
  `receipts` varchar(30) DEFAULT NULL,
  `examineState` varchar(30) DEFAULT NULL,
  `examineName` varchar(30) DEFAULT NULL,
  `examineTime` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `payMoneyWay` varchar(30) DEFAULT NULL,
  `emailState` int(11) DEFAULT '0',
  `tijianSendSampleID` int(11) DEFAULT NULL,
  `posPath` varchar(255) DEFAULT '',
  `receiptPath` varchar(255) DEFAULT '',
  `isHaveReceipt` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `index_sendSampleID` (`sendSampleID`) USING BTREE,
  KEY `index_tumourSendSampleID` (`tumourSendSampleID`) USING BTREE,
  KEY `index_tijianSendSampleID` (`tijianSendSampleID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3725 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance_transfer
-- ----------------------------
INSERT INTO `finance_transfer` VALUES ('3639', '张春可', '2017-08-31 12:11:02', '现金', '', '3045', '1000', '周晓锋', '2018-03-22 09:20:51', null, '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3640', '张春可', '2018-03-22 09:44:50', '微信;刷卡', '12345678901234587;123456789012', null, '3000', '周晓锋', '2018-03-22 10:47:06', '2921', '肿瘤;', null, '0', '5000', '审核通过', '周晓锋', '2018-03-22 10:47:06', '', '微信;刷卡', '0', null, 'upload/pos/2018-03-22/PM00G00ZL0001-pos-3c9899df-a993-4655-ae60-60ce46eef252.jpg;upload/pos/2018-03-22/PM00G00ZL0001-pos-331f23da-4384-40b8-a78b-d1356b7c7cdc.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3641', '张春可', '2018-03-22 10:00:21', '现金', '', null, '1000', '张春可', '2018-03-22 10:00:21', '2922', '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3642', '张春可', '2018-03-22 10:02:28', '月结', '', null, '1000', '张春可', '2018-03-22 10:02:28', '2923', '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3643', '张春可', '2018-03-22 10:07:16', '支付宝;微信', ';12345645645648', null, '1000', '周晓锋', '2018-03-22 10:13:35', '2924', '民意;民意', null, '0', '1000', '审核通过', '周晓锋', '2018-03-22 10:13:35', '', '支付宝;微信', '0', null, ';upload/pos/2018-03-22/PM00G00ZL0004-pos-c0986261-1f36-4acd-964e-de3f3b5cab88.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3644', '张春可', '2018-03-22 10:35:06', '支付宝;微信', ';1234566666666', null, '100', '周晓锋', '2018-03-22 10:36:11', '2925', '你;你', null, '10', '300', '审核通过', '周晓锋', '2018-03-22 10:36:11', '', '支付宝;微信', '0', null, ';upload/pos/2018-03-22/PM00G00ZL0006-pos-042fbda3-47bd-4a8b-bd05-e272a15a6ad7.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3645', '张春可', '2018-03-22 10:49:39', '刷卡;微信', '9497876761616;199497676464', null, '1000;2000', '张春可', '2018-03-22 10:49:39', '2926', ';七', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-22/PM00G00ZL0007-pos-e26ae068-46ee-4ec0-b343-d98fb0e85fef.jpg;upload/pos/2018-03-22/PM00G00ZL0007-pos-182c5304-a95a-45bf-ba37-f1345eb5b2f5.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3646', '张春可', '2018-03-22 10:52:24', '刷卡;现金;转账', '1967646464611;;', null, '73646;2000;3000', '张春可', '2018-03-22 10:53:43', '2927', ';;八', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-22/PM00G00ZL0008-pos-46aad1b1-c9b2-47b3-a59d-a31fac590186.jpg;;', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3647', '张春可', '2018-03-22 10:57:23', '现金;转账', ';', null, '1000;2000', '张春可', '2018-03-23 13:13:05', '2928', ';九', null, null, null, '未审核', null, null, null, null, '0', null, ';', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3648', '张春可', '2018-03-22 11:04:48', '现金', '', null, '1000', '张春可', '2018-03-22 11:04:48', '2929', '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3649', '张春可', '2018-03-22 11:16:19', '现金', '', null, '100', '张春可', '2018-03-22 11:16:19', '2930', '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3650', '张春可', '2018-03-22 13:25:45', '现金;刷卡;微信', ';12345612343134;123456123451', null, '1000;2000;3000', '张春可', '2018-03-22 13:25:45', null, ';;体检', null, null, null, '未审核', null, null, null, null, '0', '1', ';upload/pos/2018-03-22/Pn00g00tj0001-pos-56cf2c51-e0e0-484f-b980-06fc6355a08a.jpg;upload/pos/2018-03-22/Pn00g00tj0001-pos-8f3db0b2-3c24-44f1-82d8-eae9c6e5edf5.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3651', '张春可', '2018-03-22 13:37:38', '现金', '', null, '1000', '张春可', '2018-03-22 13:37:38', null, '', null, null, null, '审核通过', null, null, null, null, '0', '2', '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3652', '张春可', '2018-03-22 13:40:06', '月结', '', null, '2000', '张春可', '2018-03-22 15:38:15', null, '', null, null, null, '审核通过', null, null, null, null, '0', '3', '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3653', '张春可', '2018-03-22 13:41:22', '刷卡', '128886949494664', null, '1000', '周晓锋', '2018-03-22 15:20:01', null, '', null, null, null, '未审核', '周晓锋', '2018-03-22 15:19:59', '', null, '0', '4', 'upload/pos/2018-03-22/PN00G00TJ0004-pos-2248668b-64e0-4f04-8c27-82203b92c920.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3654', '张春可', '2018-03-22 14:03:22', '现金', '', '3046', '', '张春可', '2018-03-22 14:03:22', null, '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3655', '张春可', '2018-03-22 14:04:56', '支付宝', '', '3047', '1000', '张春可', '2018-03-22 14:04:56', null, '李三', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3656', '张春可', '2018-03-22 14:10:45', '刷卡', '2585828353838,8588683828582', '3048', '52522', '张春可', '2018-03-22 15:23:47', null, '', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-22/PN00G18EE0005-pos-dd4445dc-b6aa-4bea-9755-c64c616f90b3.jpg,upload/pos/2018-03-22/PN00G18EE0005-pos-ab5b0c4d-c17e-4655-8828-24a93127d132.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3657', '张春可', '2018-03-22 15:43:10', '刷卡;刷卡;微信', '123456789111;1649876494642;13646464646363', null, '1000', '周晓锋', '2018-03-22 16:34:47', null, ';;五', null, '0', '232323', '审核通过', '周晓锋', '2018-03-22 16:34:47', '', '刷卡;刷卡;微信', '0', '5', 'upload/pos/2018-03-22/PN00G18EE0005-pos-11daaa1c-4be8-4642-93dd-3a9b62bf927f.jpg;upload/pos/2018-03-22/PN00G18EE0005-pos-0ae0889a-4050-47e1-93d4-52809f33fcf1.jpg;upload/pos/2018-03-22/PN00G18EE0005-pos-8bf262ed-2f36-49b5-8512-b95d950e0d0b.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3658', '张春可', '2018-03-22 15:48:40', '刷卡', '9487873494679', null, '1000', '张春可', '2018-03-22 15:49:24', null, '', null, null, null, '未审核', null, null, null, null, '0', '6', 'upload/pos/2018-03-22/PN00G18EE0007-pos-91a8be0b-e46c-41b6-ab9c-ac1bd4fd49bb.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3659', '张春可', '2018-03-22 15:54:11', '月结', '', null, '1000', '张春可', '2018-03-22 15:59:22', null, '', null, null, null, '审核通过', null, null, null, null, '0', '7', '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3660', '张春可', '2018-03-22 16:09:49', '支付宝', '', null, '2000', '张春可', '2018-03-22 16:13:50', null, '九', null, '0', '2000', '审核通过', '周晓锋', '2018-03-22 16:12:52', '', '支付宝', '0', '8', '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3661', '王鑫尧', '2018-03-23 09:36:50', '医院收费', '', '3049', '456', '王鑫尧', '2018-03-23 09:36:50', null, '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3662', '王鑫尧', '2018-03-23 10:01:59', '刷卡;微信', '415646313213;152123120323', null, '135;152', '王鑫尧', '2018-03-23 10:01:59', null, ';发多少', null, null, null, '未审核', null, null, null, null, '0', '10', 'upload/pos/2018-03-23/tijian1234865153007-pos-f8de544f-d3d9-4c9d-8f69-b345b2fea72d.jpg;upload/pos/2018-03-23/tijian1234865153007-pos-d73d38b0-a762-4dbb-ac2e-aad5ce2ca200.jpg', 'upload/receipt/2018-03-23/tijian1234865153007-shoujv-910d709c-da88-4ada-87d9-9cc6847847a2.jpg', '开收据');
INSERT INTO `finance_transfer` VALUES ('3663', '王鑫尧', '2018-03-23 11:15:28', '刷卡', '46545153154468787987,46546456454121425564,46545643148744154365', '3051', '265', '王鑫尧', '2018-03-23 11:49:14', null, '', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-23/yq00459856413-pos-c92407c5-ba94-4c68-9ce3-f686bdc263b2.jpg,upload/pos/2018-03-23/yq00459856413-pos-d3aabe2b-20e0-4ed0-9228-e95ee93a16c6.jpg,upload/pos/2018-03-23/yq00459856413-pos-2a0a8b73-721f-478d-96e6-b28a4acc39be.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3664', '王鑫尧', '2018-03-23 11:31:40', '现金', '', null, '13513', '王鑫尧', '2018-03-23 11:31:40', '2931', '', null, null, null, '审核通过', null, null, null, null, '0', null, '', 'upload/receipt/2018-03-23/ha00123485698-shoujv-0c8de7ab-37fb-4b31-b691-abf2fbc60875.jpg', '开收据');
INSERT INTO `finance_transfer` VALUES ('3665', '王鑫尧', '2018-03-23 11:32:53', '刷卡', '15466546545646464645', null, '2165', '王鑫尧', '2018-03-23 11:32:53', '2932', '', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-23/ha00456874566-pos-92244d9f-265b-45dd-8603-6ae9a8b0f23e.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3666', '张春可', '2018-03-23 11:38:36', '刷卡;现金', '123456789012;', '3052', '1000;2000', '演示', '2018-03-27 15:37:16', null, ';', null, '1', '1000', '未审核', null, null, null, '刷卡', '0', null, 'upload/pos/2018-03-23/Pn00g00xf0001-pos-c6ad2b7d-e3b2-48be-920b-d43b69d4185c.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3667', '张春可', '2018-03-23 11:40:06', '刷卡', '111112222213,122223666652', '3053', '1000', '张春可', '2018-03-23 11:55:30', null, '', null, '1', '1000', '审核通过', null, null, null, '刷卡', '0', null, 'upload/pos/2018-03-23/PN00G00XF0002-pos-d888be7c-e091-4da0-8856-f1aad6a26c46.jpg,upload/pos/2018-03-23/PN00G00XF0002-pos-097d6457-7ee0-409c-b7a8-9c33c16acbf9.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3668', '张春可', '2018-03-23 11:41:39', '刷卡', '123456789014', null, '1000', '张春可', '2018-03-23 11:55:30', '2933', '', null, '1', '1000', '审核通过', null, null, null, '刷卡', '0', null, 'upload/pos/2018-03-23/PN00G00zF0003-pos-f1734b41-ac91-41d7-aa2d-0d332653a117.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3669', '张春可', '2018-03-23 11:42:59', '刷卡;微信', '123456888888;333341254124', null, '1000;2000', '张春可', '2018-03-23 11:55:30', '2934', ';晓峰4', null, '1', '1000;2000', '审核通过', null, null, null, '刷卡;微信', '0', null, 'upload/pos/2018-03-23/PN00G00ZF0004-pos-83f7ce3c-3774-467b-bf54-918a306224c5.jpg;upload/pos/2018-03-23/PN00G00ZF0004-pos-f2f34863-c6ba-4ae0-9c9a-6a6838f36737.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3670', '张春可', '2018-03-23 12:53:07', '刷卡', '1838838384848', '3054', '1000', '张春可', '2018-03-23 12:55:54', null, '', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-23/TH00G00SH0001-pos-058dc98f-2e65-459c-8330-0385c342fb13.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3671', '张春可', '2018-03-23 13:01:36', '医院收费', '', '3055', '1000', '王鑫尧', '2018-03-26 15:31:01', null, '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3672', '张春可', '2018-03-23 13:54:33', '现金', '', null, '2323', '张春可', '2018-03-23 13:54:32', '2935', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3673', '张春可', '2018-03-23 13:54:43', '现金', '', null, '2323', '张春可', '2018-03-23 13:54:43', '2936', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3674', '张春可', '2018-03-23 13:55:08', '现金', '', null, '2323', '张春可', '2018-03-23 13:55:08', '2937', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3675', '张春可', '2018-03-23 13:55:20', '现金', '', null, '2323', '张春可', '2018-03-23 13:55:20', '2938', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3676', '张春可', '2018-03-23 13:55:40', '现金', '', null, '2323', '张春可', '2018-03-23 13:55:40', '2939', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3677', '张春可', '2018-03-23 14:26:04', '支付宝', '', null, '1000', '张春可', '2018-03-23 14:26:42', null, '高科技', null, null, null, '未审核', null, null, null, null, '0', '11', '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3678', '张春可', '2018-03-23 14:32:57', '现金', '', null, '1000', '张春可', '2018-03-23 14:32:57', '2940', '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3679', '周晓锋', '2018-03-23 14:48:09', '现金', '', null, '23232', '周晓锋', '2018-03-23 14:48:08', '2941', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3680', '周晓锋', '2018-03-23 14:48:19', '现金', '', null, '23232', '周晓锋', '2018-03-23 14:48:19', '2942', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3681', '周晓锋', '2018-03-23 14:48:42', '现金', '', null, '23232', '周晓锋', '2018-03-23 14:48:42', '2943', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3682', '周晓锋', '2018-03-23 14:48:48', '现金', '', null, '23232', '周晓锋', '2018-03-23 14:48:48', '2944', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3683', '演示', '2018-03-26 13:04:29', '现金', '', '3056', '250', '演示', '2018-03-26 13:04:29', null, '', null, null, null, '通过', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3684', '王鑫尧', '2018-03-26 15:27:24', '医院收费', '', '3057', '54245', '王鑫尧', '2018-03-26 15:27:24', null, '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3685', '王鑫尧', '2018-03-26 16:04:00', '医院收费', '', '3058', '3232', '王鑫尧', '2018-03-26 16:04:00', null, '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3686', '张春可', '2018-03-27 13:29:32', '现金', '', '3059', '2323', '张春可', '2018-03-27 13:29:52', null, '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3687', '王鑫尧', '2018-03-27 14:09:50', '医院收费', '', '3060', '73', '王鑫尧', '2018-03-27 14:09:50', null, '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3688', '王鑫尧', '2018-03-27 14:11:11', '支付宝', '', '3061', '37', '王鑫尧', '2018-03-27 14:11:11', null, '坏了', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3689', '王鑫尧', '2018-03-27 14:28:21', '医院收费', '', '3062', '275', '王鑫尧', '2018-03-27 14:28:21', null, '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3690', '王鑫尧', '2018-03-27 14:29:22', '现金', '', '3063', '', '王鑫尧', '2018-03-27 14:29:22', null, '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3691', '王鑫尧', '2018-03-28 09:04:50', '刷卡', '35677632257889', '3064', '368', '王鑫尧', '2018-03-28 09:07:59', null, '', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-28/YQ00684268754-pos-16e7b3ea-327e-433d-b1c4-c9270e3a26fd.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3692', '王鑫尧', '2018-03-28 09:09:35', '微信', '377353525267272', '3065', '73', '王鑫尧', '2018-03-28 09:10:22', null, '625', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-28/YQ00636382845-pos-fbdfb8e6-f02d-4323-b63d-8441df6d9734.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3693', '王鑫尧', '2018-03-28 09:13:41', '医院收费', '', '3066', '8376', '王鑫尧', '2018-03-28 09:30:43', null, '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3694', '王鑫尧', '2018-03-28 09:22:06', '支付宝', '', '3067', '836', '王鑫尧', '2018-03-28 09:22:06', null, '843', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-28/yq00836264876-pos-cc9081ab-2c0b-4b9d-bc3c-202bc7012533.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3695', '演示', '2018-03-28 11:56:21', '现金', '', null, '122323', '演示', '2018-03-28 11:56:21', '2945', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3696', '张春可', '2018-03-28 15:33:25', '刷卡', '12345671283838383', '3068', '1000', '张春可', '2018-03-28 16:40:17', null, '', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-03-28/Ne00g00nj0001-pos-aaf43b1b-90b4-4336-82e5-bc2929817947.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3697', '张春可', '2018-03-28 15:35:53', '支付宝', '', '3069', '3000', '张春可', '2018-03-28 15:35:53', null, '婚礼', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3698', '张春可', '2018-03-28 17:32:30', '现金', '', null, '23', '张春可', '2018-03-28 17:32:30', '2946', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3699', '张春可', '2018-03-28 17:32:37', '现金', '', null, '23', '张春可', '2018-03-28 17:32:37', '2947', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3700', '张春可', '2018-03-28 17:34:39', '现金', '', null, '3434', '周晓锋', '2018-03-28 17:36:38', '2948', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3701', '张春可', '2018-03-28 17:34:44', '现金', '', null, '3434', '周晓锋', '2018-03-28 17:36:42', '2949', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3702', '张春可', '2018-03-28 17:34:49', '现金', '', null, '3434', '周晓锋', '2018-03-28 17:36:46', '2950', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3703', '张春可', '2018-03-28 17:34:57', '现金', '', null, '3434', '周晓锋', '2018-03-28 17:36:51', '2951', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3704', '张春可', '2018-03-28 18:44:21', '现金', '', null, '2323', '张春可', '2018-03-28 18:44:21', '2952', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3705', '张春可', '2018-03-28 18:55:32', '现金', '', null, '233434', '演示', '2018-03-29 19:04:53', '2953', '', null, null, null, '未审核', null, null, '', null, '0', null, '', null, '不开收据');
INSERT INTO `finance_transfer` VALUES ('3706', '王鑫尧', '2018-03-29 13:36:35', '现金', '', null, '5636', '王鑫尧', '2018-03-29 13:50:20', '2954', '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3707', '王鑫尧', '2018-03-29 13:40:51', '支付宝', '', null, '633', '王鑫尧', '2018-03-29 13:50:43', '2955', '故事书', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3708', '张春可', '2018-03-30 12:42:45', '医院收费', '', '3070', '7265', '张春可', '2018-03-30 12:42:45', null, '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3709', '王鑫尧', '2018-03-30 15:32:31', '支付宝', '', null, '536', '王鑫尧', '2018-03-30 15:32:31', '2956', '官方端新给的', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3710', '演示', '2018-04-02 17:38:48', '现金', '', '3071', '2323', '演示', '2018-04-02 17:38:48', null, '', null, null, null, '通过', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3711', '张春可', '2018-04-03 11:22:48', '现金', '', '3072', '', '张春可', '2018-04-03 11:22:48', null, '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3712', '王鑫尧', '2018-04-03 11:33:29', '微信', '7373649274636', '3073', '37', '王鑫尧', '2018-04-03 11:34:29', null, '吃吧', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-04-03/YQ00736255446-pos-0b37545e-b105-467d-b3a7-64ec56aec00b.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3713', '王鑫尧', '2018-04-03 11:39:52', '微信', '737363626267474', '3074', '836', '王鑫尧', '2018-04-03 11:39:52', null, '好馋', null, null, null, '未审核', null, null, null, null, '0', null, '737363626267474,,', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3714', '王鑫尧', '2018-04-03 11:49:47', '支付宝', '', '3075', '73', '王鑫尧', '2018-04-03 11:49:47', null, '笨蛋', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-04-03/yq00376364976-pos-eae23808-19ee-4c6c-83a6-c60c6053359b.jpg', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3715', '张春可', '2018-04-03 11:55:18', '微信', '54946765481884949', '3076', '55', '张春可', '2018-04-03 11:55:18', null, '体贴', null, null, null, '未审核', null, null, null, null, '0', null, 'upload/pos/2018-04-03/Yq00775478643-pos-1ee51361-4671-4813-b399-af654b23dd57.jpg,,', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3716', '张春可', '2018-04-03 16:11:52', '月结', '', null, '100', '张春可', '2018-04-03 16:11:52', '2957', '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3717', '张娟', '2018-04-03 16:30:13', '现金', '', null, '2533', '张娟', '2018-04-04 15:57:58', '2958', '', null, null, null, '未审核', null, null, '', null, '0', null, null, null, null);
INSERT INTO `finance_transfer` VALUES ('3718', '王鑫尧', '2018-04-03 17:45:24', '医院收费', '', '3077', '72', '王鑫尧', '2018-04-03 17:45:24', null, '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3719', '王鑫尧', '2018-04-03 17:46:27', '现金', '', '3078', '', '王鑫尧', '2018-04-03 17:46:27', null, '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3720', '王鑫尧', '2018-04-03 18:20:14', '现金', '', '3079', '', '王鑫尧', '2018-04-03 18:20:14', null, '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3721', '王鑫尧', '2018-04-04 11:44:30', '月结', '', null, '552525', '王鑫尧', '2018-04-04 11:44:30', '2959', '', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3722', '王鑫尧', '2018-04-04 11:47:44', '转账', '', null, '867', '王鑫尧', '2018-04-04 11:47:44', '2960', '会发个', null, null, null, '审核通过', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3723', '王鑫尧', '2018-04-08 10:19:49', '月结', '', null, '836', '王鑫尧', '2018-04-08 10:19:49', '2961', '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');
INSERT INTO `finance_transfer` VALUES ('3724', '王鑫尧', '2018-04-08 10:50:50', '月结', '', null, '836', '王鑫尧', '2018-04-08 10:50:50', '2962', '', null, null, null, '未审核', null, null, null, null, '0', null, '', '', '不开收据');

-- ----------------------------
-- Table structure for giftcard_companyinfo
-- ----------------------------
DROP TABLE IF EXISTS `giftcard_companyinfo`;
CREATE TABLE `giftcard_companyinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `responsible_name` varchar(30) DEFAULT NULL COMMENT '工会负责人',
  `responsible_tel` varchar(30) DEFAULT NULL COMMENT '负责人电话',
  `companyName` varchar(40) DEFAULT NULL COMMENT '公会名称',
  `onlynumber` varchar(30) DEFAULT NULL COMMENT '唯一识别码',
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_onlynumber` (`onlynumber`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of giftcard_companyinfo
-- ----------------------------
INSERT INTO `giftcard_companyinfo` VALUES ('16', '刘楠', '18511254620', '优迅', '123456', '刘楠', '2018-03-26 14:07:29', '刘楠', '2018-03-26 14:07:29');

-- ----------------------------
-- Table structure for giftcard_kuaidi
-- ----------------------------
DROP TABLE IF EXISTS `giftcard_kuaidi`;
CREATE TABLE `giftcard_kuaidi` (
  `kuaidiID` int(10) NOT NULL AUTO_INCREMENT,
  `tj_samplenum` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '样本编号',
  `kuaidiCompany` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `kuaidiNumber` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `KuaidiNote` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '快递备注',
  `inputName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputTime` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`kuaidiID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of giftcard_kuaidi
-- ----------------------------
INSERT INTO `giftcard_kuaidi` VALUES ('73', 'ME18SD6B5D2', '圆通', 'nxn377363663', '测试1快递公司', '', '2018-04-02 15:38:26', '2018-04-02 15:38:26', '');
INSERT INTO `giftcard_kuaidi` VALUES ('74', 'ME18SD6B5D1', '韵达', 'jdneb7373636363', '测试心1', '', '2018-04-02 15:59:52', '2018-04-02 15:59:52', '');
INSERT INTO `giftcard_kuaidi` VALUES ('75', 'ME18SD6B5D3', '中通', '3773734', '倒计时', '', '2018-04-02 16:14:52', '2018-04-02 16:14:52', '');
INSERT INTO `giftcard_kuaidi` VALUES ('76', 'ME18SD6B5D4', '宅急送', '456464646456', 'das', '', '2018-04-02 16:22:59', '2018-04-02 16:22:59', '');
INSERT INTO `giftcard_kuaidi` VALUES ('77', 'ME18SD6B5D5', '申通', '6566gbs647373', 'gbx', '', '2018-04-02 16:26:15', '2018-04-02 16:26:15', '');
INSERT INTO `giftcard_kuaidi` VALUES ('78', 'ME18SD6B5D6', '顺丰', 'y56376474747', 'gbxs', '', '2018-04-02 16:32:20', '2018-04-02 16:32:20', '');
INSERT INTO `giftcard_kuaidi` VALUES ('79', 'ME18SD6B5D7', '顺丰', 'ME18SD6B5D6', 'dfsdfdsfsdfds', '', '2018-04-02 16:34:13', '2018-04-02 16:34:13', '');
INSERT INTO `giftcard_kuaidi` VALUES ('80', 'ME18SD6B5D8', '圆通', '73737373', '富含可', '', '2018-04-02 16:41:02', '2018-04-02 16:41:02', '');
INSERT INTO `giftcard_kuaidi` VALUES ('81', 'ME18SD6B5D9', '圆通', '3873636255353', null, '', '2018-04-02 17:12:42', '2018-04-02 17:12:42', '');
INSERT INTO `giftcard_kuaidi` VALUES ('82', 'ME18SD6B5D0', '顺丰', 'dhbxb37736252', null, '', '2018-04-02 17:13:50', '2018-04-02 17:13:50', '');
INSERT INTO `giftcard_kuaidi` VALUES ('83', 'ME18SD6B5D11', '韵达', '7473474747', null, '', '2018-04-02 17:15:20', '2018-04-02 17:15:20', '');
INSERT INTO `giftcard_kuaidi` VALUES ('84', 'ME18SD6B5D12', '申通', '53636363636', null, '', '2018-04-02 17:16:18', '2018-04-02 17:16:18', '');
INSERT INTO `giftcard_kuaidi` VALUES ('85', 'ME18SD6B5D13', '百世汇通', '52352626', '不是', '', '2018-04-02 17:22:59', '2018-04-02 17:22:59', '');
INSERT INTO `giftcard_kuaidi` VALUES ('86', 'ME18SD6B5D', '联邦', '634636363', null, '', '2018-04-02 17:26:56', '2018-04-02 17:26:56', '');

-- ----------------------------
-- Table structure for giftcard_packge
-- ----------------------------
DROP TABLE IF EXISTS `giftcard_packge`;
CREATE TABLE `giftcard_packge` (
  `package_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL COMMENT '工会识别码的id',
  `package` varchar(50) DEFAULT NULL COMMENT '套餐',
  `user_one` varchar(50) DEFAULT NULL,
  `user_two` varchar(50) DEFAULT NULL,
  `user_three` varchar(50) DEFAULT NULL,
  `user_four` varchar(50) DEFAULT NULL,
  `user_five` varchar(50) DEFAULT NULL,
  `tj_samplenum` varchar(20) DEFAULT NULL COMMENT '体检样本编号',
  `UsenumState` varchar(10) DEFAULT '未使用' COMMENT '样本编号是否使用过',
  `testState` int(10) DEFAULT NULL COMMENT '样本检测状态',
  `familyHistory` varchar(50) DEFAULT NULL COMMENT '家族史',
  `familyRelation` varchar(10) DEFAULT NULL COMMENT '与受检者关系',
  `onsetAge` varchar(10) DEFAULT NULL COMMENT '发病年龄',
  `presentHistory` varchar(50) DEFAULT NULL COMMENT '现病史',
  `treatment` varchar(50) DEFAULT NULL COMMENT '治疗情况',
  `normal_history` varchar(30) DEFAULT NULL COMMENT '烟酒药物史',
  `medicine_history` varchar(50) DEFAULT NULL COMMENT '药物史',
  `different_history` varchar(30) DEFAULT NULL COMMENT '有毒有害接触史',
  `different_other` varchar(50) DEFAULT NULL COMMENT '其他有毒有害接触史',
  `sample_type` varchar(10) DEFAULT NULL COMMENT '样本类型',
  `caijiTime` varchar(30) DEFAULT NULL COMMENT '采集时间',
  `kuaidiState` varchar(10) DEFAULT NULL COMMENT '快递绑定状态',
  `pdfurl` varchar(100) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`package_id`),
  UNIQUE KEY `tj_samplenum` (`tj_samplenum`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of giftcard_packge
-- ----------------------------
INSERT INTO `giftcard_packge` VALUES ('363', null, '心源性猝死基因检测', null, null, null, null, null, 'HH00112233', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `giftcard_packge` VALUES ('364', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SD6B5D', '已使用', '1', '都比较适合很多南方', '子孙', '28', null, '', '烟,酒', null, null, '活动吧', null, '2017-02-02', '已绑定', null, '刘楠', '2018-03-26 14:08:02', '测试心源1', '2018-04-02 15:23:54');
INSERT INTO `giftcard_packge` VALUES ('365', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SD9I4G', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:38', '刘楠', '2018-03-26 14:08:38');
INSERT INTO `giftcard_packge` VALUES ('366', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SDEM3N', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:38', '刘楠', '2018-03-26 14:08:38');
INSERT INTO `giftcard_packge` VALUES ('367', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SDF98D', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:38', '刘楠', '2018-03-26 14:08:38');
INSERT INTO `giftcard_packge` VALUES ('368', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SD5FWJ', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:39', '刘楠', '2018-03-26 14:08:39');
INSERT INTO `giftcard_packge` VALUES ('369', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SDHBP9', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:39', '刘楠', '2018-03-26 14:08:39');
INSERT INTO `giftcard_packge` VALUES ('370', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SDI577', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:39', '刘楠', '2018-03-26 14:08:39');
INSERT INTO `giftcard_packge` VALUES ('371', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SD7CCF', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:39', '刘楠', '2018-03-26 14:08:39');
INSERT INTO `giftcard_packge` VALUES ('372', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SDM5CJ', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:39', '刘楠', '2018-03-26 14:08:39');
INSERT INTO `giftcard_packge` VALUES ('373', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SD99M4', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:39', '刘楠', '2018-03-26 14:08:39');
INSERT INTO `giftcard_packge` VALUES ('374', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SDSW83', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-03-26 14:08:39', '刘楠', '2018-03-26 14:08:39');
INSERT INTO `giftcard_packge` VALUES ('375', '16', '体检-心源性猝死基因检测', null, null, null, null, null, 'ME18SDRS2I', '未使用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '刘楠', '2018-04-03 13:57:31', '刘楠', '2018-04-03 13:57:31');

-- ----------------------------
-- Table structure for giftcard_senduser
-- ----------------------------
DROP TABLE IF EXISTS `giftcard_senduser`;
CREATE TABLE `giftcard_senduser` (
  `bindingID` int(11) NOT NULL AUTO_INCREMENT,
  `openID` varchar(30) DEFAULT NULL COMMENT '微信端获取',
  `tjName` varchar(10) DEFAULT NULL COMMENT '受检者姓名',
  `tjSex` varchar(10) DEFAULT NULL COMMENT '受检者性别',
  `tjAge` varchar(10) DEFAULT NULL COMMENT '受检者年龄',
  `tjTel` varchar(30) DEFAULT NULL COMMENT '受检者电话',
  `tjpeopleAddress` varchar(50) DEFAULT NULL COMMENT '受检者地址',
  `tj_samplenum` varchar(30) DEFAULT NULL COMMENT '样本编号',
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `headimgUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bindingID`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of giftcard_senduser
-- ----------------------------
INSERT INTO `giftcard_senduser` VALUES ('87', 'oeKeMwam_whQsmmgEnpsNxWfszbA', '测试心源1', '男', '83', '18800100830', '西藏自治区,林芝地区,墨脱县 测试地址1', 'ME18SD6B51', '测试心源1', '2018-04-02 15:23:55', '测试心源1', '2018-04-02 15:23:55', 'http://img1.imgtn.bdimg.com/it/u=4171028546,4256674762&fm=214&gp=0.jpg');

-- ----------------------------
-- Table structure for heredity_21_change_log
-- ----------------------------
DROP TABLE IF EXISTS `heredity_21_change_log`;
CREATE TABLE `heredity_21_change_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_21_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_21_child
-- ----------------------------
DROP TABLE IF EXISTS `heredity_21_child`;
CREATE TABLE `heredity_21_child` (
  `tid` int(50) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `num` varchar(255) DEFAULT NULL COMMENT '样本编号',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `age` varchar(255) DEFAULT NULL COMMENT '年龄',
  `nation` varchar(255) DEFAULT NULL COMMENT '民族',
  `origin` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '通讯地址',
  `hospital` varchar(255) DEFAULT NULL COMMENT '送检单位',
  `doctor` varchar(255) DEFAULT NULL COMMENT '送检医师',
  `rxalx` varchar(255) DEFAULT NULL COMMENT '乳腺癌类型',
  `lxs` varchar(255) DEFAULT NULL COMMENT '阳性数',
  `t` varchar(255) DEFAULT NULL COMMENT '分期T',
  `n` varchar(255) DEFAULT NULL COMMENT '分期N',
  `m` varchar(255) DEFAULT NULL COMMENT '分期M',
  `zq` varchar(255) DEFAULT NULL COMMENT '病例分型早期（勾选）',
  `zqpd` varchar(255) DEFAULT NULL COMMENT '病理分型早期（文本）',
  `ts` varchar(255) DEFAULT NULL COMMENT '病理分型特殊型（单选）',
  `tspd` varchar(255) DEFAULT NULL COMMENT '特殊型（文本）',
  `fts` varchar(255) DEFAULT NULL COMMENT '非特殊型(单选)',
  `ftspd` varchar(255) DEFAULT NULL COMMENT '非特殊型（文本）',
  `fjbz` varchar(255) DEFAULT NULL COMMENT '分级标准',
  `fj` varchar(255) DEFAULT NULL COMMENT '分级',
  `er` varchar(255) DEFAULT NULL COMMENT '激素表达水平ER',
  `pr` varchar(255) DEFAULT NULL COMMENT 'PR',
  `her2` varchar(255) DEFAULT NULL COMMENT 'HER-2',
  `ki67` varchar(255) DEFAULT NULL COMMENT 'Ki-67',
  `zslqp` varchar(255) DEFAULT NULL COMMENT '肿瘤组织石蜡切片（单选）',
  `zslqpz` varchar(255) DEFAULT NULL COMMENT '石蜡切片-张',
  `zslqph` varchar(255) DEFAULT NULL COMMENT '石蜡切片-厚度',
  `xxzz` varchar(255) DEFAULT NULL COMMENT '新鲜组织（单选）',
  `xxzzpd` varchar(255) DEFAULT NULL COMMENT '新鲜组织（个）',
  `ybdate` varchar(255) DEFAULT NULL COMMENT '采样时间',
  `bz` text COMMENT '备注',
  `sjzqm` varchar(255) DEFAULT NULL COMMENT '受检者签名',
  `jhrqm` varchar(255) DEFAULT NULL COMMENT '监护人签名',
  `guanxi` varchar(255) DEFAULT NULL COMMENT '与患者关系',
  `sjdate` varchar(255) DEFAULT NULL COMMENT '受检者签名日期',
  `doctorqm` varchar(255) DEFAULT NULL COMMENT '送检医生签名',
  `doctordate` varchar(255) DEFAULT NULL COMMENT '医生签名日期',
  `nd` varchar(255) DEFAULT '已做',
  `sfqk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_21_child
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_21_jd
-- ----------------------------
DROP TABLE IF EXISTS `heredity_21_jd`;
CREATE TABLE `heredity_21_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '???id extjs???',
  `img` varchar(100) DEFAULT NULL COMMENT '????',
  `num` varchar(20) DEFAULT NULL COMMENT '????',
  `hospital` varchar(50) DEFAULT NULL COMMENT '????',
  `doctor` varchar(20) DEFAULT NULL COMMENT '????',
  `bloodtime` varchar(20) DEFAULT NULL COMMENT '????',
  `name` varchar(20) DEFAULT NULL COMMENT '??',
  `idcard` varchar(255) DEFAULT NULL COMMENT '????',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '????',
  `yl` varchar(50) DEFAULT NULL COMMENT '????',
  `ylr` varchar(20) DEFAULT NULL COMMENT '???',
  `yltime` varchar(20) DEFAULT NULL COMMENT '????',
  `ylid` int(10) DEFAULT NULL COMMENT '??id',
  `el` varchar(50) DEFAULT NULL COMMENT '??',
  `elr` varchar(20) DEFAULT NULL COMMENT '???',
  `elid` int(10) DEFAULT NULL COMMENT '??id',
  `eltime` varchar(20) DEFAULT NULL COMMENT '????',
  `ys` varchar(50) DEFAULT NULL COMMENT '??',
  `ysr` varchar(20) DEFAULT NULL COMMENT '???',
  `ysid` int(10) DEFAULT NULL COMMENT '??id',
  `ystime` varchar(20) DEFAULT NULL COMMENT '????',
  `es` varchar(50) DEFAULT NULL COMMENT '????',
  `esr` varchar(20) DEFAULT NULL COMMENT '???',
  `esid` int(10) DEFAULT NULL COMMENT '??id',
  `estime` varchar(20) DEFAULT NULL COMMENT '????',
  `uploadtime` varchar(20) DEFAULT NULL COMMENT '????',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '????',
  `salename` varchar(50) DEFAULT NULL,
  `saletime` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '优替(21基因)',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='??????,???????????,??,???????';

-- ----------------------------
-- Records of heredity_21_jd
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_21_log
-- ----------------------------
DROP TABLE IF EXISTS `heredity_21_log`;
CREATE TABLE `heredity_21_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_21_log
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_msi_change_log
-- ----------------------------
DROP TABLE IF EXISTS `heredity_msi_change_log`;
CREATE TABLE `heredity_msi_change_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_msi_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_msi_child
-- ----------------------------
DROP TABLE IF EXISTS `heredity_msi_child`;
CREATE TABLE `heredity_msi_child` (
  `tid` int(50) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `num` varchar(255) DEFAULT NULL COMMENT '样本编号',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `age` varchar(255) DEFAULT NULL COMMENT '年龄',
  `nation` varchar(255) DEFAULT NULL COMMENT '民族',
  `origin` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '通讯地址',
  `jzbs` varchar(255) DEFAULT NULL COMMENT '家族病史',
  `jwbs` varchar(255) DEFAULT NULL COMMENT '既往病史',
  `hospital` varchar(255) DEFAULT NULL COMMENT '送检单位',
  `doctor` varchar(255) DEFAULT NULL COMMENT '送检医师',
  `blzd` varchar(255) DEFAULT NULL COMMENT '病理诊断',
  `lcfq` varchar(255) DEFAULT NULL COMMENT '临床分期',
  `mlh1` varchar(255) DEFAULT NULL COMMENT 'MLH1',
  `msh2` varchar(255) DEFAULT NULL COMMENT 'MSH2',
  `pms2` varchar(255) DEFAULT NULL COMMENT 'PMS2',
  `msh6` varchar(255) DEFAULT NULL COMMENT 'MSH6',
  `nd` varchar(255) DEFAULT NULL COMMENT '未做',
  `sslqp` varchar(255) DEFAULT NULL COMMENT '手术样本石蜡切片勾选',
  `sslqpz` varchar(255) DEFAULT NULL COMMENT '手术石蜡切片-张',
  `sslqph` varchar(255) DEFAULT NULL COMMENT '手术石蜡切片-厚度',
  `sxxzz` varchar(255) DEFAULT NULL COMMENT '手术样本新鲜组织勾选',
  `sxxzzpd` varchar(255) DEFAULT NULL COMMENT '手术样本新鲜组织文本',
  `cslqp` varchar(255) DEFAULT '' COMMENT '穿刺样本石蜡切片勾选',
  `cslqpz` varchar(255) DEFAULT NULL COMMENT '穿刺石蜡切片-张',
  `cslqph` varchar(255) DEFAULT '' COMMENT '穿刺样本厚度',
  `cxxzz` varchar(255) DEFAULT NULL COMMENT '穿刺样本新鲜组织勾选',
  `cxxzzpd` varchar(255) DEFAULT NULL COMMENT '穿刺样本新鲜组织文本',
  `wzx` varchar(255) DEFAULT NULL COMMENT '外周血',
  `bz` text COMMENT '备注',
  `ybdate` varchar(255) DEFAULT NULL COMMENT '样本采集日期',
  `sjzqm` varchar(255) DEFAULT NULL COMMENT '受检者签名',
  `jhrqm` varchar(255) DEFAULT NULL COMMENT '监护人签名',
  `guanxi` varchar(255) DEFAULT NULL COMMENT '与患者关系',
  `sjdate` varchar(255) DEFAULT NULL COMMENT '受检者签名日期',
  `doctorqm` varchar(255) DEFAULT NULL COMMENT '送检医生签名',
  `doctordate` varchar(255) DEFAULT NULL COMMENT '医生签名日期',
  `ssyb` varchar(255) DEFAULT NULL COMMENT '手术样本勾选',
  `ccyb` varchar(255) DEFAULT NULL COMMENT '穿刺样本勾选',
  `wzxpd` varchar(255) DEFAULT NULL COMMENT '外周血勾选',
  `sfqk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_msi_child
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_msi_jd
-- ----------------------------
DROP TABLE IF EXISTS `heredity_msi_jd`;
CREATE TABLE `heredity_msi_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '???id extjs???',
  `img` varchar(100) DEFAULT NULL COMMENT '????',
  `num` varchar(20) DEFAULT NULL COMMENT '????',
  `hospital` varchar(50) DEFAULT NULL COMMENT '????',
  `doctor` varchar(20) DEFAULT NULL COMMENT '????',
  `bloodtime` varchar(20) DEFAULT NULL COMMENT '????',
  `name` varchar(20) DEFAULT NULL COMMENT '??',
  `idcard` varchar(255) DEFAULT NULL COMMENT '????',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '????',
  `yl` varchar(50) DEFAULT NULL COMMENT '????',
  `ylr` varchar(20) DEFAULT NULL COMMENT '???',
  `yltime` varchar(20) DEFAULT NULL COMMENT '????',
  `ylid` int(10) DEFAULT NULL COMMENT '??id',
  `el` varchar(50) DEFAULT NULL COMMENT '??',
  `elr` varchar(20) DEFAULT NULL COMMENT '???',
  `elid` int(10) DEFAULT NULL COMMENT '??id',
  `eltime` varchar(20) DEFAULT NULL COMMENT '????',
  `ys` varchar(50) DEFAULT NULL COMMENT '??',
  `ysr` varchar(20) DEFAULT NULL COMMENT '???',
  `ysid` int(10) DEFAULT NULL COMMENT '??id',
  `ystime` varchar(20) DEFAULT NULL COMMENT '????',
  `es` varchar(50) DEFAULT NULL COMMENT '????',
  `esr` varchar(20) DEFAULT NULL COMMENT '???',
  `esid` int(10) DEFAULT NULL COMMENT '??id',
  `estime` varchar(20) DEFAULT NULL COMMENT '????',
  `uploadtime` varchar(20) DEFAULT NULL COMMENT '????',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '????',
  `salename` varchar(50) DEFAULT NULL,
  `saletime` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '优替(MSI)',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='??????,???????????,??,???????';

-- ----------------------------
-- Records of heredity_msi_jd
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_msi_log
-- ----------------------------
DROP TABLE IF EXISTS `heredity_msi_log`;
CREATE TABLE `heredity_msi_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_msi_log
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_yx_change_log
-- ----------------------------
DROP TABLE IF EXISTS `heredity_yx_change_log`;
CREATE TABLE `heredity_yx_change_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_yx_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_yx_child
-- ----------------------------
DROP TABLE IF EXISTS `heredity_yx_child`;
CREATE TABLE `heredity_yx_child` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `num1` varchar(50) DEFAULT NULL COMMENT '样本编号1',
  `num2` varchar(50) DEFAULT NULL COMMENT '样本编号2',
  `num3` varchar(50) DEFAULT NULL COMMENT '样本编号3',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `age` varchar(50) DEFAULT NULL COMMENT '年龄',
  `nation` varchar(50) DEFAULT NULL COMMENT '民族',
  `jiguan` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `sfzh` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `telphone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `mail` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(50) DEFAULT NULL COMMENT '通讯地址',
  `sickhistory` varchar(255) DEFAULT NULL COMMENT '个人疾病史',
  `familyhistory` varchar(255) DEFAULT NULL COMMENT '家族病史',
  `familyrelation` varchar(50) DEFAULT NULL COMMENT '与受检者关系',
  `familysickage` varchar(50) DEFAULT NULL COMMENT '确诊年龄',
  `danwei` varchar(50) DEFAULT NULL COMMENT '送检单位',
  `keshi` varchar(50) DEFAULT NULL COMMENT '送检科室',
  `doctor` varchar(50) DEFAULT NULL COMMENT '送检医师',
  `doctortelphone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `sickage` varchar(50) DEFAULT NULL COMMENT '确诊年龄',
  `lczd` varchar(50) DEFAULT NULL COMMENT '临床诊断',
  `blzd` varchar(50) DEFAULT NULL COMMENT '病理诊断',
  `zzms` varchar(255) DEFAULT NULL COMMENT '症状描述',
  `lcfq` varchar(255) DEFAULT NULL COMMENT '临床分期',
  `xyyw` varchar(255) DEFAULT NULL COMMENT '现用药物',
  `zlfy` varchar(255) DEFAULT NULL COMMENT '治疗反应',
  `lyqg3` varchar(50) DEFAULT NULL COMMENT '来源器官3',
  `lyqg1` varchar(50) DEFAULT NULL COMMENT '来源器官1',
  `lyqg2` varchar(50) DEFAULT NULL COMMENT '来源器官2',
  `ybfz3` varchar(50) DEFAULT NULL COMMENT '原病发灶3',
  `ybfz1` varchar(50) DEFAULT NULL COMMENT '原病发灶1',
  `ybfz2` varchar(50) DEFAULT NULL COMMENT '原病发灶2',
  `lbjzyc3` varchar(50) DEFAULT NULL COMMENT '淋巴结转移处3',
  `lbjzyc1` varchar(50) DEFAULT NULL COMMENT '淋巴结转移处1',
  `lbjzyc2` varchar(50) DEFAULT NULL COMMENT '淋巴结转移处2',
  `yczyc3` varchar(50) DEFAULT NULL COMMENT '远处转移处3',
  `yczyc1` varchar(50) DEFAULT NULL COMMENT '远处转移处1',
  `yczyc2` varchar(50) DEFAULT NULL COMMENT '远处转移处1',
  `yblx3` varchar(50) DEFAULT NULL COMMENT '样本类型3',
  `yblx1` varchar(50) DEFAULT NULL COMMENT '样本类型1',
  `yblx2` varchar(50) DEFAULT NULL COMMENT '样本类型2',
  `piece3` varchar(50) DEFAULT NULL COMMENT '样本3-张',
  `piece1` varchar(50) DEFAULT NULL COMMENT '样本1-张',
  `piece2` varchar(50) DEFAULT NULL COMMENT '样本2-张',
  `spiece3` varchar(50) DEFAULT NULL COMMENT '样本3-um',
  `spiece1` varchar(50) DEFAULT NULL COMMENT '样本1-um',
  `spiece2` varchar(50) DEFAULT NULL COMMENT '样本2-um',
  `bloodtime3` varchar(50) DEFAULT NULL COMMENT '采样日期3',
  `bloodtime1` varchar(50) DEFAULT NULL COMMENT '采样日期1',
  `bloodtime2` varchar(50) DEFAULT NULL COMMENT '采样日期2',
  `qtsm` varchar(50) DEFAULT NULL COMMENT '其它说明',
  `qtjc` varchar(500) DEFAULT NULL COMMENT '检测项目',
  `sign` varchar(50) DEFAULT NULL COMMENT '受检者签名',
  `guardiansign` varchar(50) DEFAULT NULL COMMENT '监护人签名',
  `guardianrelation` varchar(50) DEFAULT NULL COMMENT '与患者关系',
  `date` varchar(50) DEFAULT NULL COMMENT '受检者签字日期',
  `doctorsign` varchar(50) DEFAULT NULL COMMENT '送检医生签名',
  `doctordate` varchar(50) DEFAULT NULL COMMENT '送检医生签字日期',
  `bz` text COMMENT '备注',
  `sfqk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_yx_child
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_yx_jd
-- ----------------------------
DROP TABLE IF EXISTS `heredity_yx_jd`;
CREATE TABLE `heredity_yx_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `ybbh` varchar(20) DEFAULT NULL COMMENT '样本编号',
  `hospital` varchar(50) DEFAULT NULL COMMENT '送检医院',
  `sjys` varchar(20) DEFAULT NULL COMMENT '送检医生',
  `xtime` varchar(20) DEFAULT NULL COMMENT '抽血时间',
  `xm` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sfzh` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `telphone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `yl` varchar(50) DEFAULT NULL COMMENT '是否一录',
  `ylr` varchar(20) DEFAULT NULL COMMENT '一录人',
  `yltime` varchar(20) DEFAULT NULL COMMENT '一录时间',
  `ylid` int(10) DEFAULT NULL COMMENT '一录id',
  `el` varchar(50) DEFAULT NULL COMMENT '二录',
  `elr` varchar(20) DEFAULT NULL COMMENT '二录人',
  `elid` int(10) DEFAULT NULL COMMENT '二录id',
  `eltime` varchar(20) DEFAULT NULL COMMENT '二录时间',
  `ys` varchar(50) DEFAULT NULL COMMENT '一审',
  `ysr` varchar(20) DEFAULT NULL COMMENT '一审人',
  `ysid` int(10) DEFAULT NULL COMMENT '一审id',
  `ystime` varchar(20) DEFAULT NULL COMMENT '一审时间',
  `es` varchar(50) DEFAULT NULL COMMENT '是否二审',
  `esr` varchar(20) DEFAULT NULL COMMENT '二审人',
  `esid` int(10) DEFAULT NULL COMMENT '二审id',
  `estime` varchar(20) DEFAULT NULL COMMENT '二审时间',
  `sctime` varchar(20) DEFAULT NULL COMMENT '上传时间',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `salename` varchar(50) DEFAULT NULL,
  `saletime` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '优旭',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of heredity_yx_jd
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_yx_log
-- ----------------------------
DROP TABLE IF EXISTS `heredity_yx_log`;
CREATE TABLE `heredity_yx_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_yx_log
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_yy_change_log
-- ----------------------------
DROP TABLE IF EXISTS `heredity_yy_change_log`;
CREATE TABLE `heredity_yy_change_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_yy_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_yy_child
-- ----------------------------
DROP TABLE IF EXISTS `heredity_yy_child`;
CREATE TABLE `heredity_yy_child` (
  `tid` int(50) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL COMMENT 'æ ·æœ¬ç¼–å·',
  `hospital` varchar(50) DEFAULT NULL COMMENT 'é€æ£€å•ä½',
  `yblx` varchar(50) DEFAULT NULL COMMENT 'è¡€æ¶²ï¼Œå£è…”æ‹­å­ï¼Œå…¶ä»–ä¸‹æ‹‰æ¡†',
  `yblxpd` varchar(50) DEFAULT NULL COMMENT 'æ ·æœ¬ç±»åž‹-å…¶ä»–',
  `ybdate` varchar(50) DEFAULT NULL COMMENT 'å–æ ·æ—¥æœŸ',
  `name` varchar(50) DEFAULT NULL COMMENT 'å§“å',
  `sex` varchar(50) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `age` varchar(50) DEFAULT NULL COMMENT 'å¹´é¾„',
  `nation` varchar(50) DEFAULT NULL COMMENT 'æ°‘æ—',
  `origin` varchar(50) DEFAULT NULL COMMENT 'ç±è´¯',
  `idcard` varchar(50) DEFAULT NULL COMMENT 'èº«ä»½è¯',
  `cellphone` varchar(50) DEFAULT NULL COMMENT 'æ‰‹æœº',
  `email` varchar(50) DEFAULT NULL COMMENT 'é‚®ç®±',
  `address` varchar(50) DEFAULT NULL COMMENT 'é€šè®¯åœ°å€',
  `grjbs` varchar(50) DEFAULT NULL COMMENT 'ä¸ªäººç–¾ç—…å²',
  `fbnl` varchar(50) DEFAULT NULL COMMENT 'å‘ç—…å¹´é¾„',
  `lczd` varchar(50) DEFAULT NULL COMMENT 'ä¸´åºŠè¯Šæ–­',
  `lcbx` varchar(50) DEFAULT NULL COMMENT 'ä¸´åºŠè¡¨çŽ°',
  `zlqk` varchar(50) DEFAULT NULL COMMENT 'æ²»ç–—æƒ…å†µ',
  `qtjbs` varchar(50) DEFAULT NULL COMMENT 'å…¶å®ƒç–¾ç—…å²',
  `familyhistory` varchar(50) DEFAULT NULL COMMENT 'è‚¿ç˜¤å®¶æ—å²',
  `familyrelation` varchar(50) DEFAULT NULL COMMENT 'è‚¿ç˜¤ä¸Žå—æ£€è€…å…³ç³»',
  `familysickage` varchar(50) DEFAULT NULL COMMENT 'è‚¿ç˜¤å‘ç—…å¹´é¾„',
  `familylczd` varchar(50) DEFAULT NULL COMMENT 'è‚¿ç˜¤ä¸´åºŠè¯Šæ–­',
  `swm` varchar(50) DEFAULT NULL COMMENT 'çƒŸï¼Œé…’ï¼Œè¯ç‰©ä¸‹æ‹‰æ¡†',
  `swmpd` varchar(50) DEFAULT NULL COMMENT 'è¯ç‰©',
  `harmful` varchar(50) DEFAULT NULL COMMENT 'æ±ž',
  `harmfulpd` varchar(50) DEFAULT NULL COMMENT 'æœ‰æ¯’æœ‰å®³-å…¶ä»–',
  `jcxm` varchar(500) DEFAULT NULL COMMENT 'æ£€æµ‹é¡¹ç›®',
  `jcxmpd` varchar(50) DEFAULT NULL COMMENT 'æ£€æµ‹é¡¹ç›®å…¶ä»–',
  `sjzqm` varchar(50) DEFAULT NULL COMMENT 'å—æ£€è€…ç­¾å',
  `jhrqm` varchar(50) DEFAULT NULL COMMENT 'ç›‘æŠ¤äººç­¾å',
  `yhzgx` varchar(50) DEFAULT NULL COMMENT 'ç›‘æŠ¤äººä¸Žæ‚£è€…å…³ç³»',
  `sjdate` varchar(50) DEFAULT NULL COMMENT 'å—æ£€è€…ç­¾åæ—¥æœŸ',
  `doctorqm` varchar(50) DEFAULT NULL COMMENT 'é€æ£€åŒ»ç”Ÿç­¾å',
  `doctordate` varchar(50) DEFAULT NULL COMMENT 'é€æ£€åŒ»ç”Ÿç­¾åæ—¥æœŸ',
  `relatives1` varchar(50) DEFAULT NULL COMMENT 'äº²å±ž1',
  `relativessex1` varchar(50) DEFAULT NULL,
  `relativesage1` varchar(50) DEFAULT NULL,
  `guanxi1` varchar(50) DEFAULT NULL,
  `biaoxian1` varchar(50) DEFAULT NULL,
  `relatives2` varchar(50) DEFAULT NULL COMMENT 'äº²å±ž2',
  `relativessex2` varchar(50) DEFAULT NULL,
  `relativesage2` varchar(50) DEFAULT NULL,
  `guanxi2` varchar(50) DEFAULT NULL,
  `biaoxian2` varchar(50) DEFAULT NULL,
  `qsqm` varchar(50) DEFAULT NULL COMMENT 'äº²å±žç­¾å',
  `qsdate` varchar(50) DEFAULT NULL COMMENT 'äº²å±žç­¾åæ—¥æœŸ',
  `bz` text COMMENT 'å¤‡æ³¨',
  `sfqk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_yy_child
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_yy_jd
-- ----------------------------
DROP TABLE IF EXISTS `heredity_yy_jd`;
CREATE TABLE `heredity_yy_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '???id extjs???',
  `img` varchar(100) DEFAULT NULL COMMENT '????',
  `num` varchar(20) DEFAULT NULL COMMENT '????',
  `hospital` varchar(50) DEFAULT NULL COMMENT '????',
  `doctor` varchar(20) DEFAULT NULL COMMENT '????',
  `bloodtime` varchar(20) DEFAULT NULL COMMENT '????',
  `name` varchar(20) DEFAULT NULL COMMENT '??',
  `idcard` varchar(255) DEFAULT NULL COMMENT '????',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '????',
  `yl` varchar(50) DEFAULT NULL COMMENT '????',
  `ylr` varchar(20) DEFAULT NULL COMMENT '???',
  `yltime` varchar(20) DEFAULT NULL COMMENT '????',
  `ylid` int(10) DEFAULT NULL COMMENT '??id',
  `el` varchar(50) DEFAULT NULL COMMENT '??',
  `elr` varchar(20) DEFAULT NULL COMMENT '???',
  `elid` int(10) DEFAULT NULL COMMENT '??id',
  `eltime` varchar(20) DEFAULT NULL COMMENT '????',
  `ys` varchar(50) DEFAULT NULL COMMENT '??',
  `ysr` varchar(20) DEFAULT NULL COMMENT '???',
  `ysid` int(10) DEFAULT NULL COMMENT '??id',
  `ystime` varchar(20) DEFAULT NULL COMMENT '????',
  `es` varchar(50) DEFAULT NULL COMMENT '????',
  `esr` varchar(20) DEFAULT NULL COMMENT '???',
  `esid` int(10) DEFAULT NULL COMMENT '??id',
  `estime` varchar(20) DEFAULT NULL COMMENT '????',
  `uploadtime` varchar(20) DEFAULT NULL COMMENT '????',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '????',
  `salename` varchar(50) DEFAULT NULL,
  `saletime` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '优逸',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='??????,???????????,??,???????';

-- ----------------------------
-- Records of heredity_yy_jd
-- ----------------------------

-- ----------------------------
-- Table structure for heredity_yy_log
-- ----------------------------
DROP TABLE IF EXISTS `heredity_yy_log`;
CREATE TABLE `heredity_yy_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heredity_yy_log
-- ----------------------------

-- ----------------------------
-- Table structure for inc_adanalysisresult
-- ----------------------------
DROP TABLE IF EXISTS `inc_adanalysisresult`;
CREATE TABLE `inc_adanalysisresult` (
  `adanalysisResultId` int(11) NOT NULL AUTO_INCREMENT,
  `aminoacidChange` varchar(10) DEFAULT NULL,
  `basesChange` varchar(30) NOT NULL,
  `detectionGene` varchar(100) NOT NULL,
  `mutationType` varchar(30) DEFAULT NULL,
  `riskImpact` varchar(50) DEFAULT NULL,
  `rsNo` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `adreferences` longtext,
  PRIMARY KEY (`adanalysisResultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inc_adanalysisresult
-- ----------------------------

-- ----------------------------
-- Table structure for inc_adanalysisresultofreport
-- ----------------------------
DROP TABLE IF EXISTS `inc_adanalysisresultofreport`;
CREATE TABLE `inc_adanalysisresultofreport` (
  `adanalysisResultId` int(11) NOT NULL AUTO_INCREMENT,
  `aminoacidChange` varchar(10) DEFAULT NULL,
  `basesChange` varchar(30) NOT NULL,
  `detectionGene` varchar(100) NOT NULL,
  `mutationType` varchar(30) DEFAULT NULL,
  `riskImpact` varchar(50) DEFAULT NULL,
  `rsNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `groupByNum` int(30) NOT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`adanalysisResultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of inc_adanalysisresultofreport
-- ----------------------------

-- ----------------------------
-- Table structure for inc_alzheimer
-- ----------------------------
DROP TABLE IF EXISTS `inc_alzheimer`;
CREATE TABLE `inc_alzheimer` (
  `alzheimerReviewId` int(11) NOT NULL AUTO_INCREMENT,
  `alzheimerOpinion` longtext,
  `alzheimerReviewName` varchar(30) DEFAULT NULL,
  `alzheimerReviewTime` varchar(20) DEFAULT NULL,
  `alzheimerSampleNo` varchar(50) NOT NULL,
  `alzheimerState` varchar(20) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`alzheimerReviewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inc_alzheimer
-- ----------------------------

-- ----------------------------
-- Table structure for inc_alzheimerdisease
-- ----------------------------
DROP TABLE IF EXISTS `inc_alzheimerdisease`;
CREATE TABLE `inc_alzheimerdisease` (
  `alzheimerDiseaseId` int(11) NOT NULL AUTO_INCREMENT,
  `adReportDate` varchar(20) DEFAULT NULL,
  `adReportState` varchar(20) DEFAULT NULL,
  `auditor` varchar(20) DEFAULT NULL,
  `detectioner` varchar(20) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`alzheimerDiseaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inc_alzheimerdisease
-- ----------------------------

-- ----------------------------
-- Table structure for inc_alzheimerresult
-- ----------------------------
DROP TABLE IF EXISTS `inc_alzheimerresult`;
CREATE TABLE `inc_alzheimerresult` (
  `alzheimerResultId` int(11) NOT NULL AUTO_INCREMENT,
  `aminoacidChange` varchar(10) DEFAULT NULL,
  `basesChange` varchar(30) NOT NULL,
  `detectionGene` varchar(100) NOT NULL,
  `mutationType` varchar(30) DEFAULT NULL,
  `riskImpact` varchar(50) DEFAULT NULL,
  `rsNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `adreferences` longtext,
  PRIMARY KEY (`alzheimerResultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inc_alzheimerresult
-- ----------------------------

-- ----------------------------
-- Table structure for inc_analysisresult
-- ----------------------------
DROP TABLE IF EXISTS `inc_analysisresult`;
CREATE TABLE `inc_analysisresult` (
  `anaResultId` int(11) NOT NULL AUTO_INCREMENT,
  `anaOtherSuggest` varchar(100) DEFAULT NULL,
  `anaReportState` varchar(30) NOT NULL,
  `anaResultDes` varchar(100) DEFAULT NULL,
  `anaResultState` varchar(30) DEFAULT NULL,
  `anaSampleNo` varchar(30) NOT NULL,
  `anaSpecialResult` varchar(100) DEFAULT NULL,
  `anaT13Result` varchar(30) DEFAULT NULL,
  `anaT13Value` double DEFAULT NULL,
  `anaT18Result` varchar(30) DEFAULT NULL,
  `anaT18Value` double DEFAULT NULL,
  `anaT21Result` varchar(30) DEFAULT NULL,
  `anaT21Value` double DEFAULT NULL,
  `analysisResultNo` varchar(100) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `inputPerson` varchar(30) NOT NULL,
  `inputDate` varchar(30) NOT NULL,
  `isBatch` varchar(30) DEFAULT NULL,
  `isBuchong` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`anaResultId`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inc_analysisresult
-- ----------------------------
INSERT INTO `inc_analysisresult` VALUES ('293', '无', '未生成', '提示胎儿21三体、18三体、13三体均为低风险', 'Yes', 'afdasfa', '您的胎儿检测结果为低风险，建议遵从医生意见。', '低风险', '1', '高风险', '3.9', '低风险', '2.3', 'sdfasdfads', '黄金龙', '2018-04-02 15:13:05', '黄金龙', '2018-04-02 15:12:57', '', null);
INSERT INTO `inc_analysisresult` VALUES ('294', '无', '未生成', '提示胎儿21三体、18三体、13三体均为低风险', 'Yes', 'PN00G00PJ0003', '您的胎儿检测结果为低风险，建议遵从医生意见。', '低风险', '3', '低风险', '2', '低风险', '1', 'dsfsdf', '黄金龙', '2018-04-02 15:13:52', '黄金龙', '2018-04-02 15:13:48', '', null);
INSERT INTO `inc_analysisresult` VALUES ('295', '无', '已生成', '提示胎儿21三体、18三体、13三体均为低风险', 'Yes', 'PN00G00AA0001', '您的胎儿检测结果为低风险，建议遵从医生意见。', '低风险', '2', '低风险', '2', '低风险', '1', 'PN00G00AA0001fx', '演示', '2018-04-03 11:26:43', '演示', '2018-04-03 11:26:07', '', null);

-- ----------------------------
-- Table structure for inc_thamaresult
-- ----------------------------
DROP TABLE IF EXISTS `inc_thamaresult`;
CREATE TABLE `inc_thamaresult` (
  `thamaResultId` int(20) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `missalfa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sudchangealfa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sudchangebelt` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `compreResult` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `reportState` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `inputTime` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `isEmail` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`thamaResultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of inc_thamaresult
-- ----------------------------

-- ----------------------------
-- Table structure for inter_priority
-- ----------------------------
DROP TABLE IF EXISTS `inter_priority`;
CREATE TABLE `inter_priority` (
  `ytyxid` int(20) NOT NULL AUTO_INCREMENT,
  `reviewProblem` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sampleNo` varchar(30) CHARACTER SET utf8 NOT NULL,
  `interpretResult` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `snvResult` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `snvHz` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cnvResult` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `rhResult` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bxyw` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `hyyw` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tlResult` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `snvtlHz` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `snvtlResult` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cnvtlResult` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `rhtlResult` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tlHyyw` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `updateTimes` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `priority` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bzhu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ytyxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of inter_priority
-- ----------------------------

-- ----------------------------
-- Table structure for inter_yxy_priority
-- ----------------------------
DROP TABLE IF EXISTS `inter_yxy_priority`;
CREATE TABLE `inter_yxy_priority` (
  `yxyid` int(30) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(50) DEFAULT '',
  `jdfp` varchar(100) DEFAULT '',
  `bzsm` varchar(200) DEFAULT '',
  `updateTime` varchar(50) DEFAULT '',
  `updateName` varchar(50) DEFAULT '',
  `jdjg` text,
  `jcxm` varchar(50) DEFAULT '',
  `ycbgsj` varchar(50) DEFAULT '',
  `level` varchar(30) DEFAULT '',
  `kbzsm` varchar(30) DEFAULT '',
  PRIMARY KEY (`yxyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inter_yxy_priority
-- ----------------------------

-- ----------------------------
-- Table structure for inter_yy_priority
-- ----------------------------
DROP TABLE IF EXISTS `inter_yy_priority`;
CREATE TABLE `inter_yy_priority` (
  `yyid` int(10) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `checkjy` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `rsNo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `zl` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `updateTimes` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `priority` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `isyy` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bzhu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`yyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of inter_yy_priority
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_changeprojectmanagerzhu
-- ----------------------------
DROP TABLE IF EXISTS `ipm_changeprojectmanagerzhu`;
CREATE TABLE `ipm_changeprojectmanagerzhu` (
  `changeProjectManagerzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `allOverTime` varchar(100) DEFAULT NULL,
  `budget` varchar(200) DEFAULT NULL,
  `delayDays` varchar(200) DEFAULT NULL,
  `examineState` varchar(20) DEFAULT NULL,
  `generalManager` varchar(100) DEFAULT NULL,
  `goingStage` varchar(200) DEFAULT NULL,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `isOver` varchar(200) DEFAULT NULL,
  `isShow` varchar(20) DEFAULT NULL,
  `overDesc` varchar(200) DEFAULT NULL,
  `projectDesc` varchar(100) DEFAULT NULL,
  `projectDescription` longtext,
  `projectManagerzhuId` int(11) DEFAULT NULL,
  `projectName` varchar(100) DEFAULT NULL,
  `realOverTime` varchar(100) DEFAULT NULL,
  `superviseLeader` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `useMoney` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`changeProjectManagerzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_changeprojectmanagerzhu
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_changeprojectstagedetailzhu
-- ----------------------------
DROP TABLE IF EXISTS `ipm_changeprojectstagedetailzhu`;
CREATE TABLE `ipm_changeprojectstagedetailzhu` (
  `changeProjectStageDetailzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `budget` varchar(100) DEFAULT NULL,
  `examineState` varchar(20) DEFAULT NULL,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `isDelay` varchar(100) DEFAULT NULL,
  `isDelete` varchar(30) DEFAULT NULL,
  `isShow` varchar(20) DEFAULT NULL,
  `jinDu` varchar(100) DEFAULT NULL,
  `newProposal` varchar(200) DEFAULT NULL,
  `projectManagerzhuId` int(11) DEFAULT NULL,
  `projectName` varchar(100) DEFAULT NULL,
  `projectStageDetailzhuId` int(11) DEFAULT NULL,
  `realOverTime` varchar(100) DEFAULT NULL,
  `realStartTime` varchar(100) DEFAULT NULL,
  `stageExplain` longtext,
  `stageManager` varchar(100) DEFAULT NULL,
  `stageName` varchar(100) DEFAULT NULL,
  `stageOverTime` varchar(100) DEFAULT NULL,
  `stageStartTime` varchar(100) DEFAULT NULL,
  `stageWorkDetail` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `useMoney` varchar(100) DEFAULT NULL,
  `useMoneyDetail` varchar(100) DEFAULT NULL,
  `warningDays` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`changeProjectStageDetailzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_changeprojectstagedetailzhu
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_completeddelivery
-- ----------------------------
DROP TABLE IF EXISTS `ipm_completeddelivery`;
CREATE TABLE `ipm_completeddelivery` (
  `completedDeliveryId` int(11) NOT NULL AUTO_INCREMENT,
  `examineOpinion` longtext,
  `examineState` varchar(20) DEFAULT NULL,
  `extendDays` int(11) DEFAULT NULL,
  `isDelay` varchar(100) DEFAULT NULL,
  `jinDu` varchar(100) DEFAULT NULL,
  `projectManagerzhuId` int(11) DEFAULT NULL,
  `projectName` varchar(100) DEFAULT NULL,
  `projectStageDetailzhuId` int(11) DEFAULT NULL,
  `resultFile` longtext,
  `stageManager` varchar(100) DEFAULT NULL,
  `stageName` varchar(100) DEFAULT NULL,
  `stageOverTime` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `useMoney` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`completedDeliveryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_completeddelivery
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_emailrecord
-- ----------------------------
DROP TABLE IF EXISTS `ipm_emailrecord`;
CREATE TABLE `ipm_emailrecord` (
  `emailRecordId` int(11) NOT NULL AUTO_INCREMENT,
  `addresseeName` varchar(100) DEFAULT NULL,
  `emailText` varchar(255) DEFAULT NULL,
  `emailTitle` varchar(255) DEFAULT NULL,
  `projectManagerzhuId` int(11) DEFAULT NULL,
  `projectName` varchar(100) DEFAULT NULL,
  `senderName` varchar(100) DEFAULT NULL,
  `stageName` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`emailRecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_emailrecord
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_extensionrequest
-- ----------------------------
DROP TABLE IF EXISTS `ipm_extensionrequest`;
CREATE TABLE `ipm_extensionrequest` (
  `extensionRequestId` int(11) NOT NULL AUTO_INCREMENT,
  `examineOpinion` longtext,
  `examineState` varchar(20) DEFAULT NULL,
  `extensionDays` int(11) DEFAULT NULL,
  `extensionResult` varchar(255) DEFAULT NULL,
  `projectManagerzhuId` int(11) DEFAULT NULL,
  `projectName` varchar(100) DEFAULT NULL,
  `projectStageDetailzhuId` int(11) DEFAULT NULL,
  `stageManager` varchar(100) DEFAULT NULL,
  `stageName` varchar(100) DEFAULT NULL,
  `stageOverTime` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `useMoney` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`extensionRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_extensionrequest
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_leaderproposal
-- ----------------------------
DROP TABLE IF EXISTS `ipm_leaderproposal`;
CREATE TABLE `ipm_leaderproposal` (
  `leaderProposalId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(100) DEFAULT NULL,
  `projectStageDetailzhuId` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `stageName` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`leaderProposalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_leaderproposal
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_projectchange
-- ----------------------------
DROP TABLE IF EXISTS `ipm_projectchange`;
CREATE TABLE `ipm_projectchange` (
  `projectChangeId` int(11) NOT NULL AUTO_INCREMENT,
  `allOverTime` varchar(100) DEFAULT NULL,
  `changeDetail` varchar(255) DEFAULT NULL,
  `examineOpinion` longtext,
  `examineState` varchar(20) DEFAULT NULL,
  `generalManager` varchar(100) DEFAULT NULL,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `projectDesc` varchar(100) DEFAULT NULL,
  `projectManagerzhuId` int(11) DEFAULT NULL,
  `projectName` varchar(100) DEFAULT NULL,
  `superviseLeader` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`projectChangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_projectchange
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_projectmanagerzhu
-- ----------------------------
DROP TABLE IF EXISTS `ipm_projectmanagerzhu`;
CREATE TABLE `ipm_projectmanagerzhu` (
  `projectManagerzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `allOverTime` varchar(100) DEFAULT NULL,
  `budget` varchar(200) DEFAULT NULL,
  `changeState` varchar(20) DEFAULT NULL,
  `delayDays` varchar(200) DEFAULT NULL,
  `generalManager` varchar(100) DEFAULT NULL,
  `goingStage` varchar(200) DEFAULT '',
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `isOver` varchar(200) DEFAULT NULL,
  `overDesc` varchar(200) DEFAULT NULL,
  `projectDesc` varchar(100) DEFAULT NULL,
  `projectDescription` longtext,
  `projectName` varchar(100) DEFAULT NULL,
  `realOverTime` varchar(100) DEFAULT NULL,
  `superviseLeader` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `useMoney` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`projectManagerzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_projectmanagerzhu
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_projectstagedetail
-- ----------------------------
DROP TABLE IF EXISTS `ipm_projectstagedetail`;
CREATE TABLE `ipm_projectstagedetail` (
  `projectStageDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `projectStageDetailzhuId` int(11) DEFAULT NULL,
  `resultDetail` varchar(200) DEFAULT NULL,
  `resultFile` longtext,
  `stageName` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `useMoney` varchar(100) DEFAULT NULL,
  `useMoneyDetail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`projectStageDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_projectstagedetail
-- ----------------------------

-- ----------------------------
-- Table structure for ipm_projectstagedetailzhu
-- ----------------------------
DROP TABLE IF EXISTS `ipm_projectstagedetailzhu`;
CREATE TABLE `ipm_projectstagedetailzhu` (
  `projectStageDetailzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `budget` varchar(100) DEFAULT NULL,
  `isDelay` varchar(100) DEFAULT NULL,
  `isDelete` varchar(30) DEFAULT NULL,
  `isOver` varchar(100) DEFAULT NULL,
  `jinDu` varchar(100) DEFAULT NULL,
  `newProposal` varchar(200) DEFAULT NULL,
  `projectManagerzhuId` int(11) DEFAULT NULL,
  `projectName` varchar(100) DEFAULT NULL,
  `realOverTime` varchar(100) DEFAULT NULL,
  `realStartTime` varchar(100) DEFAULT NULL,
  `stageExplain` longtext,
  `stageManager` varchar(100) DEFAULT NULL,
  `stageName` varchar(100) DEFAULT '',
  `stageOverTime` varchar(100) DEFAULT NULL,
  `stageStartTime` varchar(100) DEFAULT NULL,
  `stageWorkDetail` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `useMoney` varchar(100) DEFAULT NULL,
  `warningDays` varchar(100) DEFAULT NULL,
  `projectOverStare` varchar(100) DEFAULT '',
  PRIMARY KEY (`projectStageDetailzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipm_projectstagedetailzhu
-- ----------------------------

-- ----------------------------
-- Table structure for jsyinfo
-- ----------------------------
DROP TABLE IF EXISTS `jsyinfo`;
CREATE TABLE `jsyinfo` (
  `id` int(100) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `province` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `isQuit` varchar(150) DEFAULT NULL,
  `headimgurl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jsyinfo
-- ----------------------------
INSERT INTO `jsyinfo` VALUES ('0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000023', 'oeKeMwVnpjh2vWLEBeFpuCeKma5E', '2', '', '%E5%8C%97%E4%BA%AC', '%E4%B8%AD%E5%9B%BD', '%E9%92%A2%E7%82%AE%E7%89%88%E5%87%B9%E5%87%B8%E6%9B%BC', '15101093727', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epsnm7iba6I2E2mRRpFic0AJ38B1Tibfr3aIlyl48icsukvsEJEicwQLL5eVnwiafu7PYx6aicokXCBZSrJQ/132');
INSERT INTO `jsyinfo` VALUES ('0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024', 'oeKeMwam_whQsmmgEnpsNxWfszbA', '2', '', '', '%E5%8F%A4%E5%B7%B4', '%E9%91%AB%E5%B0%A7', '18800100830', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI9w26aKLKkU5xDtLu2Srq6icNxO8tWDibicHIrzmWOtuQsEnpRlsoNfpXMzbrCJ2HaOvGOiaY1QJQufQ/132');
INSERT INTO `jsyinfo` VALUES ('0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000025', 'oeKeMwfj9f22M2nWpGvv2Neorjfs', '1', '%E6%98%8C%E5%B9%B3', '%E5%8C%97%E4%BA%AC', '%E4%B8%AD%E5%9B%BD', '%E5%8C%97%E4%BA%AC%E5%8C%97%E4%BA%AC', '13011891948', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJcZh2daicchEq15eSB5hCIvkBKicwo4nBmviafQlfth4EeXCibUniarMuNhgEBH32dTbbPYSibeMZ9Uibzg/132');

-- ----------------------------
-- Table structure for jy_tumoursalescontacts
-- ----------------------------
DROP TABLE IF EXISTS `jy_tumoursalescontacts`;
CREATE TABLE `jy_tumoursalescontacts` (
  `salescontactsId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `cityHead` varchar(30) DEFAULT NULL,
  `internalOrno` varchar(30) DEFAULT NULL,
  `isQuit` varchar(30) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `saleEmail` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`salescontactsId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jy_tumoursalescontacts
-- ----------------------------
INSERT INTO `jy_tumoursalescontacts` VALUES ('2', '河北省邢台市121212号', '办事处', '总部2', '王鑫尧', '王鑫尧', null, '否', '15101093727', '1147942664@qq.com', '张春可', '张春可', '2018-03-22 14:57:24');
INSERT INTO `jy_tumoursalescontacts` VALUES ('3', '北京市海淀区', '直营', '北京市', '顾文杰', '顾文杰', null, '否', '15001116947', '15001116947@qq.com', '顾文杰', '张春可', '2016-12-23 14:03:16');
INSERT INTO `jy_tumoursalescontacts` VALUES ('4', '黑龙江哈尔滨', '代理', '黑龙江', '张春可', '张春可', null, '否', '18600900461', '18600900461@qq.com', '周晓锋', '张春可', '2017-09-14 14:34:08');
INSERT INTO `jy_tumoursalescontacts` VALUES ('5', '台湾省大放大fa肺', '直营', '北京市', '聂梦肖', '聂梦肖', null, '否', '18701555735', '18701555735@qq.com', '聂梦肖', '张春可', '2017-09-08 17:05:33');
INSERT INTO `jy_tumoursalescontacts` VALUES ('6', '北京市海淀区四季青', '办事处', '全国', '吕总', '杨冀杰;彭寒冰;韩光;宁莎;索娜娜', null, '否', '13011891948', '18032238995@qq.com', '黄金龙', '黄金龙', '2016-12-23 14:24:48');
INSERT INTO `jy_tumoursalescontacts` VALUES ('7', '重庆师大发fafa肺', '直营', '重庆', '张春可', '张春可', null, '否', '18423515553', '2232@qq.com', '陈凯', '张春可', '2018-01-04 13:32:58');
INSERT INTO `jy_tumoursalescontacts` VALUES ('8', '北京市海淀区四季青2323号', '直营', '北京市', '吕总', '吕总', null, '否', '13701331819', '3434343@qq.com', '吕总', '张春可', '2016-12-23 14:02:53');
INSERT INTO `jy_tumoursalescontacts` VALUES ('9', '北京市海淀区', '直营', '北京市', '唐宇', '唐宇', null, '否', '13269218947', '232323@qq.com', '李箐', '张春可', '2016-12-23 14:02:49');
INSERT INTO `jy_tumoursalescontacts` VALUES ('10', '北京市海淀区', '直营', '北京市', '唐宇', '唐宇', null, '否', '13439045469', '3232@qqq.com', '唐宇', '张春可', '2016-12-23 14:02:45');
INSERT INTO `jy_tumoursalescontacts` VALUES ('11', '北京市海淀区四季青', '直营', '北京市', '吕总', '吕总', null, '否', '15910490824', '2323@qq.com', '宁莎', '张春可', '2016-12-23 14:02:34');
INSERT INTO `jy_tumoursalescontacts` VALUES ('12', '北京市海淀区四季青', '直营', '北京市', '吕总', '吕总', null, '否', '18600112066', '121212@qq.com', '韩光', '张春可', '2016-12-23 14:02:29');
INSERT INTO `jy_tumoursalescontacts` VALUES ('13', '北京市海淀区', '办事处', '北京市', '吕总', '吕总', null, '否', '13911265075', '2323@qq.com', '彭寒冰', '张春可', '2016-12-23 14:02:24');
INSERT INTO `jy_tumoursalescontacts` VALUES ('14', '北京市海淀区', '代理', '北京市', '吕总', '吕总', null, '否', '15901008025', '23232@qq.com', '杨冀杰', '张春可', '2016-12-23 14:02:15');
INSERT INTO `jy_tumoursalescontacts` VALUES ('15', '北京市', '直营', '北京市', '吕总', '吕总', null, '否', '18910643890', '123123@qq.com', '索娜娜', '张春可', '2016-12-23 14:02:10');
INSERT INTO `jy_tumoursalescontacts` VALUES ('16', '北京市海淀区', '直营', '北京市', '黄金龙', '黄金龙', null, '否', '18800100830', '232323@qq.com', '王鑫尧', '周晓锋', '2017-10-19 11:14:57');
INSERT INTO `jy_tumoursalescontacts` VALUES ('40', '吉林', '直营', '东北', '周晓锋', '周晓锋', null, '否', '18701319883', '1147942664@qq.com', '范秋月', '周晓锋', '2017-10-19 11:00:41');
INSERT INTO `jy_tumoursalescontacts` VALUES ('41', '北京', '直营', '北京', '黄金龙', '黄金龙', null, '否', '18501146663', 'weiweifu@scisoon.cn', '付微微', '黄金龙', '2018-03-14 18:46:02');
INSERT INTO `jy_tumoursalescontacts` VALUES ('42', '北京市海淀区四季青', '直营', '北京', '张春可', '张春可', null, '否', '13439124178', 'dajiama@scisoon.cn', '马达佳', '张春可', '2018-03-20 15:09:43');

-- ----------------------------
-- Table structure for jy_tumoursendsample
-- ----------------------------
DROP TABLE IF EXISTS `jy_tumoursendsample`;
CREATE TABLE `jy_tumoursendsample` (
  `sendSampleId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `cardAfterFour` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `checkProject` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `cityHead` varchar(30) DEFAULT NULL,
  `collectionDate` varchar(30) DEFAULT NULL,
  `creditCardNum` varchar(30) DEFAULT NULL,
  `expressCompany` varchar(30) DEFAULT NULL,
  `expressNumber` varchar(100) DEFAULT NULL,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `invoiceNumber` varchar(30) DEFAULT NULL,
  `invoiceTitle` varchar(30) DEFAULT NULL,
  `isHaveInvoice` varchar(30) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `outState` varchar(30) DEFAULT NULL,
  `patientName` varchar(30) DEFAULT NULL,
  `paymentBy` varchar(30) DEFAULT NULL,
  `remark` text,
  `reportRecipient` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `sjrdh` varchar(100) DEFAULT NULL,
  `sjrxm` varchar(100) DEFAULT NULL,
  `checkRoom` varchar(30) DEFAULT NULL,
  `posNumber` varchar(30) DEFAULT NULL,
  `transferType` varchar(30) DEFAULT NULL,
  `settlementBy` varchar(30) DEFAULT NULL,
  `settlement` varchar(30) DEFAULT NULL,
  `settlementName` varchar(30) DEFAULT NULL,
  `settlementTime` varchar(30) DEFAULT NULL,
  `haveCopies` varchar(30) DEFAULT NULL,
  `template` varchar(30) DEFAULT NULL,
  `pathologic` varchar(30) DEFAULT NULL,
  `pathologicTwo` varchar(255) DEFAULT NULL,
  `lyqg` varchar(30) DEFAULT NULL,
  `lyqgpd` varchar(30) DEFAULT NULL,
  `helpPath` longtext,
  PRIMARY KEY (`sendSampleId`),
  KEY `sampleNo` (`sampleNo`),
  KEY `index_tumourSendSampleID` (`sendSampleId`) USING BTREE,
  KEY `count_sampleNo` (`sampleNo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2963 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jy_tumoursendsample
-- ----------------------------
INSERT INTO `jy_tumoursendsample` VALUES ('2921', null, '办事处', null, '北京医院', '优替--乳腺癌21基因', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '35688', '张春可', '2018-03-22 09:44:46', null, null, null, '15101093727', '是', '肿瘤', null, '微信➕刷卡', '销售', '张春可', 'NE00G00NJ0001', '组织+血液', '张春可', '2018-03-28 16:41:13', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '肺癌', '小细胞肺癌', '原病发灶', '肺', 'upload/helppath/2018-03-22/Pm00g00zl0001-sick-d35182de-65ae-4dbe-b9ce-0e99cd2edb2f.jpg');
INSERT INTO `jy_tumoursendsample` VALUES ('2922', null, '办事处', null, '北京医院', '优替--MSI（肿瘤细胞微卫星不稳定性检测）', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '4345', '张春可', '2018-03-22 10:00:21', null, null, null, '15101093727', '否', '肿瘤2', null, '', '销售', '张春可', 'PM00G00ZL0002', '组织+血液', '张春可', '2018-03-22 10:00:21', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '各地', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2923', null, '办事处', null, '北京医院', '优替--化疗用药指导', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '5808', '张春可', '2018-03-22 10:02:23', null, null, null, '15101093727', '否', '肿瘤', null, '', '销售', '张春可', 'PM00G00ZL0003', '组织+血液', '张春可', '2018-03-22 10:02:23', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '肺', 'upload/helppath/2018-03-22/PM00G00ZL0003-sick-d0cf5a52-6025-478e-b2cc-0e2ba0a25342.jpg');
INSERT INTO `jy_tumoursendsample` VALUES ('2924', null, '办事处', null, '北京医院', '优替--单项癌种（乳腺癌）', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '4646494', '张春可', '2018-03-22 10:07:15', null, null, null, '15101093727', '否', '民意', null, '', '销售', '张春可', 'PM00G00ZL0004', '组织+血液', '张春可', '2018-03-22 10:11:55', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '乳腺癌', 'LuminaA', '原病发灶', '送你', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2925', null, '办事处', null, '北京医院', '优替--乳腺癌21基因', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '649849', '张春可', '2018-03-22 10:35:06', null, null, null, '15101093727', '否', '你', null, '', '销售', '张春可', 'PM00G00ZL0006', '全血', '张春可', '2018-03-22 10:35:06', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '佛法', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2926', null, '办事处', null, '北京医院', '优替--PD-L1检测', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '484667', '张春可', '2018-03-22 10:49:39', null, null, null, '15101093727', '否', '七', null, '', '销售', '张春可', 'PM00G00ZL0007', '组织+血液', '张春可', '2018-03-22 10:49:39', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '送', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2927', null, '办事处', null, '北京医院', '优替--MSI（肿瘤细胞微卫星不稳定性检测）', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '616464', '张春可', '2018-03-22 10:52:24', null, null, null, '15101093727', '否', '八', null, '', '销售', '张春可', 'PM00G00ZL0008', '组织+血液', '张春可', '2018-03-22 10:53:43', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '你们', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2928', null, '办事处', null, '北京医院', '优替--PD-L1检测', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '199494', '张春可', '2018-03-22 10:57:22', null, null, null, '15101093727', '否', '九', null, '', '受检者', '张春可', 'PM00G00ZL0009', '组织+血液', '张春可', '2018-03-23 13:13:05', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '淋巴结转移处', '十一', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2929', null, '办事处', null, '北京医院', '优替--MSI（肿瘤细胞微卫星不稳定性检测）', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '194661', '张春可', '2018-03-22 11:04:48', null, null, null, '15101093727', '否', '十161643', null, '', '销售', '张春可', 'PM00G00ZL0010', '组织+血液', '张春可', '2018-03-22 11:36:47', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '肺', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2930', null, '办事处', null, '北京医院', '优替--PD-L1检测', '河北省邢台市', '王鑫尧', '王鑫尧', '2018-03-22', null, '顺丰', '139487', '张春可', '2018-03-22 11:16:19', null, null, null, '15101093727', '否', '十一2', null, '', '销售', '张春可', 'PM00G00ZL0011', '组织+血液', '张春可', '2018-03-22 11:21:51', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '功能', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2931', null, '直营', null, '山东菏泽医院', '优逸--错配修复基因（MMR）', '北京市', '黄金龙', '黄金龙', '2018-03-23', null, '顺丰', '21351531315313', '王鑫尧', '2018-03-23 11:31:40', null, null, null, '18800100830', '否', '测试收据1', null, '', '销售', '王鑫尧', 'HA00123485698', 'DNA', '王鑫尧', '2018-03-23 11:31:50', null, null, '不给粉红色', null, null, null, '未结算', null, null, '否', '', '食管癌', '', '原病发灶', '', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2932', null, '直营', null, '山东菏泽医院', '优逸--胃癌单项', '北京市', '黄金龙', '黄金龙', '2018-03-23', null, '顺丰', '524524242', '王鑫尧', '2018-03-23 11:32:53', null, null, null, '18800100830', '否', '个汇顶', null, '', '销售', '王鑫尧', 'HA00456874566', '全血', '王鑫尧', '2018-03-23 11:32:53', null, null, '那个是', null, null, null, '未结算', null, null, '否', '', '卵巢癌', '低级别浆液性腺癌', '远处转移处', '', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2933', null, '办事处', null, '北京医院', '优替--MSI（肿瘤细胞微卫星不稳定性检测）', '总部2', '王鑫尧', '王鑫尧', '2018-03-23', null, '顺丰', '136454', '张春可', '2018-03-23 11:41:39', null, null, null, '15101093727', '否', '晓峰3', null, '', '销售', '张春可', 'PN00G00ZF0003', '组织+血液', '张春可', '2018-03-23 11:41:39', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '肺', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2934', null, '办事处', null, '北京医院', '优替--PD-L1检测', '总部2', '王鑫尧', '王鑫尧', '2018-03-23', null, '顺丰', '649787', '张春可', '2018-03-23 11:42:59', null, null, null, '15101093727', '否', '晓峰4', null, '', '销售', '张春可', 'PN00G00ZF0004', '组织+血液', '张春可', '2018-03-23 11:42:59', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '肺', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2935', null, '办事处', null, '北京医院', '优旭--高级版（549基因）', '总部2', '王鑫尧', '王鑫尧', '2018-03-23', null, '顺丰', '23232323', '张春可', '2018-03-23 13:54:32', null, null, null, '15101093727', '是', '优旭下单', null, '', '销售', '张春可', 'PN00G00YX0001', '血液', '张春可', '2018-03-23 14:38:59', null, null, '未', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '肺', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2936', null, '办事处', null, '北京医院', '优旭--单项癌种（胃癌）', '总部2', '王鑫尧', '王鑫尧', '2018-03-23', null, '顺丰', '23232323', '张春可', '2018-03-23 13:54:43', null, null, null, '15101093727', '是', '优旭2', null, '', '销售', '张春可', 'PN00G00YX0002', '血液', '张春可', '2018-03-23 14:39:05', null, null, '未', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '肺', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2937', null, '办事处', null, '北京医院', '优旭--单项癌种（胃癌）', '总部2', '王鑫尧', '王鑫尧', '2018-03-23', null, '顺丰', '23232323', '张春可', '2018-03-23 13:55:08', null, null, null, '15101093727', '是', '优旭3', null, '', '销售', '张春可', 'PN00G00YX0003', '血液', '张春可', '2018-03-23 14:39:39', null, null, '未', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '肺', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2938', null, '办事处', null, '北京医院', '优旭--单项癌种（卵巢癌）', '总部2', '王鑫尧', '王鑫尧', '2018-03-23', null, '顺丰', '23232323', '张春可', '2018-03-23 13:55:20', null, null, null, '15101093727', '是', '4', null, '', '销售', '张春可', 'PN00G00YX0004', '血液', '张春可', '2018-03-23 14:39:33', null, null, '未', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '肺', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2939', null, '办事处', null, '北京医院', '优旭--单项癌种（卵巢癌）', '总部2', '王鑫尧', '王鑫尧', '2018-03-23', null, '顺丰', '23232323', '张春可', '2018-03-23 13:55:40', null, null, null, '15101093727', '是', '优旭', null, '', '销售', '张春可', 'PN00G00YX0005', '血液', '张春可', '2018-03-23 14:39:47', null, null, '未', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '肺', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2940', null, '办事处', null, '北京医院', '优替--MSI（肿瘤细胞微卫星不稳定性检测）', '总部2', '王鑫尧', '王鑫尧', '2018-03-23', null, '顺丰', '16944', '张春可', '2018-03-23 14:32:57', null, null, null, '15101093727', '否', '破', null, '', '受检者', '张春可', 'PN00G00GG0001', '组织+血液', '张春可', '2018-03-23 14:34:44', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '得', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2941', null, '代理', null, '北京医院', '优旭--CTC', '黑龙江', '张春可', '张春可', '2018-03-23', null, '顺丰', '2323', '周晓锋', '2018-03-23 14:48:08', null, null, null, '18600900461', '是', '6', null, '', '销售', '周晓锋', 'PN00G00YX0006', '血液', '张春可', '2018-03-23 14:50:10', null, null, '23', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '但是我', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2942', null, '代理', null, '北京医院', '优旭--CTC', '黑龙江', '张春可', '张春可', '2018-03-23', null, '顺丰', '2323', '周晓锋', '2018-03-23 14:48:19', null, null, null, '18600900461', '是', '7', null, '', '销售', '周晓锋', 'PN00G00YX0007', '血液', '张春可', '2018-03-23 14:50:13', null, null, '23', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '但是我', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2943', null, '代理', null, '54545', '优旭--CTC+靶药', '黑龙江', '张春可', '张春可', '2018-03-23', null, '顺丰', '2323', '周晓锋', '2018-03-23 14:48:42', null, null, null, '18600900461', '是', '8', null, '', '销售', '周晓锋', 'PN00G00YX0008', '血液', '张春可', '2018-03-23 14:50:17', null, null, '23', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '但是我', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2944', null, '代理', null, '打发', '优旭--CTC+靶药', '黑龙江', '张春可', '张春可', '2018-03-23', null, '顺丰', '2323', '周晓锋', '2018-03-23 14:48:48', null, null, null, '18600900461', '是', '9', null, '', '销售', '周晓锋', 'PN00G00YX0009', '血液', '张春可', '2018-03-23 14:50:19', null, null, '23', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '但是我', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2945', null, '', null, '北京医院', '优替--高级版（549基因）', '', '', '', '2018-03-28', null, '顺丰', '232323', '演示', '2018-03-28 11:56:21', null, null, null, '', '是', '肿瘤', null, '', '销售', '演示', 'PM00G00MM0002', '血液', '管理员', '2018-03-28 17:30:19', null, null, '科室', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '肺', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2946', null, '办事处', null, '北京医院', '优替--高级版（549基因）', '总部2', '王鑫尧', '王鑫尧', '2018-03-28', null, '顺丰', '2323', '张春可', '2018-03-28 17:32:30', null, null, null, '15101093727', '是', '23', null, '', '销售', '张春可', 'PM00G00MM0003', '血液', '张春可', '2018-03-28 17:33:09', null, null, '3', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '23', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2947', null, '办事处', null, '北京医院', '优替--高级版（549基因）', '总部2', '王鑫尧', '王鑫尧', '2018-03-28', null, '顺丰', '2323', '张春可', '2018-03-28 17:32:37', null, null, null, '15101093727', '是', '4', null, '', '销售', '张春可', 'PM00G00MM0004', '血液', '张春可', '2018-03-28 17:33:15', null, null, '3', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '23', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2948', null, '办事处', null, '北京医院', '优替--高级版（549基因）', '总部2', '王鑫尧', '王鑫尧', '2018-03-28', null, '顺丰', '1223343434', '张春可', '2018-03-28 17:34:39', null, null, null, '15101093727', '是', '5', null, '', '销售', '张春可', 'PM00G00MM0005', '血液', '张春可', '2018-03-28 18:06:39', null, null, '23', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '34', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2949', null, '办事处', null, '北京医院', '优替--高级版（549基因）', '总部2', '王鑫尧', '王鑫尧', '2018-03-28', null, '顺丰', '1223343434', '张春可', '2018-03-28 17:34:44', null, null, null, '15101093727', '是', '6', null, '', '销售', '张春可', 'PM00G00MM0006', '血液', '张春可', '2018-03-28 18:07:27', null, null, '23', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '34', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2950', null, '办事处', null, '北京医院', '优替--高级版（549基因）', '总部2', '王鑫尧', '王鑫尧', '2018-03-28', null, '顺丰', '1223343434', '张春可', '2018-03-28 17:34:49', null, null, null, '15101093727', '是', '7', null, '', '销售', '张春可', 'PM00G00MM0007', '血液', '张春可', '2018-03-28 18:07:53', null, null, '23', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '34', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2951', null, '办事处', null, '北京医院', '优替--高级版（549基因）', '总部2', '王鑫尧', '王鑫尧', '2018-03-28', null, '顺丰', '1223343434', '张春可', '2018-03-28 17:34:57', null, null, null, '15101093727', '是', '8', null, '', '销售', '张春可', 'PM00G00MM0008', '血液', '张春可', '2018-03-28 18:08:46', null, null, '23', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '34', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2952', null, '办事处', null, '北京医院', '优替--高级版（549基因）', '总部2', '王鑫尧', '王鑫尧', '2018-03-28', null, '顺丰', '41546464', '张春可', '2018-03-28 18:44:21', null, null, null, '15101093727', '是', '小红', null, '', '销售', '张春可', 'PM00G18AP0120', '血液', '张春可', '2018-03-28 18:53:12', null, null, '4343', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', null, '原病发灶', '肺', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2953', null, '办事处', null, '北京医院', '优替--单项癌种（肺癌）', '总部2', '王鑫尧', '王鑫尧', '2018-03-28', null, '顺丰', '44549646', '张春可', '2018-03-28 18:55:32', null, null, null, '15101093727', '是', '小磊', null, '', '销售', '张春可', 'PM00G18AB0044', '血液', '张春可', '2018-03-29 11:54:34', null, null, '34', null, null, null, '未结算', '', '', '否', '正常', '暂无诊断结果', '', '原病发灶', '肺', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2954', null, '直营', null, '山东菏泽医院', '优逸--BRCA1/2', '北京市', '黄金龙', '黄金龙', '2018-03-29', null, '顺丰', '4656465464564', '王鑫尧', '2018-03-29 13:36:35', null, null, null, '18800100830', '否', '测现金22', null, '', '销售', '王鑫尧', 'NT00569541236', '唾液', '王鑫尧', '2018-03-29 13:51:42', null, null, '高大上', null, null, null, '未结算', null, null, '否', '', '其他', '不舒服', '远处转移处', '', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2955', null, '直营', null, '山东菏泽医院', '优逸--多发性神经纤维癌单项', '北京市', '黄金龙', '黄金龙', '2018-03-29', null, '顺丰', '542636236', '王鑫尧', '2018-03-29 13:40:51', null, null, null, '18800100830', '否', 'vad', null, '', '销售', '王鑫尧', 'HD00269854123', '全血', '王鑫尧', '2018-03-29 13:50:43', null, null, 'bsf', null, null, null, '未结算', null, null, '否', '', '黑色素瘤', '', '原病发灶', '', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2956', null, '直营', null, '山东菏泽医院', '优逸--肾癌单项', '北京市', '黄金龙', '黄金龙', '2018-03-30', null, '顺丰', '5245425252', '王鑫尧', '2018-03-30 15:32:30', null, null, null, '18800100830', '否', 'bfs', null, '', '销售', '王鑫尧', 'HA45215698746', '血浆', '王鑫尧', '2018-03-30 15:32:30', null, null, '发的', null, null, null, '未结算', null, null, '否', '', '黑色素瘤', '', '原病发灶', '', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2957', null, '办事处', null, '北京医院', '优替--MSI（肿瘤细胞微卫星不稳定性检测）', '总部2', '王鑫尧', '王鑫尧', '2018-04-03', null, '顺丰', '16645484', '张春可', '2018-04-03 16:11:52', null, null, null, '15101093727', '否', '得', null, '', '销售', '张春可', 'PM00G00HH0001', '组织+血液', '张春可', '2018-04-03 16:11:52', null, null, '科室', null, null, null, '未结算', null, null, '否', '正常', '暂无诊断结果', '', '原病发灶', '肺', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2958', null, '', null, '1234', '优替--化疗用药指导', '', '', '', '2018-04-03', null, '顺丰', '2276', '张娟', '2018-04-03 16:30:13', null, null, null, '', '否', '李五六', null, '', '销售', '张娟', 'PM00G17AL0075', '血液', '张娟', '2018-04-04 15:57:58', null, null, 'dfe', null, null, null, '未结算', '', '', '否', '正常', '肺癌', '肺腺癌', '', '', '');
INSERT INTO `jy_tumoursendsample` VALUES ('2959', null, '直营', null, '山东菏泽医院', '优逸--甲状腺癌单项', '北京市', '黄金龙', '黄金龙', '2018-04-04', null, '顺丰', '6573542535366', '王鑫尧', '2018-04-04 11:44:30', null, null, null, '18800100830', '否', '层的', null, '', '销售', '王鑫尧', 'HN00157896543', '胸腹水', '王鑫尧', '2018-04-04 11:44:30', null, null, '个不是开', null, null, null, '未结算', null, null, '否', '', '胃癌', '胃混合型癌', '原病发灶', '', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2960', null, '直营', null, '山东菏泽医院', '优逸--视网膜母细胞癌单项', '北京市', '黄金龙', '黄金龙', '2018-04-04', null, '顺丰', '636363463636', '王鑫尧', '2018-04-04 11:47:44', null, null, null, '18800100830', '否', '好多了', null, '', '销售', '王鑫尧', 'HN00157896543R', 'DNA', '王鑫尧', '2018-04-04 11:47:44', null, null, '好的', null, null, null, '未结算', null, null, '否', '', 'GIST（胃肠道间质瘤）', '胃间质瘤', '远处转移处', '', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2961', null, '直营', null, '山东菏泽医院', '优睿--个性化微残检测(定制)', '北京市', '黄金龙', '黄金龙', '2018-04-08', null, '顺丰', '837474647728', '王鑫尧', '2018-04-08 10:19:49', null, null, null, '18800100830', '否', '测试暂存样本', null, '', '销售', '王鑫尧', 'HK00737466275', '血浆', '王鑫尧', '2018-04-08 10:19:49', null, null, '八点', null, null, null, '未结算', null, null, '否', '', '暂无诊断结果', '', '淋巴结转移处', '', null);
INSERT INTO `jy_tumoursendsample` VALUES ('2962', null, '直营', null, '山东菏泽医院', '优睿--染色体异常检测', '北京市', '黄金龙', '黄金龙', '2018-04-08', null, '顺丰', '83747362663', '王鑫尧', '2018-04-08 10:50:50', null, null, null, '18800100830', '否', '好的', null, '', '销售', '王鑫尧', 'GK00837561975', '全血', '王鑫尧', '2018-04-08 10:50:50', null, null, '都能能否', null, null, null, '未结算', null, null, '否', '', '暂无诊断结果', '', '淋巴结转移处', '', null);

-- ----------------------------
-- Table structure for jy_tumoursendsamplehospital
-- ----------------------------
DROP TABLE IF EXISTS `jy_tumoursendsamplehospital`;
CREATE TABLE `jy_tumoursendsamplehospital` (
  `sendSampleHospitalId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`sendSampleHospitalId`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jy_tumoursendsamplehospital
-- ----------------------------
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('452', null, '北京医院', '张春可', '张春可', '2018-03-22 09:44:58');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('453', null, '山东菏泽医院', '王鑫尧', '王鑫尧', '2018-03-23 11:31:40');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('454', null, null, '张春可', '张春可', '2018-03-23 13:54:33');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('455', null, null, '张春可', '张春可', '2018-03-23 13:54:43');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('456', null, null, '张春可', '张春可', '2018-03-23 13:55:08');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('457', null, null, '张春可', '张春可', '2018-03-23 13:55:20');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('458', null, null, '张春可', '张春可', '2018-03-23 13:55:40');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('459', null, null, '周晓锋', '周晓锋', '2018-03-23 14:48:09');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('460', null, null, '周晓锋', '周晓锋', '2018-03-23 14:48:19');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('461', null, '54545', '周晓锋', '周晓锋', '2018-03-23 14:48:42');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('462', null, null, '周晓锋', '周晓锋', '2018-03-23 14:48:42');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('463', null, '打发', '周晓锋', '周晓锋', '2018-03-23 14:48:48');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('464', null, null, '周晓锋', '周晓锋', '2018-03-23 14:48:48');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('465', null, null, '演示', '演示', '2018-03-28 11:56:21');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('466', null, null, '张春可', '张春可', '2018-03-28 17:32:30');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('467', null, null, '张春可', '张春可', '2018-03-28 17:32:37');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('468', null, null, '张春可', '张春可', '2018-03-28 17:34:39');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('469', null, null, '张春可', '张春可', '2018-03-28 17:34:44');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('470', null, null, '张春可', '张春可', '2018-03-28 17:34:49');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('471', null, null, '张春可', '张春可', '2018-03-28 17:34:57');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('472', null, null, '周晓锋', '周晓锋', '2018-03-28 17:36:38');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('473', null, null, '周晓锋', '周晓锋', '2018-03-28 17:36:42');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('474', null, null, '周晓锋', '周晓锋', '2018-03-28 17:36:46');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('475', null, null, '周晓锋', '周晓锋', '2018-03-28 17:36:51');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('476', null, null, '张春可', '张春可', '2018-03-28 18:44:21');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('477', null, null, '张春可', '张春可', '2018-03-28 18:55:32');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('478', null, '1234', '张娟', '张娟', '2018-04-03 16:30:13');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('479', null, null, '张娟', '张娟', '2018-04-03 16:30:13');
INSERT INTO `jy_tumoursendsamplehospital` VALUES ('480', null, null, '张娟', '张娟', '2018-04-04 15:57:58');

-- ----------------------------
-- Table structure for kf_analysisresult
-- ----------------------------
DROP TABLE IF EXISTS `kf_analysisresult`;
CREATE TABLE `kf_analysisresult` (
  `anaResultId` int(11) NOT NULL AUTO_INCREMENT,
  `anaOtherSuggest` varchar(100) DEFAULT NULL,
  `anaResultDes` varchar(100) DEFAULT NULL,
  `anaResultState` varchar(30) DEFAULT NULL,
  `anaSampleNo` varchar(30) NOT NULL,
  `anaSpecialResult` varchar(100) DEFAULT NULL,
  `anaT13Result` varchar(30) DEFAULT NULL,
  `anaT13Value` double DEFAULT NULL,
  `anaT18Result` varchar(30) DEFAULT NULL,
  `anaT18Value` double DEFAULT NULL,
  `anaT21Result` varchar(30) DEFAULT NULL,
  `anaT21Value` double DEFAULT NULL,
  `analysisResultNo` varchar(100) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`anaResultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_analysisresult
-- ----------------------------

-- ----------------------------
-- Table structure for kf_partonezhu
-- ----------------------------
DROP TABLE IF EXISTS `kf_partonezhu`;
CREATE TABLE `kf_partonezhu` (
  `partonezhuId` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(30) DEFAULT NULL,
  `babySituation` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `detectionResult` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `overTime` varchar(30) DEFAULT NULL,
  `planVisitTime` varchar(30) DEFAULT NULL,
  `reportIssueTime` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `supplementType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `visitNum` varchar(30) DEFAULT NULL,
  `visitType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`partonezhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_partonezhu
-- ----------------------------

-- ----------------------------
-- Table structure for kf_partonezi
-- ----------------------------
DROP TABLE IF EXISTS `kf_partonezi`;
CREATE TABLE `kf_partonezi` (
  `partoneziId` int(11) NOT NULL AUTO_INCREMENT,
  `babyExamination` varchar(30) DEFAULT NULL,
  `bodyLength` varchar(30) DEFAULT NULL,
  `checkPlace` varchar(30) DEFAULT NULL,
  `checkResult` varchar(100) DEFAULT NULL,
  `checkResultother` varchar(50) DEFAULT NULL,
  `childSex` varchar(30) DEFAULT NULL,
  `concurrentMessage` varchar(255) DEFAULT NULL,
  `deliveryBy` varchar(30) DEFAULT NULL,
  `deliveryDate` varchar(30) DEFAULT NULL,
  `deliveryHospital` varchar(30) DEFAULT NULL,
  `deliveryResult` varchar(255) DEFAULT NULL,
  `deliveryweek` varchar(30) DEFAULT NULL,
  `estimateReturnDate` varchar(30) DEFAULT NULL,
  `examination` varchar(255) DEFAULT NULL,
  `examinationHospital` varchar(30) DEFAULT NULL,
  `examinationMessage` varchar(255) DEFAULT NULL,
  `gestationResult` varchar(255) DEFAULT NULL,
  `hearScreening` varchar(30) DEFAULT NULL,
  `hearScreeningResult` varchar(255) DEFAULT NULL,
  `heelBlood` varchar(30) DEFAULT NULL,
  `heelBloodResult` varchar(255) DEFAULT NULL,
  `invasiveResults` varchar(30) DEFAULT NULL,
  `isConcurrent` varchar(30) DEFAULT NULL,
  `isSatisfied` varchar(50) DEFAULT NULL,
  `isVisit` varchar(30) DEFAULT NULL,
  `isWearNavel` varchar(255) DEFAULT NULL,
  `knowChannel` varchar(30) DEFAULT NULL,
  `knowChannelOther` varchar(255) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `proposal` varchar(200) DEFAULT NULL,
  `rePerson` varchar(50) DEFAULT NULL,
  `realReturnDate` varchar(30) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `reportNum` varchar(50) DEFAULT NULL,
  `saleNum` varchar(50) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `secondReturnDate` varchar(30) DEFAULT NULL,
  `stopWeeks` varchar(30) DEFAULT NULL,
  `treatmentHospital` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `visitResult` varchar(255) DEFAULT NULL,
  `wearNavelResult` varchar(50) DEFAULT NULL,
  `weight` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`partoneziId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_partonezi
-- ----------------------------

-- ----------------------------
-- Table structure for kf_parttwozhu
-- ----------------------------
DROP TABLE IF EXISTS `kf_parttwozhu`;
CREATE TABLE `kf_parttwozhu` (
  `parttwozhuId` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(30) DEFAULT NULL,
  `analysisResult` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `diagnosisResult` varchar(30) DEFAULT NULL,
  `isDiagnosis` varchar(30) DEFAULT NULL,
  `isVisitFinish` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `overVisitTime` varchar(30) DEFAULT NULL,
  `patientType` varchar(30) DEFAULT NULL,
  `planVisitTime` varchar(30) DEFAULT NULL,
  `reportIssueTime` varchar(30) DEFAULT NULL,
  `reportReceipt` varchar(30) DEFAULT NULL,
  `resultIsRight` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `suppleReportType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `visitNum` varchar(30) DEFAULT NULL,
  `visitType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`parttwozhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_parttwozhu
-- ----------------------------

-- ----------------------------
-- Table structure for kf_supplementreport
-- ----------------------------
DROP TABLE IF EXISTS `kf_supplementreport`;
CREATE TABLE `kf_supplementreport` (
  `supplementreportId` int(11) NOT NULL AUTO_INCREMENT,
  `exChr` varchar(30) DEFAULT NULL,
  `firstZ` varchar(30) DEFAULT NULL,
  `handleFirst` varchar(30) DEFAULT NULL,
  `handleSecond` varchar(30) DEFAULT NULL,
  `handleThird` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `firstZnum` varchar(30) DEFAULT NULL,
  `secondZnum` varchar(30) DEFAULT NULL,
  `thirdZnum` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`supplementreportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_supplementreport
-- ----------------------------

-- ----------------------------
-- Table structure for kf_visitrecordone
-- ----------------------------
DROP TABLE IF EXISTS `kf_visitrecordone`;
CREATE TABLE `kf_visitrecordone` (
  `visitrecordoneId` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `visitName` varchar(30) DEFAULT NULL,
  `visitRemark` varchar(200) DEFAULT NULL,
  `visitTime` varchar(30) DEFAULT NULL,
  `visitType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`visitrecordoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_visitrecordone
-- ----------------------------

-- ----------------------------
-- Table structure for kf_visitrecordtwo
-- ----------------------------
DROP TABLE IF EXISTS `kf_visitrecordtwo`;
CREATE TABLE `kf_visitrecordtwo` (
  `visitrecordtwoId` int(11) NOT NULL AUTO_INCREMENT,
  `contacts` varchar(30) DEFAULT NULL,
  `diagnosticResults` varchar(30) DEFAULT NULL,
  `isCqDiagnosis` varchar(30) DEFAULT NULL,
  `isVisitFinish` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `newMobileRecord` varchar(30) DEFAULT NULL,
  `nextVisitTime` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `visitIsOver` varchar(30) DEFAULT NULL,
  `visitName` varchar(30) DEFAULT NULL,
  `visitRemark` varchar(200) DEFAULT NULL,
  `visitTime` varchar(30) DEFAULT NULL,
  `visitType` varchar(30) DEFAULT NULL,
  `miaoshu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`visitrecordtwoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_visitrecordtwo
-- ----------------------------

-- ----------------------------
-- Table structure for kf_visityy
-- ----------------------------
DROP TABLE IF EXISTS `kf_visityy`;
CREATE TABLE `kf_visityy` (
  `visityyId` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `visitName` varchar(30) DEFAULT NULL,
  `visitRemark` varchar(200) DEFAULT NULL,
  `visitTime` varchar(30) DEFAULT NULL,
  `cusState` varchar(200) DEFAULT NULL,
  `hx` varchar(200) DEFAULT '',
  PRIMARY KEY (`visityyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_visityy
-- ----------------------------

-- ----------------------------
-- Table structure for kf_yyzi
-- ----------------------------
DROP TABLE IF EXISTS `kf_yyzi`;
CREATE TABLE `kf_yyzi` (
  `yyziId` int(10) NOT NULL AUTO_INCREMENT,
  `cusName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `sampleNo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `jiguan` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `jzs` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `grjbs` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ckmd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ybszd` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `saleName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `sjdw` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `estimateReturnDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `realReturnDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `secondReturnDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `isread` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `hx` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `proposal` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cusState` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rePerson` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `updateName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `tumPackage` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `collectionDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `tumProduct` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sampleType` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `planVisitTime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `visitType` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `visitNum` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `overTime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `isGj` varchar(30) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`yyziId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of kf_yyzi
-- ----------------------------

-- ----------------------------
-- Table structure for kf_yy_jd
-- ----------------------------
DROP TABLE IF EXISTS `kf_yy_jd`;
CREATE TABLE `kf_yy_jd` (
  `jdId` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(30) DEFAULT NULL,
  `aminochange` varchar(50) DEFAULT NULL,
  `conclusion` varchar(200) DEFAULT NULL,
  `bgchange` varchar(50) DEFAULT NULL,
  `checkjy` varchar(30) DEFAULT NULL,
  `oor` varchar(20) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`jdId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kf_yy_jd
-- ----------------------------

-- ----------------------------
-- Table structure for knub_change_log
-- ----------------------------
DROP TABLE IF EXISTS `knub_change_log`;
CREATE TABLE `knub_change_log` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=41833 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knub_change_log
-- ----------------------------
INSERT INTO `knub_change_log` VALUES ('41794', '10147', 'name');
INSERT INTO `knub_change_log` VALUES ('41795', '10147', 'yt');
INSERT INTO `knub_change_log` VALUES ('41796', '10147', 'lyqg');
INSERT INTO `knub_change_log` VALUES ('41797', '10147', 'jcjg');
INSERT INTO `knub_change_log` VALUES ('41798', '10147', 'lcfq');
INSERT INTO `knub_change_log` VALUES ('41799', '10147', 'lczd');
INSERT INTO `knub_change_log` VALUES ('41800', '10147', 'hospital');
INSERT INTO `knub_change_log` VALUES ('41801', '10147', 'phone');
INSERT INTO `knub_change_log` VALUES ('41802', '10147', 'age');
INSERT INTO `knub_change_log` VALUES ('41803', '10147', 'sex');
INSERT INTO `knub_change_log` VALUES ('41804', '10151', 'wzxml');
INSERT INTO `knub_change_log` VALUES ('41805', '10151', 'wzx');
INSERT INTO `knub_change_log` VALUES ('41806', '10151', 'hospital');
INSERT INTO `knub_change_log` VALUES ('41807', '10151', 'phone');
INSERT INTO `knub_change_log` VALUES ('41808', '10151', 'jcjg');
INSERT INTO `knub_change_log` VALUES ('41809', '10151', 'yt');
INSERT INTO `knub_change_log` VALUES ('41810', '10151', 'lyqg');
INSERT INTO `knub_change_log` VALUES ('41811', '10151', 'lczd');
INSERT INTO `knub_change_log` VALUES ('41812', '10151', 'lcfq');
INSERT INTO `knub_change_log` VALUES ('41813', '10151', 'sex');
INSERT INTO `knub_change_log` VALUES ('41814', '10151', 'age');
INSERT INTO `knub_change_log` VALUES ('41815', '10151', 'name');
INSERT INTO `knub_change_log` VALUES ('41830', '10152', 'yt');
INSERT INTO `knub_change_log` VALUES ('41831', '10152', 'lyqg');
INSERT INTO `knub_change_log` VALUES ('41832', '10152', 'jcjg');

-- ----------------------------
-- Table structure for knub_child
-- ----------------------------
DROP TABLE IF EXISTS `knub_child`;
CREATE TABLE `knub_child` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `age` varchar(30) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `cslqp` varchar(30) DEFAULT NULL,
  `cslqph` varchar(30) DEFAULT NULL,
  `cslqpz` varchar(30) DEFAULT NULL,
  `cxxzz` varchar(30) DEFAULT NULL,
  `cxxzzg` varchar(30) DEFAULT NULL,
  `doctor` varchar(30) DEFAULT NULL,
  `doctordate` varchar(30) DEFAULT NULL,
  `doctorqm` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `grjbs` varchar(255) DEFAULT NULL,
  `hospital` varchar(30) DEFAULT NULL,
  `jcjg` varchar(255) DEFAULT NULL,
  `jhrqm` varchar(30) DEFAULT NULL,
  `kqsz` varchar(30) DEFAULT NULL,
  `lbjzyc` varchar(30) DEFAULT NULL,
  `lcfq` varchar(255) DEFAULT NULL,
  `lczd` varchar(255) DEFAULT NULL,
  `lyqg` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `qt` varchar(30) DEFAULT NULL,
  `qtpd` varchar(30) DEFAULT NULL,
  `qtsm` varchar(255) DEFAULT NULL,
  `qznl` varchar(30) DEFAULT NULL,
  `relation` varchar(30) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `sfzh` varchar(30) DEFAULT NULL,
  `sjks` varchar(30) DEFAULT NULL,
  `sjzdate` varchar(30) DEFAULT NULL,
  `sjzqm` varchar(30) DEFAULT NULL,
  `sslqp` varchar(30) DEFAULT NULL,
  `sslqph` varchar(30) DEFAULT NULL,
  `sslqpz` varchar(30) DEFAULT NULL,
  `sxxzz` varchar(30) DEFAULT NULL,
  `sxxzzg` varchar(30) DEFAULT NULL,
  `wzx` varchar(30) DEFAULT NULL,
  `wzxml` varchar(30) DEFAULT NULL,
  `xfs` varchar(30) DEFAULT NULL,
  `xfsml` varchar(30) DEFAULT NULL,
  `ybdate` varchar(30) DEFAULT NULL,
  `ybfz` varchar(30) DEFAULT NULL,
  `yczyc` varchar(30) DEFAULT NULL,
  `yt` varchar(50) DEFAULT NULL,
  `yt21` varchar(30) DEFAULT NULL,
  `ytbz` varchar(30) DEFAULT NULL,
  `ytdx` varchar(30) DEFAULT NULL,
  `ytdxpd` varchar(50) DEFAULT NULL,
  `ytgj` varchar(30) DEFAULT NULL,
  `ythl` varchar(30) DEFAULT NULL,
  `ytmsi` varchar(30) DEFAULT NULL,
  `ytqt` varchar(30) DEFAULT NULL,
  `ytqtpd` varchar(30) DEFAULT NULL,
  `yxct` varchar(50) DEFAULT NULL,
  `yxctbz` varchar(30) DEFAULT NULL,
  `yxctc` varchar(50) DEFAULT NULL,
  `yxctcjzca` varchar(30) DEFAULT NULL,
  `yxctcqt` varchar(30) DEFAULT NULL,
  `yxctcqtpd` varchar(30) DEFAULT NULL,
  `yxctdx` varchar(30) DEFAULT NULL,
  `yxctdxpd` varchar(30) DEFAULT NULL,
  `yxctgj` varchar(30) DEFAULT NULL,
  `yxqt` varchar(30) DEFAULT NULL,
  `yxqtpd` varchar(30) DEFAULT NULL,
  `yy` varchar(50) DEFAULT NULL,
  `yybrca` varchar(30) DEFAULT NULL,
  `yydx` varchar(30) DEFAULT NULL,
  `yydxpd` varchar(30) DEFAULT NULL,
  `yyfemale` varchar(30) DEFAULT NULL,
  `yymale` varchar(30) DEFAULT NULL,
  `yyqt` varchar(30) DEFAULT NULL,
  `yyqtpd` varchar(30) DEFAULT NULL,
  `yyqu` varchar(30) DEFAULT NULL,
  `zljzs` varchar(255) DEFAULT NULL,
  `zls` varchar(255) DEFAULT NULL,
  `sfqk` varchar(30) DEFAULT NULL,
  `msi` varchar(30) DEFAULT NULL,
  `jy21` varchar(30) DEFAULT NULL,
  `sjdgz` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`),
  KEY `yt` (`yt`),
  KEY `yxct` (`yxct`),
  KEY `yxctc` (`yxctc`),
  KEY `yy` (`yy`)
) ENGINE=InnoDB AUTO_INCREMENT=10165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knub_child
-- ----------------------------
INSERT INTO `knub_child` VALUES ('10145', '', '', '', null, null, null, null, null, '', '', '', '', '', '北京医院', '', '', null, null, '', '暂无诊断结果', '肺', '', '', null, null, '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, '2018-03-28', '原病发灶', null, 'PM00G00MM0001', null, null, null, null, '高级版(549基因)', null, null, null, null, '', null, '', null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, '', '', '', null, null, '');
INSERT INTO `knub_child` VALUES ('10146', '', '', '', null, null, null, null, null, '', '', '', '', '', '北京医院', '', '', null, null, '', '暂无诊断结果', '肺', '', '', null, null, '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, '2018-03-28', '原病发灶', null, 'PM00G00MM0001', null, null, null, null, '高级版(549基因)', null, null, null, null, '', null, '', null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, '', '', '', null, null, '');
INSERT INTO `knub_child` VALUES ('10147', '', '', '', null, '', '', null, '', '', '', '', '', '', '北京医院', '', '', null, null, '', '暂无诊断结果', '肺', '肿瘤', '', null, '', '', '', '', '', '', '', '', '', null, '', '', null, '', null, '', null, '', '2018-03-28', '原病发灶', null, 'PM00G00MM0001', null, null, null, '', '高级版(549基因)', null, null, null, '', '', null, '', null, null, '', null, '', null, null, '', '', null, null, '', null, null, null, '', null, '', '', '', '', '', '');
INSERT INTO `knub_child` VALUES ('10148', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10149', '', '', '', null, null, null, null, null, '', '', '', '', '', '北京医院', '', '', null, null, '', '暂无诊断结果', '肺', '', '', null, null, '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, '2018-03-28', '原病发灶', null, 'PM00G18AB0044', null, null, '单项肿瘤', '优替--单项癌种（肺癌）', null, null, null, null, null, '', null, '', null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, '', '', '', null, null, '');
INSERT INTO `knub_child` VALUES ('10150', '', '', '', null, null, null, null, null, '', '', '', '', '', '北京医院', '', '', null, null, '', '暂无诊断结果', '肺', '', '', null, null, '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, '2018-03-28', '原病发灶', null, 'PM00G18AB0044', null, null, '单项肿瘤', '优替--单项癌种（肺癌）', null, null, null, null, null, '', null, '', null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, '', '', '', null, null, '');
INSERT INTO `knub_child` VALUES ('10151', '', '', '', null, '', '', null, '', '', '', '', '', '', '北京医院', '', '', null, null, '2', '暂无诊断结果', '肺', '小磊', '', null, '', '', '', '', '男', '', '', '', '', null, '', '', null, '', '外周血', '2', null, '', '2018-03-28', '原病发灶', null, 'PM00G18AB0044', null, null, '单项肿瘤', '优替--单项癌种（肺癌）', null, null, null, null, '', '', null, '', null, null, '', null, '', null, null, '', '', null, null, '', null, null, null, '', null, '', '', '', '', '', '');
INSERT INTO `knub_child` VALUES ('10152', '', '', '', null, '', '', null, '', '', '', '', '', '', '北京医院', '病理检测', '', null, null, '2', '暂无诊断结果', '肺', '小磊', '', null, '', '', '', '', '男', '', '', '', '', null, '', '', null, '', '外周血', '2', null, '', '2018-03-28', '原病发灶', null, 'PM00G18AB0044', null, null, '单项肿瘤', '优替--单项癌种（肺癌）', null, null, null, null, '', '', null, '', null, null, '', null, '', null, null, '', '', null, null, '', null, null, null, '', null, '', '', '', '', '', '');
INSERT INTO `knub_child` VALUES ('10153', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10154', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10155', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10156', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10157', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10158', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10159', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10160', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10161', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10162', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10163', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `knub_child` VALUES ('10164', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for knub_jd
-- ----------------------------
DROP TABLE IF EXISTS `knub_jd`;
CREATE TABLE `knub_jd` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(20) DEFAULT NULL,
  `el` varchar(50) DEFAULT NULL,
  `elid` int(11) DEFAULT NULL,
  `elr` varchar(20) DEFAULT NULL,
  `eltime` varchar(20) DEFAULT NULL,
  `es` varchar(50) DEFAULT NULL,
  `esid` int(11) DEFAULT NULL,
  `esr` varchar(20) DEFAULT NULL,
  `estime` varchar(20) DEFAULT NULL,
  `hospital` varchar(50) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `sfzh` varchar(255) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `uploadtime` varchar(20) DEFAULT NULL,
  `ybdate` varchar(20) DEFAULT NULL,
  `yl` varchar(50) DEFAULT NULL,
  `ylid` int(11) DEFAULT NULL,
  `ylr` varchar(20) DEFAULT NULL,
  `yltime` varchar(20) DEFAULT NULL,
  `ys` varchar(50) DEFAULT NULL,
  `ysid` int(11) DEFAULT NULL,
  `ysr` varchar(20) DEFAULT NULL,
  `ystime` varchar(20) DEFAULT NULL,
  `imgupdatetime` varchar(20) DEFAULT NULL,
  `blbg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`),
  KEY `esid` (`esid`)
) ENGINE=InnoDB AUTO_INCREMENT=2541 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knub_jd
-- ----------------------------
INSERT INTO `knub_jd` VALUES ('2536', '', '是', '10146', '张春可', '2018-03-28 15:22:40', '否', '10148', '演示', null, '北京医院', 'knub/2018-03-28/肿瘤送检单-700faa4b-5793-4ad9-9379-6853874ab758.jpg', '肿瘤', 'PM00G00MM0001', '', '', '2018-03-28 15:51:25', '2018-03-28 15:07:52', '2018-03-28', '是', '10145', '演示', '2018-03-28 15:21:32', '是', '10147', '演示', '2018-03-28 15:51:25', null, null);
INSERT INTO `knub_jd` VALUES ('2537', '', '是', '10150', '周晓锋', '2018-04-03 11:33:05', '是', '10152', '周晓锋', '2018-04-03 11:42:48', '北京医院', 'knub/2018-04-03/肿瘤送检单-02cc954a-e3b0-402d-bc7c-0a8d3160480d.jpg', '小磊', 'PM00G18AB0044', '', '', '2018-04-03 11:42:48', '2018-04-03 11:32:20', '2018-03-28', '是', '10149', '演示', '2018-04-03 11:32:30', '是', '10151', '周晓锋', '2018-04-03 11:33:52', null, null);
INSERT INTO `knub_jd` VALUES ('2538', null, '否', '10154', null, null, '否', '10156', null, null, null, 'knub/2018-04-03/1522743112-87252731-7bb4-4fee-8a1d-ff165aa78d85.jpg', null, null, null, null, null, '2018-04-03 16:11:59', null, '否', '10153', null, null, '否', '10155', null, null, null, null);
INSERT INTO `knub_jd` VALUES ('2539', null, '否', '10158', null, null, '否', '10160', null, null, null, 'knub/2018-04-08/1523153989-33bdcbf2-8174-4408-b4ca-13c0d3a02834.jpg', null, null, null, null, null, '2018-04-08 10:19:46', null, '否', '10157', null, null, '否', '10159', null, null, null, null);
INSERT INTO `knub_jd` VALUES ('2540', null, '否', '10162', null, null, '否', '10164', null, null, null, 'knub/2018-04-08/1523155850-a30f30f1-9636-4c5e-8ac4-384805b471e0.jpg', null, null, null, null, null, '2018-04-08 10:50:46', null, '否', '10161', null, null, '否', '10163', null, null, null, null);

-- ----------------------------
-- Table structure for knub_log
-- ----------------------------
DROP TABLE IF EXISTS `knub_log`;
CREATE TABLE `knub_log` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  `updatetext` varchar(255) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knub_log
-- ----------------------------
INSERT INTO `knub_log` VALUES ('5', '10152', '病理检测结果', '', '-->病理检测', '2018-04-03 11:42:48');

-- ----------------------------
-- Table structure for limskhd
-- ----------------------------
DROP TABLE IF EXISTS `limskhd`;
CREATE TABLE `limskhd` (
  `id` int(100) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `province` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `nickname` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `isQuit` varchar(150) DEFAULT NULL,
  `headimgurl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of limskhd
-- ----------------------------
INSERT INTO `limskhd` VALUES ('0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065', 'oeKeMwVnpjh2vWLEBeFpuCeKma5E', '2', '', '%E5%8C%97%E4%BA%AC', '%E4%B8%AD%E5%9B%BD', '%E9%92%A2%E7%82%AE%E7%89%88%E5%87%B9%E5%87%B8%E6%9B%BC', '15101093727', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epsnm7iba6I2E2mRRpFic0AJ38B1Tibfr3aIlyl48icsukvsEJEicwQLL5eVnwiafu7PYx6aicokXCBZSrJQ/132');
INSERT INTO `limskhd` VALUES ('0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066', 'oeKeMwSE1U4xpozjqsc6BKSAmj8g', '1', '%E4%B8%B0%E5%8F%B0', '%E5%8C%97%E4%BA%AC', '%E4%B8%AD%E5%9B%BD', '%EA%A7%81%E6%AF%92%E8%97%A5%EA%A7%82', '15001116947', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLazrN925BZ2KZHWbHnhPiciaeib5dzeBdMUCZxL65rMPzS9xhYskcTcFuz4r3vmCnTHZH66MGJy6nPg/132');
INSERT INTO `limskhd` VALUES ('0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067', null, '0', '', '', '', '', '15001116947', null, null);
INSERT INTO `limskhd` VALUES ('0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000068', 'oeKeMwam_whQsmmgEnpsNxWfszbA', '2', '', '', '%E5%8F%A4%E5%B7%B4', '%E9%91%AB%E5%B0%A7', '18800100830', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI9w26aKLKkU5xDtLu2Srq6icNxO8tWDibicHIrzmWOtuQsEnpRlsoNfpXMzbrCJ2HaOvGOiaY1QJQufQ/132');
INSERT INTO `limskhd` VALUES ('0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000069', 'oeKeMwVkaovJ2ekTXcVUe5gDF2W8', '0', '', '', '', '%E5%B0%8F%E6%9F%92', '18701319883', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/nnLfAW25VwLZs2R7cCARSO2z0FL9fbIiahXricRalkvNnwiaQXiaoBn1GJM43lnVRVEtl5UaAxll6kiayh4jdM5Razg/132');

-- ----------------------------
-- Table structure for limstjinfo
-- ----------------------------
DROP TABLE IF EXISTS `limstjinfo`;
CREATE TABLE `limstjinfo` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `qx` varchar(100) DEFAULT NULL,
  `times` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `sy_salenames` mediumtext,
  `zl_salenames` mediumtext,
  `tj_salenames` mediumtext,
  `dis` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of limstjinfo
-- ----------------------------

-- ----------------------------
-- Table structure for lims_hospital
-- ----------------------------
DROP TABLE IF EXISTS `lims_hospital`;
CREATE TABLE `lims_hospital` (
  `id` int(100) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `province` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `nickname` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `isQuit` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lims_hospital
-- ----------------------------

-- ----------------------------
-- Table structure for location_time
-- ----------------------------
DROP TABLE IF EXISTS `location_time`;
CREATE TABLE `location_time` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `location` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地区',
  `sendtime` int(10) DEFAULT NULL COMMENT '时效',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of location_time
-- ----------------------------

-- ----------------------------
-- Table structure for logis_courier
-- ----------------------------
DROP TABLE IF EXISTS `logis_courier`;
CREATE TABLE `logis_courier` (
  `courierId` int(11) NOT NULL AUTO_INCREMENT,
  `estimatedTime` varchar(50) DEFAULT NULL,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `kefuRemark` varchar(100) DEFAULT NULL,
  `sendSampleID` int(11) DEFAULT NULL,
  `tumourSendSampleID` int(11) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `hidden` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`courierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logis_courier
-- ----------------------------

-- ----------------------------
-- Table structure for msi_result
-- ----------------------------
DROP TABLE IF EXISTS `msi_result`;
CREATE TABLE `msi_result` (
  `mid` int(50) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(50) DEFAULT NULL,
  `msiType` varchar(50) DEFAULT NULL,
  `excelUrl` varchar(300) DEFAULT NULL,
  `inputTime` varchar(50) DEFAULT NULL,
  `inputName` varchar(50) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `dzybPhoto` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `syybPhoto` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msi_result
-- ----------------------------

-- ----------------------------
-- Table structure for na_nucleicacids
-- ----------------------------
DROP TABLE IF EXISTS `na_nucleicacids`;
CREATE TABLE `na_nucleicacids` (
  `nucleicacidsId` int(11) NOT NULL AUTO_INCREMENT,
  `dnaExtractionMethod` varchar(50) NOT NULL,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `nucleicacidsState` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `endDate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nucleicacidsId`)
) ENGINE=InnoDB AUTO_INCREMENT=706 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of na_nucleicacids
-- ----------------------------
INSERT INTO `na_nucleicacids` VALUES ('701', 'DNA提取', '聂梦肖', '2018-03-23 14:12:23', '已反馈', '1', '管理员', '2018-03-23 14:11:43', '管理员', '2018-03-23 14:12:33', 'HSTQ20180323141143', '2018-03-23');
INSERT INTO `na_nucleicacids` VALUES ('702', 'DNA提取', '张春可', '2018-03-29 09:12:53', '已反馈', '', '张春可', '2018-03-28 17:04:04', '张春可', '2018-03-29 09:16:32', 'HSTQ20180328170404', '2018-03-28');
INSERT INTO `na_nucleicacids` VALUES ('703', 'DNA提取', '张春可', '2018-03-29 09:15:25', '已反馈', '', '张春可', '2018-03-29 09:14:59', '张春可', '2018-03-29 09:15:31', 'HSTQ20180329091459', '2018-03-29');
INSERT INTO `na_nucleicacids` VALUES ('704', 'DNA提取', '张春可', '2018-03-29 09:31:25', '已反馈', '', '张春可', '2018-03-29 09:30:58', '张春可', '2018-03-29 09:31:32', 'HSTQ20180329093058', '2018-03-29');
INSERT INTO `na_nucleicacids` VALUES ('705', 'DNA提取', '张春可', '2018-03-29 11:40:38', '已反馈', 'NE00G00NJ0001', '张春可', '2018-03-29 11:40:10', '张春可', '2018-03-29 11:42:44', 'HSTQ20180329114010', '2018-03-29');

-- ----------------------------
-- Table structure for na_nucleicacidsdetails
-- ----------------------------
DROP TABLE IF EXISTS `na_nucleicacidsdetails`;
CREATE TABLE `na_nucleicacidsdetails` (
  `nucleicacidsDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProjectName` varchar(50) NOT NULL,
  `feedbackConcentration` varchar(50) DEFAULT NULL,
  `feedbackOperator` varchar(50) DEFAULT NULL,
  `feedbackPlasticFigure` varchar(50) DEFAULT NULL,
  `feedbackProcessMode` varchar(20) DEFAULT NULL,
  `feedbackQualified` varchar(50) DEFAULT NULL,
  `feedbackRemark` longtext,
  `feedbackResult` varchar(10) DEFAULT NULL,
  `feedbackSampleNo` varchar(50) DEFAULT NULL,
  `feedbackSampleUnit` varchar(20) NOT NULL,
  `feedbackStorage` varchar(50) DEFAULT NULL,
  `feedbackSurplus` varchar(50) DEFAULT NULL,
  `feedbackTotalAmount` varchar(50) DEFAULT NULL,
  `feedbackUsageAmount` varchar(50) DEFAULT NULL,
  `feedbackVolume` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) NOT NULL,
  `orderSampleUnit` varchar(20) NOT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `provisionsCount` varchar(50) DEFAULT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `sampleCount` varchar(50) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `sampleGtasksId` int(30) DEFAULT NULL,
  `qubitNumber` varchar(50) DEFAULT NULL,
  `reagentNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nucleicacidsDetailsId`),
  UNIQUE KEY `feedbackSampleNo` (`feedbackSampleNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2400 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of na_nucleicacidsdetails
-- ----------------------------
INSERT INTO `na_nucleicacidsdetails` VALUES ('2388', '优馨安--无创产前基因检测', '1', '聂梦肖', '', '通过', '合格', '', '', 'pn00G17AD0111-1', 'nl', '', '20', '20', '1', '20', '', 'pn00G17AD0111-1', '管', 'pn00G17AD0111', '1', '已推送', '1', '全血', 'pn00G17AD0111', '聂梦肖', '2018-03-23 14:12:33', 'HSTQ20180323141143', '139154', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2389', '优馨安--无创产前基因检测', '2', '张春可', '', '通过', '合格', '', '', 'PN00G00PJ0002-1', 'nl', '', '40', '40', '1', '20', '', 'PN00G00PJ0002-1', '管', 'PN00G00PJ0002', '1', '已推送', '1', '全血', 'PN00G00PJ0002', '张春可', '2018-03-29 09:16:32', 'HSTQ20180328170404', '139199', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2390', '优馨安--无创产前基因检测(NIPT plus)', '4', '张春可', '', '通过', '合格', '', '', 'NE00G00NJ0004-1', 'nl', '', '80', '80', '1', '20', '', 'NE00G00NJ0004-1', '管', 'NE00G00NJ0004', '1', '已推送', '1', '全血', 'NE00G00NJ0004', '张春可', '2018-03-29 09:16:32', 'HSTQ20180328170404', '139200', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2391', '优馨安--无创产前基因检测(NIPT plus)', '3', '张春可', '', '通过', '合格', '', '', 'NE00G00NJ0003-1', 'nl', '', '60', '60', '1', '20', '', 'NE00G00NJ0003-1', '管', 'NE00G00NJ0003', '1', '已推送', '1', '全血', 'NE00G00NJ0003', '张春可', '2018-03-29 09:16:32', 'HSTQ20180328170404', '139201', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2392', '优馨安--无创产前基因检测(NIPT plus)', '2', '张春可', '', '通过', '合格', '', '', 'NE00G00NJ0002-1', 'nl', '', '40', '40', '1', '20', '', 'NE00G00NJ0002-1', '管', 'NE00G00NJ0002', '1', '已推送', '1', '全血', 'NE00G00NJ0002', '张春可', '2018-03-29 09:16:32', 'HSTQ20180328170404', '139202', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2393', '优馨安--无创产前基因检测(NIPT plus)', '1', '张春可', '', '通过', '合格', '', '', 'NE00G00NJ0001-1', 'nl', '', '20', '20', '1', '20', '', 'NE00G00NJ0001-1', '管', 'NE00G00NJ0001', '1', '已推送', '1', '全血', 'NE00G00NJ0001', '张春可', '2018-03-29 09:16:32', 'HSTQ20180328170404', '139203', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2394', '优馨安--无创产前基因检测(NIPT plus)', '1', '张春可', '', '通过', '合格', '', '', 'NE00G00NJ0005-6', 'nl', '', '20', '20', '1', '20', '', 'NE00G00NJ0005-6', '管', 'NE00G00NJ0005', '1', '已推送', '1', '全血', 'NE00G00NJ0005', '张春可', '2018-03-29 09:15:31', 'HSTQ20180329091459', '139229', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2395', '优馨安--无创产前基因检测(NIPT plus)', '1', '张春可', '', '通过', '合格', '', '', 'NE00G00NJ0005-1', 'nl', '', '20', '20', '1', '20', '', 'NE00G00NJ0005-1', '管', 'NE00G00NJ0005', '1', '已推送', '1', '全血', 'NE00G00NJ0005', '张春可', '2018-03-29 09:15:31', 'HSTQ20180329091459', '139229', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2396', '优馨安--无创产前基因检测', '1.8', '张春可', '', '通过', '合格', '', '', 'PN00G00PJ0003R-1', 'nl', '', '36', '36', '1', '20', '', 'PN00G00PJ0003R-1', '管', 'PN00G00PJ0003R', '1', '已推送', '1', '血浆', 'PN00G00PJ0003R', '张春可', '2018-03-29 09:31:32', 'HSTQ20180329093058', '139245', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2397', '优馨安--无创产前基因检测(NIPT plus)', '1.8', '张春可', '', '通过', '合格', '', '', 'NE00G00NJ0006-1', 'nl', '', '36', '36', '1', '20', '', 'NE00G00NJ0006-1', '管', 'NE00G00NJ0006', '1', '已推送', '1', '流产组织', 'NE00G00NJ0006', '张春可', '2018-03-29 09:31:32', 'HSTQ20180329093058', '139241', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2398', '优馨安--无创产前基因检测', '1.8', '张春可', '', '通过', '合格', '', '', 'PN00G00PJ0003-1', 'nl', '', '36', '36', '1', '20', '', 'PN00G00PJ0003-1', '管', 'PN00G00PJ0003', '1', '已推送', '1', '流产组织', 'PN00G00PJ0003', '张春可', '2018-03-29 09:31:32', 'HSTQ20180329093058', '139242', null, null);
INSERT INTO `na_nucleicacidsdetails` VALUES ('2399', '优馨安--无创产前基因检测(NIPT plus)', '2', '张春可', '', '通过', '不合格', '23232323', '', 'NE00G00NJ0001-2', 'nl', '', '0', '40', '1', '20', '', 'NE00G00NJ0001-2', '管', 'NE00G00NJ0001', '1', '', '1', '全血', 'NE00G00NJ0001', '张春可', '2018-03-29 11:42:44', 'HSTQ20180329114010', '139273', null, null);

-- ----------------------------
-- Table structure for new_safe_child
-- ----------------------------
DROP TABLE IF EXISTS `new_safe_child`;
CREATE TABLE `new_safe_child` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL,
  `safetype` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sfzh` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `fzj` varchar(50) DEFAULT NULL,
  `fzjh` varchar(50) DEFAULT NULL,
  `fbirthdate` varchar(50) DEFAULT NULL,
  `yfqm` varchar(50) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `qsqm` varchar(50) DEFAULT NULL,
  `relative` varchar(50) DEFAULT NULL,
  `qsdate` varchar(50) DEFAULT NULL,
  `jydq` varchar(50) DEFAULT NULL,
  `bz` varchar(50) DEFAULT NULL,
  `otelphone` varchar(50) DEFAULT NULL COMMENT '非大陆电话号',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=837 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new_safe_child
-- ----------------------------
INSERT INTO `new_safe_child` VALUES ('836', null, '全面型', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for new_sample_safe
-- ----------------------------
DROP TABLE IF EXISTS `new_sample_safe`;
CREATE TABLE `new_sample_safe` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sfzh` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `yl` varchar(50) DEFAULT NULL COMMENT '是否录入',
  `ylr` varchar(50) DEFAULT NULL COMMENT '录入人',
  `yltime` varchar(50) DEFAULT NULL COMMENT '录入时间',
  `ylid` int(10) DEFAULT NULL COMMENT '信息表的id',
  `uploadtime` varchar(50) DEFAULT NULL COMMENT '录入时间',
  `num` varchar(50) DEFAULT NULL COMMENT '样本编号',
  `telphone` varchar(50) DEFAULT NULL COMMENT '手机号',
  `imgupdatetime` varchar(20) DEFAULT NULL COMMENT '图片更新时间',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of new_sample_safe
-- ----------------------------
INSERT INTO `new_sample_safe` VALUES ('32', 'TQ20171114154432-edfda570-c705-4d69-9b44-cc49a4f9042f.png', null, null, '未完成', '张春可', null, '836', '2018-03-29 13:37:34', null, null, null);

-- ----------------------------
-- Table structure for operate
-- ----------------------------
DROP TABLE IF EXISTS `operate`;
CREATE TABLE `operate` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `svnNo` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SVN版本号',
  `operation` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT '更新内容',
  `submitter` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '提交人',
  `submitTime` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '提交日期',
  `inputName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '录入人',
  `inputTime` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '录入时间',
  `updateName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新人',
  `updateTime` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新时间',
  `jspName` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '页面名称',
  `updateType` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '更新类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operate
-- ----------------------------

-- ----------------------------
-- Table structure for pi_projectinfomation
-- ----------------------------
DROP TABLE IF EXISTS `pi_projectinfomation`;
CREATE TABLE `pi_projectinfomation` (
  `projectInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `buildLeader` varchar(30) DEFAULT NULL,
  `computerDate` varchar(30) DEFAULT NULL,
  `experimentEndDate` varchar(30) DEFAULT NULL,
  `indexCode` varchar(30) DEFAULT NULL,
  `informationEndDate` varchar(30) DEFAULT NULL,
  `informationLeader` varchar(30) DEFAULT NULL,
  `orderDate` varchar(30) DEFAULT NULL,
  `panelDepth` varchar(30) DEFAULT NULL,
  `panelId` varchar(30) DEFAULT NULL,
  `panelScope` varchar(30) DEFAULT NULL,
  `pretreatmentDate` varchar(30) DEFAULT NULL,
  `pretreatmentNo` varchar(30) DEFAULT NULL,
  `pretreatmentOperator` varchar(30) DEFAULT NULL,
  `projectLeader` varchar(30) DEFAULT NULL,
  `projectName` varchar(30) DEFAULT NULL,
  `projectNo` varchar(30) DEFAULT NULL,
  `projectNote` varchar(30) DEFAULT NULL,
  `projectState` varchar(30) DEFAULT NULL,
  `sampleEndDate` varchar(30) DEFAULT NULL,
  `sampleIncomeDate` varchar(30) DEFAULT NULL,
  `sampleState` varchar(30) DEFAULT NULL,
  `sampleToDate` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `sequenceEndDate` varchar(30) DEFAULT NULL,
  `sequenceLeader` varchar(30) DEFAULT NULL,
  `sequenceState` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`projectInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pi_projectinfomation
-- ----------------------------

-- ----------------------------
-- Table structure for pi_projectlist
-- ----------------------------
DROP TABLE IF EXISTS `pi_projectlist`;
CREATE TABLE `pi_projectlist` (
  `projectListId` int(11) NOT NULL AUTO_INCREMENT,
  `pretreatmentDate` varchar(30) DEFAULT NULL,
  `pretreatmentNo` varchar(30) DEFAULT NULL,
  `pretreatmentOperator` varchar(30) DEFAULT NULL,
  `projectGtasksState` varchar(30) DEFAULT NULL,
  `projectName` varchar(30) DEFAULT NULL,
  `projectNo` varchar(30) DEFAULT NULL,
  `sampleIncomeDate` varchar(30) DEFAULT NULL,
  `sampleState` varchar(30) DEFAULT NULL,
  `sampleToDate` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `selectType` varchar(30) NOT NULL,
  PRIMARY KEY (`projectListId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pi_projectlist
-- ----------------------------

-- ----------------------------
-- Table structure for pm_customerinforms
-- ----------------------------
DROP TABLE IF EXISTS `pm_customerinforms`;
CREATE TABLE `pm_customerinforms` (
  `cusInformId` int(11) NOT NULL AUTO_INCREMENT,
  `cus18` varchar(30) DEFAULT NULL,
  `cus21` varchar(30) DEFAULT NULL,
  `cusAddress` varchar(100) DEFAULT NULL,
  `cusAge` int(11) DEFAULT NULL,
  `cusAgeRisk` varchar(30) DEFAULT NULL,
  `cusAllogeneicBlood` varchar(30) DEFAULT NULL,
  `cusBmode` varchar(30) DEFAULT NULL,
  `cusBriefHistory` varchar(30) DEFAULT NULL,
  `cusCaesareanSection` varchar(30) DEFAULT NULL,
  `cusChargeRemark` longtext,
  `cusChromosomes` varchar(30) DEFAULT NULL,
  `cusDeadbirth` varchar(30) DEFAULT NULL,
  `cusDiagnosis` varchar(30) DEFAULT NULL,
  `cusDocumentNo` varchar(30) DEFAULT NULL,
  `cusEctopicPregnancy` varchar(30) DEFAULT NULL,
  `cusEmail` varchar(30) DEFAULT NULL,
  `cusEutocia` varchar(30) DEFAULT NULL,
  `cusExpressCompany` varchar(30) DEFAULT NULL,
  `cusExpressNo` varchar(30) DEFAULT NULL,
  `cusGestationDays` varchar(30) DEFAULT NULL,
  `cusGestationWeeks` varchar(30) DEFAULT NULL,
  `cusHazardRate` varchar(30) DEFAULT NULL,
  `cusHydatidMole` varchar(30) DEFAULT NULL,
  `cusImmunotherapy` varchar(30) DEFAULT NULL,
  `cusInducedAbortion` varchar(30) DEFAULT NULL,
  `cusInspectionDoctor` varchar(30) DEFAULT NULL,
  `cusInspectionUnit` varchar(30) DEFAULT NULL,
  `cusInvoice` varchar(30) DEFAULT NULL,
  `cusIvf` varchar(30) DEFAULT NULL,
  `cusLmp` varchar(30) DEFAULT NULL,
  `cusMobile` varchar(30) DEFAULT NULL,
  `cusModePay` varchar(30) DEFAULT NULL,
  `cusName` varchar(20) NOT NULL,
  `cusNameSpell` varchar(100) DEFAULT NULL,
  `cusNation` varchar(30) DEFAULT NULL,
  `cusNaturalAbortion` varchar(30) DEFAULT NULL,
  `cusNeonatalDeath` varchar(30) DEFAULT NULL,
  `cusOrganGraffe` varchar(30) DEFAULT NULL,
  `cusOther` varchar(30) DEFAULT NULL,
  `cusPos` varchar(30) DEFAULT NULL,
  `cusPreferentialType` varchar(30) DEFAULT NULL,
  `cusPregnancy` varchar(30) DEFAULT NULL,
  `cusProduce` varchar(30) DEFAULT NULL,
  `cusPurchaseInsurance` varchar(30) DEFAULT NULL,
  `cusReceiptNumber` varchar(30) DEFAULT NULL,
  `cusReceiveDate` varchar(30) DEFAULT NULL,
  `cusRemark` longtext,
  `cusSalePeople` varchar(30) DEFAULT NULL,
  `cusSampleAmount` varchar(30) DEFAULT NULL,
  `cusSampleNo` varchar(30) NOT NULL,
  `cusScreeningModel` varchar(30) DEFAULT NULL,
  `cusSendCity` varchar(30) DEFAULT NULL,
  `cusSendMaterial` varchar(30) DEFAULT NULL,
  `cusSendProject` varchar(30) DEFAULT NULL,
  `cusSender` varchar(30) DEFAULT NULL,
  `cusStemCell` varchar(30) DEFAULT NULL,
  `cusStillbirth` varchar(30) DEFAULT NULL,
  `cusTerminalNumber` varchar(30) DEFAULT NULL,
  `cusWeight` varchar(30) DEFAULT NULL,
  `cusWhetherCharge` varchar(30) DEFAULT NULL,
  `cusntd1` varchar(30) DEFAULT NULL,
  `cussamplingDate` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `uploadState` varchar(20) DEFAULT NULL,
  `serialNum` varchar(20) DEFAULT NULL,
  `cusSendDate` varchar(30) DEFAULT NULL,
  `inputPerson` varchar(30) NOT NULL,
  `inputDate` varchar(30) NOT NULL,
  PRIMARY KEY (`cusInformId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_customerinforms
-- ----------------------------

-- ----------------------------
-- Table structure for pm_pmmain
-- ----------------------------
DROP TABLE IF EXISTS `pm_pmmain`;
CREATE TABLE `pm_pmmain` (
  `pmmainId` int(11) NOT NULL AUTO_INCREMENT,
  `abnormalNote` longtext,
  `abnormalTime` varchar(30) DEFAULT NULL,
  `currentProgress` varchar(100) NOT NULL,
  `experimentDate` varchar(50) DEFAULT NULL,
  `experimentTime` varchar(50) DEFAULT NULL,
  `extendedState` varchar(50) DEFAULT NULL,
  `inanalysisDate` varchar(50) DEFAULT NULL,
  `inanalysisResult` varchar(10) DEFAULT NULL,
  `inanalysisTime` varchar(50) DEFAULT NULL,
  `reportDate` varchar(50) DEFAULT NULL,
  `reportTime` varchar(50) DEFAULT NULL,
  `sampleNo` varchar(50) NOT NULL,
  `sampleQualified` varchar(10) DEFAULT NULL,
  `sampleStorage` varchar(10) DEFAULT NULL,
  `storageTime` varchar(50) DEFAULT NULL,
  `updateName` varchar(50) NOT NULL,
  `updateTime` varchar(50) NOT NULL,
  PRIMARY KEY (`pmmainId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_pmmain
-- ----------------------------

-- ----------------------------
-- Table structure for pm_pmorder
-- ----------------------------
DROP TABLE IF EXISTS `pm_pmorder`;
CREATE TABLE `pm_pmorder` (
  `pmorderId` int(11) NOT NULL AUTO_INCREMENT,
  `analysisresultDate` varchar(30) DEFAULT NULL,
  `analysisresulter` varchar(30) DEFAULT NULL,
  `biologicalcomputer` varchar(30) DEFAULT NULL,
  `biologicalcomputerDate` varchar(30) DEFAULT NULL,
  `pmorderNo` varchar(100) NOT NULL,
  `reportissueDate` varchar(30) DEFAULT NULL,
  `reportissueer` varchar(30) DEFAULT NULL,
  `stockinDate` varchar(30) DEFAULT NULL,
  `stockoutDate` varchar(30) DEFAULT NULL,
  `stockouter` varchar(30) DEFAULT NULL,
  `updateName` varchar(50) NOT NULL,
  `updateTime` varchar(50) NOT NULL,
  `distinguish` varchar(30) DEFAULT NULL,
  `bgiState` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pmorderId`),
  KEY `pmorderNo` (`pmorderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_pmorder
-- ----------------------------
INSERT INTO `pm_pmorder` VALUES ('504', '2018-03-23', '4', '3', '2018-03-23', 'PM20180323135416', '2018-03-23', '1', null, '2018-03-23', '2', '管理员', '2018-03-23 13:54:35', 'BGI', '否');
INSERT INTO `pm_pmorder` VALUES ('505', '2018-03-23', '3', '2', '2018-03-23', 'PM20180323140919', '2018-03-23', '1', null, '2018-03-23', '1', '管理员', '2018-03-23 14:10:34', 'BGI', '否');
INSERT INTO `pm_pmorder` VALUES ('506', '2018-03-28', '张春可', '张春可', '2018-03-30', 'PM20180328170322', '2018-03-31', '张春可', null, '2018-03-31', '张春可', '张春可', '2018-03-28 17:03:46', 'USCI', '是');
INSERT INTO `pm_pmorder` VALUES ('507', '2018-04-01', '张春可', '张春可', '2018-03-31', 'PM20180329091428', '2018-03-29', '张春可', null, '2018-03-30', '张春可', '张春可', '2018-03-29 09:14:55', 'USCI', '是');
INSERT INTO `pm_pmorder` VALUES ('508', '2018-03-31', '张春可', '张春可', '2018-03-30', 'PM20180329092942', '2018-04-02', '张春可', null, '2018-03-29', '张春可', '张春可', '2018-03-29 09:30:54', 'USCI', '是');

-- ----------------------------
-- Table structure for pm_pmorderdetails
-- ----------------------------
DROP TABLE IF EXISTS `pm_pmorderdetails`;
CREATE TABLE `pm_pmorderdetails` (
  `pmorderDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `pmorderNo` varchar(100) NOT NULL,
  `sampleNo` varchar(100) NOT NULL,
  `updateName` varchar(50) NOT NULL,
  `updateTime` varchar(50) NOT NULL,
  `osReceiveDateTime` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `distinguish` varchar(30) DEFAULT NULL,
  `sampleTypeName` varchar(30) DEFAULT NULL,
  `bgiSampleNo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pmorderDetailsId`),
  KEY `sampleNo` (`sampleNo`) USING BTREE,
  KEY `pmorderNo` (`pmorderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=23113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_pmorderdetails
-- ----------------------------
INSERT INTO `pm_pmorderdetails` VALUES ('23102', 'PM20180323135416', 'pn00G17AD0111', '管理员', '2018-03-23 13:54:35', '2018-03-23', '', 'BGI', '全血', '18B1000134');
INSERT INTO `pm_pmorderdetails` VALUES ('23103', 'PM20180323140919', 'PN00G17AD1234', '管理员', '2018-03-23 14:10:34', '2018-03-23', '', 'BGI', '全血', '18B1000135');
INSERT INTO `pm_pmorderdetails` VALUES ('23104', 'PM20180328170322', 'NE00G00NJ0001', '张春可', '2018-03-28 17:03:46', '2018-03-28', '', 'USCI', '全血', null);
INSERT INTO `pm_pmorderdetails` VALUES ('23105', 'PM20180328170322', 'NE00G00NJ0002', '张春可', '2018-03-28 17:03:46', '2018-03-28', '', 'USCI', '全血', null);
INSERT INTO `pm_pmorderdetails` VALUES ('23106', 'PM20180328170322', 'NE00G00NJ0003', '张春可', '2018-03-28 17:03:46', '2018-03-28', '', 'USCI', '全血', null);
INSERT INTO `pm_pmorderdetails` VALUES ('23107', 'PM20180328170322', 'NE00G00NJ0004', '张春可', '2018-03-28 17:03:46', '2018-03-28', '', 'USCI', '全血', null);
INSERT INTO `pm_pmorderdetails` VALUES ('23108', 'PM20180328170322', 'PN00G00PJ0002', '张春可', '2018-03-28 17:03:46', '2018-03-28', '', 'USCI', '全血', null);
INSERT INTO `pm_pmorderdetails` VALUES ('23109', 'PM20180329091428', 'NE00G00NJ0005', '张春可', '2018-03-29 09:14:55', '2018-03-29', '', 'USCI', '全血', null);
INSERT INTO `pm_pmorderdetails` VALUES ('23110', 'PM20180329092942', 'PN00G00PJ0003R', '张春可', '2018-03-29 09:30:54', '2018-03-29', '', 'USCI', '血浆', null);
INSERT INTO `pm_pmorderdetails` VALUES ('23111', 'PM20180329092942', 'NE00G00NJ0006', '张春可', '2018-03-29 09:30:54', '2018-03-13', '', 'USCI', '流产组织', null);
INSERT INTO `pm_pmorderdetails` VALUES ('23112', 'PM20180329092942', 'PN00G00PJ0003', '张春可', '2018-03-29 09:30:54', '2018-03-24', '', 'USCI', '流产组织', null);

-- ----------------------------
-- Table structure for pm_tjpmorder
-- ----------------------------
DROP TABLE IF EXISTS `pm_tjpmorder`;
CREATE TABLE `pm_tjpmorder` (
  `tjPmorderId` int(11) NOT NULL AUTO_INCREMENT,
  `pmorderNo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `stockinDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `stockoutDate` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stockouter` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `biologicalcomputerDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `biologicalcomputer` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `analysisresulter` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportissueDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportissueer` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reviewState` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `updateName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `analysisresultDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `checkProject` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `checkProjectq` text CHARACTER SET utf8,
  `samplecount` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sampleGtasksId` text CHARACTER SET utf8,
  `sampleNos` text CHARACTER SET utf8,
  `remark` text CHARACTER SET utf8,
  `sampleType` text CHARACTER SET utf8,
  `inputTime` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `inputName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `buildFeedbackSampleNo` text CHARACTER SET utf8,
  `orderIndexNo` text CHARACTER SET utf8,
  `orderProbe` text CHARACTER SET utf8,
  `orderScope` text CHARACTER SET utf8,
  PRIMARY KEY (`tjPmorderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pm_tjpmorder
-- ----------------------------

-- ----------------------------
-- Table structure for pm_tumourpmorder
-- ----------------------------
DROP TABLE IF EXISTS `pm_tumourpmorder`;
CREATE TABLE `pm_tumourpmorder` (
  `tumourPmorderId` int(11) NOT NULL AUTO_INCREMENT,
  `pmorderNo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `stockinDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `stockoutDate` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stockouter` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `biologicalcomputerDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `biologicalcomputer` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `analysisresulter` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportissueDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportissueer` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reviewState` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `updateName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `analysisresultDate` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `checkProject` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `checkProjectq` varchar(1200) CHARACTER SET utf8 DEFAULT NULL,
  `samplecount` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sampleGtasksId` varchar(1200) CHARACTER SET utf8 DEFAULT NULL,
  `sampleNos` varchar(1200) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(1200) CHARACTER SET utf8 DEFAULT NULL,
  `sampleType` varchar(1200) CHARACTER SET utf8 DEFAULT NULL,
  `inputTime` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `inputName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`tumourPmorderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pm_tumourpmorder
-- ----------------------------

-- ----------------------------
-- Table structure for pm_tumourpmorderdetails
-- ----------------------------
DROP TABLE IF EXISTS `pm_tumourpmorderdetails`;
CREATE TABLE `pm_tumourpmorderdetails` (
  `tumourPmorderDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `osReceiveDateTime` varchar(30) DEFAULT NULL,
  `pmorderNo` varchar(100) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sampleNo` varchar(100) NOT NULL,
  `updateName` varchar(50) NOT NULL,
  `updateTime` varchar(50) NOT NULL,
  `sampleGtasksId` int(11) DEFAULT NULL,
  PRIMARY KEY (`tumourPmorderDetailsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_tumourpmorderdetails
-- ----------------------------

-- ----------------------------
-- Table structure for pregnant_change_log
-- ----------------------------
DROP TABLE IF EXISTS `pregnant_change_log`;
CREATE TABLE `pregnant_change_log` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregnant_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for pregnant_child
-- ----------------------------
DROP TABLE IF EXISTS `pregnant_child`;
CREATE TABLE `pregnant_child` (
  `sampleNo` varchar(50) DEFAULT NULL,
  `tid` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `mz` varchar(50) DEFAULT NULL,
  `sfzh` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `grjbs` varchar(50) DEFAULT NULL,
  `fbnl` varchar(50) DEFAULT NULL,
  `lczd` varchar(50) DEFAULT NULL,
  `lcbx` varchar(50) DEFAULT NULL,
  `zlqk` varchar(50) DEFAULT NULL,
  `jzs` varchar(50) DEFAULT NULL,
  `qtjbs` varchar(50) DEFAULT NULL,
  `yjyjcs` varchar(50) DEFAULT NULL COMMENT '烟、酒、药接触史',
  `dhjcs` varchar(50) DEFAULT NULL COMMENT '有毒有害接触史',
  `ybly` varchar(50) DEFAULT NULL,
  `cjrq` varchar(50) DEFAULT NULL,
  `qtsm` varchar(50) DEFAULT NULL,
  `jcxm` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL COMMENT '受检者签名',
  `jname` varchar(50) DEFAULT NULL COMMENT '监护人签名',
  `relation` varchar(50) DEFAULT NULL,
  `sdate` varchar(50) DEFAULT NULL,
  `sjdw` varchar(100) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL COMMENT '医生签名',
  `ddate` varchar(50) DEFAULT NULL,
  `bz` varchar(100) DEFAULT NULL,
  `grjbsy` varchar(50) DEFAULT NULL,
  `jzsy` varchar(50) DEFAULT NULL,
  `yjyjcsy` varchar(100) DEFAULT NULL,
  `dhjcsq` varchar(100) DEFAULT NULL,
  `sjdxxgz` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregnant_child
-- ----------------------------

-- ----------------------------
-- Table structure for pregnant_jd
-- ----------------------------
DROP TABLE IF EXISTS `pregnant_jd`;
CREATE TABLE `pregnant_jd` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(20) DEFAULT NULL,
  `el` varchar(50) DEFAULT NULL,
  `elid` int(11) DEFAULT NULL,
  `elr` varchar(20) DEFAULT NULL,
  `eltime` varchar(20) DEFAULT NULL,
  `es` varchar(50) DEFAULT NULL,
  `esid` int(11) DEFAULT NULL,
  `esr` varchar(20) DEFAULT NULL,
  `estime` varchar(20) DEFAULT NULL,
  `hospital` varchar(50) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `sfzh` varchar(255) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `uploadtime` varchar(20) DEFAULT NULL,
  `ybdate` varchar(20) DEFAULT NULL,
  `yl` varchar(50) DEFAULT NULL,
  `ylid` int(11) DEFAULT NULL,
  `ylr` varchar(20) DEFAULT NULL,
  `yltime` varchar(20) DEFAULT NULL,
  `ys` varchar(50) DEFAULT NULL,
  `ysid` int(11) DEFAULT NULL,
  `ysr` varchar(20) DEFAULT NULL,
  `ystime` varchar(20) DEFAULT NULL,
  `imgupdatetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregnant_jd
-- ----------------------------

-- ----------------------------
-- Table structure for pregnant_log
-- ----------------------------
DROP TABLE IF EXISTS `pregnant_log`;
CREATE TABLE `pregnant_log` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  `updatetext` varchar(255) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregnant_log
-- ----------------------------

-- ----------------------------
-- Table structure for pt_pretreatment
-- ----------------------------
DROP TABLE IF EXISTS `pt_pretreatment`;
CREATE TABLE `pt_pretreatment` (
  `pretreatmentId` int(11) NOT NULL AUTO_INCREMENT,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `pretreatmentState` varchar(50) NOT NULL,
  `pretreatmentType` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `endDate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pretreatmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pt_pretreatment
-- ----------------------------

-- ----------------------------
-- Table structure for pt_pretreatmentdetails
-- ----------------------------
DROP TABLE IF EXISTS `pt_pretreatmentdetails`;
CREATE TABLE `pt_pretreatmentdetails` (
  `pretreatmentDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `SampleTypeName` varchar(50) NOT NULL,
  `checkProjectName` varchar(50) NOT NULL,
  `feedbackQualified` varchar(50) DEFAULT NULL,
  `feedbackRemark` longtext,
  `feedbackSampleNo` varchar(50) DEFAULT NULL,
  `feedbackSampleUnit` varchar(20) NOT NULL,
  `feedbackSurplus` varchar(50) DEFAULT NULL,
  `feedbackUsageAmount` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) NOT NULL,
  `orderSampleUnit` varchar(20) NOT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `pretreatmentOperator` varchar(50) DEFAULT NULL,
  `pretreatmentProcessMode` varchar(20) DEFAULT NULL,
  `pretreatmentResult` varchar(10) DEFAULT NULL,
  `pretreatmentamount` varchar(50) DEFAULT NULL,
  `sampleTotal` varchar(50) DEFAULT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `sampleGtasksId` int(30) DEFAULT NULL,
  PRIMARY KEY (`pretreatmentDetailsId`),
  UNIQUE KEY `feedbackSampleNo` (`feedbackSampleNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pt_pretreatmentdetails
-- ----------------------------

-- ----------------------------
-- Table structure for pt_pretreatmentfeedback
-- ----------------------------
DROP TABLE IF EXISTS `pt_pretreatmentfeedback`;
CREATE TABLE `pt_pretreatmentfeedback` (
  `pretreatmentFeedbackId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProjectName` varchar(50) NOT NULL,
  `feedbackSampleUnit` varchar(20) DEFAULT NULL,
  `feedbackState` varchar(50) DEFAULT NULL,
  `orderSampleNo` varchar(50) NOT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `pretreatmentFeedbackNo` varchar(50) NOT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `storageLocation` varchar(50) DEFAULT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  PRIMARY KEY (`pretreatmentFeedbackId`),
  UNIQUE KEY `pretreatmentFeedbackNo` (`pretreatmentFeedbackNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pt_pretreatmentfeedback
-- ----------------------------

-- ----------------------------
-- Table structure for qp_qpcr
-- ----------------------------
DROP TABLE IF EXISTS `qp_qpcr`;
CREATE TABLE `qp_qpcr` (
  `qpcrId` int(11) NOT NULL AUTO_INCREMENT,
  `executor` varchar(50) NOT NULL,
  `executorDate` varchar(50) NOT NULL,
  `orderState` varchar(50) NOT NULL,
  `remark` longtext NOT NULL,
  `underSingle` varchar(50) NOT NULL,
  `underSingleDate` varchar(30) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `endDate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`qpcrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qp_qpcr
-- ----------------------------

-- ----------------------------
-- Table structure for qp_qpcrdetails
-- ----------------------------
DROP TABLE IF EXISTS `qp_qpcrdetails`;
CREATE TABLE `qp_qpcrdetails` (
  `qpcrDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `buildFeedbackStrategy` varchar(50) DEFAULT NULL,
  `checkProjectName` varchar(50) NOT NULL,
  `feedbackConcentration` varchar(50) DEFAULT NULL,
  `feedbackOperator` varchar(50) DEFAULT NULL,
  `feedbackProcessMode` varchar(20) DEFAULT NULL,
  `feedbackQualified` varchar(50) DEFAULT NULL,
  `feedbackReading` varchar(50) DEFAULT NULL,
  `feedbackRemark` longtext,
  `feedbackResult` varchar(10) DEFAULT NULL,
  `feedbackSampleNo` varchar(50) DEFAULT NULL,
  `feedbackSampleUnit` varchar(20) DEFAULT NULL,
  `feedbackStorage` varchar(50) DEFAULT NULL,
  `feedbackSurplus` varchar(50) DEFAULT NULL,
  `feedbackTotalAmount` varchar(50) DEFAULT NULL,
  `feedbackUsageAmount` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) NOT NULL,
  `orderSampleUnit` varchar(20) NOT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `pushState` varchar(50) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNo` varchar(50) NOT NULL,
  `sampleGtasksId` int(30) DEFAULT NULL,
  `buildBy` varchar(50) DEFAULT NULL,
  `feedbackFragmentSize` varchar(50) DEFAULT NULL,
  `qpcrNumber` varchar(50) DEFAULT NULL,
  `purificationConcentration` varchar(50) DEFAULT '',
  `purificationVolume` varchar(50) DEFAULT '',
  `feedbackAmount` varchar(50) DEFAULT '',
  `diluentConcentration` varchar(50) DEFAULT '',
  `diluentVolume` varchar(50) DEFAULT '',
  `orderProjectNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`qpcrDetailsId`),
  UNIQUE KEY `feedbackSampleNo` (`feedbackSampleNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qp_qpcrdetails
-- ----------------------------

-- ----------------------------
-- Table structure for report_countyt
-- ----------------------------
DROP TABLE IF EXISTS `report_countyt`;
CREATE TABLE `report_countyt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recheckData` longtext,
  `salesFeedback` longtext,
  `reportissueID` int(11) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `count_reportid` (`reportissueID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_countyt
-- ----------------------------

-- ----------------------------
-- Table structure for report_mutationsite
-- ----------------------------
DROP TABLE IF EXISTS `report_mutationsite`;
CREATE TABLE `report_mutationsite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `mutationSite` text,
  `sampleNo` varchar(30) DEFAULT NULL,
  `product` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `count_sampleNo` (`sampleNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_mutationsite
-- ----------------------------

-- ----------------------------
-- Table structure for report_personalization
-- ----------------------------
DROP TABLE IF EXISTS `report_personalization`;
CREATE TABLE `report_personalization` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `edition` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `showHospital` varchar(30) DEFAULT NULL,
  `template` text,
  `recipient` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ifSms` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `ycs` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_personalization
-- ----------------------------

-- ----------------------------
-- Table structure for report_reportissue
-- ----------------------------
DROP TABLE IF EXISTS `report_reportissue`;
CREATE TABLE `report_reportissue` (
  `reportIssueId` int(11) NOT NULL AUTO_INCREMENT,
  `anaDetectionResult` varchar(20) NOT NULL,
  `cusDocumentNo` varchar(50) NOT NULL,
  `cusMobile` varchar(50) NOT NULL,
  `cusName` varchar(50) NOT NULL,
  `expressCompany` varchar(30) DEFAULT NULL,
  `expressNo` varchar(50) DEFAULT NULL,
  `reportIssueState` varchar(20) NOT NULL,
  `reportPdf` varchar(100) NOT NULL,
  `reportSampleNo` varchar(50) NOT NULL,
  `smsState` varchar(20) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `reportIssueNo` varchar(20) NOT NULL,
  `reportDate` varchar(30) DEFAULT NULL,
  `smsDate` varchar(30) DEFAULT NULL,
  `inputPerson` varchar(30) DEFAULT NULL,
  `inputDate` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `reportRecipient` varchar(30) DEFAULT NULL,
  `reportTemplate` varchar(30) DEFAULT NULL,
  `reportPerson` varchar(30) DEFAULT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `ssupdateName` varchar(30) DEFAULT '',
  `ssupdateTime` varchar(30) DEFAULT '',
  `prupdateName` varchar(30) DEFAULT '',
  `prupdateTime` varchar(30) DEFAULT '',
  `emailState` varchar(30) DEFAULT '',
  `emailUpdateName` varchar(30) DEFAULT '',
  `emailUpdateTime` varchar(30) DEFAULT '',
  `emailSendName` varchar(30) DEFAULT '',
  `emailSendTime` varchar(30) DEFAULT '',
  PRIMARY KEY (`reportIssueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_reportissue
-- ----------------------------

-- ----------------------------
-- Table structure for report_reportreview
-- ----------------------------
DROP TABLE IF EXISTS `report_reportreview`;
CREATE TABLE `report_reportreview` (
  `reportReviewId` int(11) NOT NULL AUTO_INCREMENT,
  `reportOpinion` longtext,
  `reportPdf` varchar(100) NOT NULL,
  `reportReviewName` varchar(30) DEFAULT NULL,
  `reportReviewTime` varchar(20) DEFAULT NULL,
  `reportSampleNo` varchar(50) NOT NULL,
  `reportState` varchar(20) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `reportName` varchar(30) NOT NULL,
  `reportMobile` varchar(30) NOT NULL,
  `reportIdCard` varchar(30) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `inputTime` varchar(20) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `sjdgz` varchar(255) DEFAULT NULL,
  `checkHospital` varchar(100) DEFAULT NULL,
  `againSampleNo` varchar(100) DEFAULT NULL,
  `osReceiveDateTime` varchar(100) DEFAULT NULL,
  `gestationalWeeks` varchar(100) DEFAULT NULL,
  `againGestationalWeeks` varchar(100) DEFAULT NULL,
  `anaT21Value` varchar(100) DEFAULT NULL,
  `anaT21Result` varchar(100) DEFAULT NULL,
  `anaT18Value` varchar(100) DEFAULT NULL,
  `anaT18Result` varchar(100) DEFAULT NULL,
  `anaT13Value` varchar(100) DEFAULT NULL,
  `anaT13Result` varchar(100) DEFAULT NULL,
  `conclusion` varchar(100) DEFAULT NULL,
  `againReportOpinion` varchar(100) DEFAULT NULL,
  `zsstate` varchar(20) DEFAULT NULL,
  `isEmail` varchar(20) DEFAULT NULL,
  `isEmailzs` varchar(20) DEFAULT NULL,
  `distinguish` varchar(30) DEFAULT NULL,
  `errorType` varchar(50) DEFAULT '',
  `errorContent` varchar(200) DEFAULT '',
  `errorFind` varchar(50) DEFAULT '',
  `errorPerson` varchar(50) DEFAULT '',
  `errorSpan` varchar(50) DEFAULT '',
  `errorBefore` varchar(50) DEFAULT '',
  `errorInputTime` varchar(50) DEFAULT '',
  `errorUpdateName` varchar(50) DEFAULT '',
  `errorUpdateTime` varchar(50) DEFAULT '',
  PRIMARY KEY (`reportReviewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_reportreview
-- ----------------------------

-- ----------------------------
-- Table structure for report_yxy_personalization
-- ----------------------------
DROP TABLE IF EXISTS `report_yxy_personalization`;
CREATE TABLE `report_yxy_personalization` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `edition` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `showHospital` varchar(30) DEFAULT NULL,
  `recipient` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `checkProject` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_yxy_personalization
-- ----------------------------

-- ----------------------------
-- Table structure for report_yxy_reportissue
-- ----------------------------
DROP TABLE IF EXISTS `report_yxy_reportissue`;
CREATE TABLE `report_yxy_reportissue` (
  `rrid` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(50) NOT NULL,
  `cusName` varchar(20) DEFAULT NULL,
  `cusMobile` varchar(50) DEFAULT NULL,
  `reportState` varchar(20) DEFAULT NULL,
  `expressNo` varchar(50) DEFAULT NULL,
  `expressCompany` varchar(30) DEFAULT NULL,
  `reportPdf` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(20) DEFAULT NULL,
  `reportIssueNo` varchar(20) DEFAULT NULL,
  `reportDate` varchar(30) DEFAULT NULL,
  `inputPerson` varchar(30) DEFAULT NULL,
  `inputDate` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `reportReceipt` varchar(30) DEFAULT NULL,
  `reportPerson` varchar(30) DEFAULT NULL,
  `checkProject` varchar(50) DEFAULT NULL,
  `emailState` varchar(30) DEFAULT '',
  `emailUpdateName` varchar(30) DEFAULT '',
  `emailUpdateTime` varchar(30) DEFAULT '',
  `emailSendName` varchar(30) DEFAULT '',
  `emailSendTime` varchar(30) DEFAULT '',
  PRIMARY KEY (`rrid`),
  KEY `reportSampleNo` (`updateName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_yxy_reportissue
-- ----------------------------

-- ----------------------------
-- Table structure for report_yxy_reportreview
-- ----------------------------
DROP TABLE IF EXISTS `report_yxy_reportreview`;
CREATE TABLE `report_yxy_reportreview` (
  `rrid` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `reportState` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `reportOpinion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `reportReviewName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportReviewTime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportPdf` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `updateName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `reportName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportMobile` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `inputName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `inputTime` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sjdgz` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `checkHospital` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `againSampleNo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `osReceiveDateTime` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `againReportOpinion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `isEmail` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `checkProject` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `againReceiveDate` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `collectionDate` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sampleType` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `reportOpinionCust` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `reportReviewNameCust` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reportReviewTimeCust` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `errorType` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `errorContent` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `errorFind` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `errorPerson` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `errorSpan` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `errorBefore` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `errorInputTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `errorUpdateName` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `errorUpdateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`rrid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of report_yxy_reportreview
-- ----------------------------

-- ----------------------------
-- Table structure for robot_info
-- ----------------------------
DROP TABLE IF EXISTS `robot_info`;
CREATE TABLE `robot_info` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `zhouqi` varchar(50) DEFAULT NULL,
  `inputtime` varchar(50) DEFAULT NULL,
  `userid` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of robot_info
-- ----------------------------

-- ----------------------------
-- Table structure for room_roomreagent
-- ----------------------------
DROP TABLE IF EXISTS `room_roomreagent`;
CREATE TABLE `room_roomreagent` (
  `roomReagentId` int(11) NOT NULL AUTO_INCREMENT,
  `roomReagentCount` int(11) DEFAULT NULL,
  `roomReagentName` varchar(100) NOT NULL,
  `roomReagentResidue` int(11) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`roomReagentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_roomreagent
-- ----------------------------

-- ----------------------------
-- Table structure for room_roomreagentadd
-- ----------------------------
DROP TABLE IF EXISTS `room_roomreagentadd`;
CREATE TABLE `room_roomreagentadd` (
  `roomReagentAddId` int(11) NOT NULL AUTO_INCREMENT,
  `roomReagentId` int(11) DEFAULT NULL,
  `rraCount` int(11) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`roomReagentAddId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_roomreagentadd
-- ----------------------------

-- ----------------------------
-- Table structure for room_roomreagentdel
-- ----------------------------
DROP TABLE IF EXISTS `room_roomreagentdel`;
CREATE TABLE `room_roomreagentdel` (
  `roomReagentDelId` int(11) NOT NULL AUTO_INCREMENT,
  `roomReagentId` int(11) DEFAULT NULL,
  `rrdCount` int(11) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`roomReagentDelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_roomreagentdel
-- ----------------------------

-- ----------------------------
-- Table structure for sample_abnormal
-- ----------------------------
DROP TABLE IF EXISTS `sample_abnormal`;
CREATE TABLE `sample_abnormal` (
  `outSampleId` int(11) NOT NULL AUTO_INCREMENT,
  `handleType` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `osCheckProject` varchar(50) DEFAULT NULL,
  `osReceiveDateTime` varchar(30) DEFAULT NULL,
  `outSampleNo` varchar(50) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `replyName` varchar(30) DEFAULT NULL,
  `replyTime` varchar(30) DEFAULT NULL,
  `sampleTypeName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `remark` text,
  `imgPath` varchar(255) DEFAULT NULL,
  `outSampleNum` int(11) DEFAULT NULL,
  `osSampleState` varchar(40) DEFAULT NULL,
  `resampling` varchar(30) DEFAULT NULL,
  `outSampleUnit` varchar(50) DEFAULT NULL,
  `osStorageLocation` varchar(30) DEFAULT NULL,
  `duiZhaoSampleNo` varchar(50) DEFAULT NULL,
  `cusName` varchar(30) DEFAULT NULL,
  `confirmation` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`outSampleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_abnormal
-- ----------------------------

-- ----------------------------
-- Table structure for sample_actionpath
-- ----------------------------
DROP TABLE IF EXISTS `sample_actionpath`;
CREATE TABLE `sample_actionpath` (
  `actionPathId` int(11) NOT NULL AUTO_INCREMENT,
  `actionName` varchar(50) NOT NULL,
  `flowPathModuleName` varchar(50) NOT NULL,
  `flowPathNo` varchar(50) NOT NULL,
  `entityName` varchar(50) DEFAULT NULL,
  `processMode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`actionPathId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_actionpath
-- ----------------------------

-- ----------------------------
-- Table structure for sample_aez_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_aez_child`;
CREATE TABLE `sample_aez_child` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL COMMENT '样本编号',
  `checkcompony` varchar(50) DEFAULT NULL COMMENT '送检单位',
  `yblx` varchar(20) DEFAULT NULL COMMENT '样本类型',
  `qita1` varchar(50) DEFAULT NULL COMMENT '其他样本',
  `samplingdate` varchar(20) DEFAULT NULL COMMENT '取样日期',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(20) DEFAULT NULL COMMENT '性别',
  `age` varchar(10) DEFAULT NULL COMMENT '年龄',
  `nation` varchar(20) DEFAULT NULL COMMENT '民族',
  `jiguan` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `sfzh` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `telphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(50) DEFAULT NULL COMMENT '通讯地址',
  `sickhistory1` varchar(50) DEFAULT NULL COMMENT '个人疾病史',
  `sickage1` varchar(20) DEFAULT NULL COMMENT '发病年龄',
  `lczd1` varchar(50) DEFAULT NULL COMMENT '临床诊断',
  `lcbx` varchar(50) DEFAULT NULL COMMENT '临床表现',
  `zlqk` varchar(50) DEFAULT NULL COMMENT '治疗情况',
  `sickhistory2` varchar(50) DEFAULT NULL COMMENT '其他疾病史',
  `aezhistory` varchar(50) DEFAULT NULL COMMENT '阿尔兹海默病家族 史',
  `family` varchar(50) DEFAULT NULL COMMENT '与受检者关系',
  `fsickage` varchar(50) DEFAULT NULL COMMENT '发病年龄',
  `lczd2` varchar(50) DEFAULT NULL COMMENT '临床诊断',
  `yanpd` varchar(50) DEFAULT NULL COMMENT '烟',
  `jiupd` varchar(50) DEFAULT NULL COMMENT '酒',
  `yaopd` varchar(50) DEFAULT NULL COMMENT '药判断',
  `yao` varchar(50) DEFAULT NULL COMMENT '药',
  `lvpd` varchar(50) DEFAULT NULL COMMENT '铝盐等重金属盐',
  `yjrjpd` varchar(50) DEFAULT NULL COMMENT '有机溶剂',
  `scjpd` varchar(50) DEFAULT NULL COMMENT '杀虫剂',
  `qtpd1` varchar(50) DEFAULT NULL COMMENT '是否有其他',
  `qt1` varchar(50) DEFAULT NULL COMMENT '其他',
  `bzbpd` varchar(50) DEFAULT NULL COMMENT '是否有标准版',
  `bzb` varchar(50) DEFAULT NULL COMMENT '标准版',
  `qtpd2` varchar(50) DEFAULT NULL COMMENT '是否有其他',
  `qt2` varchar(50) DEFAULT NULL COMMENT '其他',
  `sign1` varchar(50) DEFAULT NULL COMMENT '受检者签名',
  `sign2` varchar(50) DEFAULT NULL COMMENT '监护人签名',
  `sign2relation` varchar(50) DEFAULT NULL COMMENT '与患者关系',
  `signdate1` varchar(50) DEFAULT NULL COMMENT '签字日期',
  `doctorsign` varchar(50) DEFAULT NULL COMMENT '送检医生签名',
  `signdate2` varchar(50) DEFAULT NULL COMMENT '送检医生签字日期',
  `f1name` varchar(50) DEFAULT NULL COMMENT '亲属1姓名',
  `f1sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `f1age` varchar(50) DEFAULT NULL COMMENT '年龄',
  `f1relation` varchar(50) DEFAULT NULL COMMENT '与受检者关系',
  `f1lcbx` varchar(50) DEFAULT NULL COMMENT '临床表现',
  `f2name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `f2sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `f2age` varchar(50) DEFAULT NULL COMMENT '年龄',
  `f2relation` varchar(50) DEFAULT NULL COMMENT '与受检者关系',
  `f2lcbx` varchar(50) DEFAULT NULL COMMENT '临床表现',
  `fsign` varchar(50) DEFAULT NULL COMMENT '亲属签名',
  `fdate` varchar(50) DEFAULT NULL COMMENT '日期',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_aez_child
-- ----------------------------

-- ----------------------------
-- Table structure for sample_aez_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_aez_jd`;
CREATE TABLE `sample_aez_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL,
  `ybbh` varchar(20) DEFAULT NULL,
  `xm` varchar(20) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `yl` varchar(5) DEFAULT NULL,
  `ylr` varchar(20) DEFAULT NULL,
  `yltime` varchar(20) DEFAULT NULL,
  `ylid` int(10) DEFAULT NULL,
  `el` varchar(5) DEFAULT NULL,
  `elr` varchar(20) DEFAULT NULL,
  `elid` int(10) DEFAULT NULL,
  `eltime` varchar(20) DEFAULT NULL,
  `ys` varchar(5) DEFAULT NULL,
  `ysr` varchar(20) DEFAULT NULL,
  `ysid` int(10) DEFAULT NULL,
  `ystime` varchar(20) DEFAULT NULL,
  `es` varchar(5) DEFAULT NULL,
  `esr` varchar(20) DEFAULT NULL,
  `esid` int(10) DEFAULT NULL,
  `estime` varchar(20) DEFAULT NULL,
  `sctime` varchar(20) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_aez_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_aez_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_aez_log`;
CREATE TABLE `sample_aez_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_aez_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_bgi_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_bgi_jd`;
CREATE TABLE `sample_bgi_jd` (
  `bgid` int(20) NOT NULL AUTO_INCREMENT,
  `imgsjd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ybbh` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `checkproject` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `collectionTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sjdw` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cusName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `toresult` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `etresult` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ttresult` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sjdState` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `reportState` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imgreport` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inputTimeBG` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inputNameBG` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inputTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inputName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `inputTimeBGimg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inputNameBGimg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inputTimeimg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inputNameimg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `del` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `districtr` text CHARACTER SET utf8,
  `districtsjd` text CHARACTER SET utf8,
  PRIMARY KEY (`bgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sample_bgi_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_binding
-- ----------------------------
DROP TABLE IF EXISTS `sample_binding`;
CREATE TABLE `sample_binding` (
  `adbindingId` int(11) NOT NULL AUTO_INCREMENT,
  `age_of_onset` varchar(50) DEFAULT NULL,
  `clinical_diagnosis` varchar(50) DEFAULT NULL,
  `contact_history` varchar(50) DEFAULT NULL,
  `date_or_birth` varchar(50) DEFAULT NULL,
  `drug_name` varchar(50) DEFAULT NULL,
  `family_history` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `history_of_disease` varchar(50) DEFAULT NULL,
  `material_name` varchar(50) DEFAULT NULL,
  `medication_history` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `sample_number` varchar(50) DEFAULT NULL,
  `treatment_situation` varchar(50) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `update_user` varchar(30) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adbindingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_binding
-- ----------------------------

-- ----------------------------
-- Table structure for sample_change_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_change_log`;
CREATE TABLE `sample_change_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_checkdirection
-- ----------------------------
DROP TABLE IF EXISTS `sample_checkdirection`;
CREATE TABLE `sample_checkdirection` (
  `checkDirectId` int(11) NOT NULL AUTO_INCREMENT,
  `checkDirectionName` varchar(50) NOT NULL,
  PRIMARY KEY (`checkDirectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_checkdirection
-- ----------------------------

-- ----------------------------
-- Table structure for sample_checkproduct
-- ----------------------------
DROP TABLE IF EXISTS `sample_checkproduct`;
CREATE TABLE `sample_checkproduct` (
  `checkProductId` int(11) NOT NULL AUTO_INCREMENT,
  `checkDirectionId` int(11) DEFAULT NULL,
  `checkProductName` varchar(50) NOT NULL,
  `checkDirectionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`checkProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_checkproduct
-- ----------------------------

-- ----------------------------
-- Table structure for sample_checkproject
-- ----------------------------
DROP TABLE IF EXISTS `sample_checkproject`;
CREATE TABLE `sample_checkproject` (
  `checkProjectId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProductId` int(11) DEFAULT NULL,
  `checkProjectName` varchar(50) NOT NULL,
  `checkProductName` varchar(50) DEFAULT NULL,
  `productCategory` varchar(50) DEFAULT NULL,
  `fourthProduct` varchar(50) DEFAULT NULL,
  `sampleNoRule` varchar(50) DEFAULT NULL,
  `sign` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`checkProjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_checkproject
-- ----------------------------
INSERT INTO `sample_checkproject` VALUES ('1', '1', '优馨安--无创产前基因检测', '优馨安--无创产前基因检测', '产前', '优馨安-无创', null, null);
INSERT INTO `sample_checkproject` VALUES ('2', '1', '优馨安--无创产前基因检测（NIPT+）', '优馨安', '产前', '优馨安-NIPT+', null, null);
INSERT INTO `sample_checkproject` VALUES ('4', '2', '优馨益--流产组织染色体异常检测', '优馨益', '产前', '优馨益-染色体', null, null);
INSERT INTO `sample_checkproject` VALUES ('5', '2', '优馨益--地中海贫血基因检测', '优馨益', '产前', '优馨益-地贫', null, null);
INSERT INTO `sample_checkproject` VALUES ('6', '5', '阿尔茨海默病', '阿尔茨海默病', '产前', '', null, null);
INSERT INTO `sample_checkproject` VALUES ('7', '4', '优替--标准版（60基因）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('8', '4', '优替--单项癌种（胃癌）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('10', '4', '优替--单项癌种（肺癌）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-肺癌', null, null);
INSERT INTO `sample_checkproject` VALUES ('11', '4', '优替--单项癌种（乳腺癌）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('12', '4', '优替--单项癌种（卵巢癌）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('13', '4', '优替--单项癌种（结直肠癌）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('14', '4', '优替--化疗用药指导', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('15', '4', '优替--高级版（549基因）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('16', '4', '优替--乳腺癌21基因', '优替TM个体化诊疗基因检测', '肿瘤', '优替-21基因', null, null);
INSERT INTO `sample_checkproject` VALUES ('17', '4', '优替--MSI（肿瘤细胞微卫星不稳定性检测）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-MSI', null, null);
INSERT INTO `sample_checkproject` VALUES ('18', '4', '优替--肺癌靶药单项（天津）', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('20', '6', '优逸--全套餐（43项肿瘤）', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('21', '6', '优逸--男15项肿瘤', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('22', '6', '优逸--女16项肿瘤', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('23', '6', '优逸--乳腺癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('24', '6', '优逸--结直肠癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('25', '6', '优逸--子宫内膜癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('26', '6', '优逸--卵巢癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('27', '6', '优逸--胃癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('28', '6', '优逸--甲状腺癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('29', '6', '优逸--胰腺癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('30', '6', '优逸--多发性骨软骨癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('31', '6', '优逸--黑色素癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('32', '6', '优逸--甲状旁腺癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('33', '6', '优逸--多发性神经纤维癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('34', '6', '优逸--家族性副神经节瘤单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('35', '6', '优逸--多发性内分泌瘤(1、2型)单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('36', '6', '优逸--视网膜母细胞癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('37', '6', '优逸--嗜络细胞瘤单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('38', '6', '优逸--前列腺癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('39', '6', '优逸--肾癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('40', '6', '优逸--肺癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('41', '6', '优逸--BRCA1/2', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('42', '6', '优逸--男15+肺癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('43', '6', '优逸--女16+肺癌单项', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('44', '7', '优旭--高级版（549基因）', '优旭', '肿瘤', '优旭-CTDNA', null, null);
INSERT INTO `sample_checkproject` VALUES ('45', '7', '优旭--标准版（60基因）', '优旭', '肿瘤', '优旭-CTDNA', null, null);
INSERT INTO `sample_checkproject` VALUES ('46', '7', '优旭--单项癌种（胃癌）', '优旭', '肿瘤', '优旭-CTDNA', null, null);
INSERT INTO `sample_checkproject` VALUES ('47', '7', '优旭--单项癌种（肺癌）', '优旭', '肿瘤', '优旭-肺癌', null, null);
INSERT INTO `sample_checkproject` VALUES ('48', '7', '优旭--单项癌种（乳腺癌）', '优旭', '肿瘤', '优旭-CTDNA', null, null);
INSERT INTO `sample_checkproject` VALUES ('49', '7', '优旭--单项癌种（卵巢癌）', '优旭', '肿瘤', '优旭-CTDNA', null, null);
INSERT INTO `sample_checkproject` VALUES ('50', '7', '优旭--单项癌种（结直肠癌）', '优旭', '肿瘤', '优旭-CTDNA', null, null);
INSERT INTO `sample_checkproject` VALUES ('51', '7', '优旭--CTC', '优旭', '肿瘤', '优旭-CTC', null, null);
INSERT INTO `sample_checkproject` VALUES ('69', '9', '优睿--高级套餐-225基因(900+种融合)', '优睿', '肿瘤', '优睿-225基因', null, null);
INSERT INTO `sample_checkproject` VALUES ('71', '2', '优馨益--新生儿遗传代谢病', '优馨益', '产前', '优馨益-新生儿', null, null);
INSERT INTO `sample_checkproject` VALUES ('72', '2', '优馨益--新生儿耳聋基因筛查', '优馨益', '产前', '优馨益-耳聋', null, null);
INSERT INTO `sample_checkproject` VALUES ('73', '6', '优逸--错配修复基因（MMR）', '优逸', '肿瘤', '优逸', null, null);
INSERT INTO `sample_checkproject` VALUES ('134', '4', '优替--单项癌种(胃肠道间质瘤)', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('135', '7', '优旭--单项癌种(胃肠道间质瘤)', '优旭', '肿瘤', '优旭-CTDNA', null, null);
INSERT INTO `sample_checkproject` VALUES ('136', '4', '优替--错配基因检测', '优替TM个体化诊疗基因检测', '肿瘤', '优替-个体化', null, null);
INSERT INTO `sample_checkproject` VALUES ('142', '9', '优睿--DCA科研项目(AE定量)', '优睿', '肿瘤', '优睿-AE定量', null, null);
INSERT INTO `sample_checkproject` VALUES ('144', '2', '孕产期健康--营养吸收与代谢套餐', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('145', '2', '孕产期健康--维生素10项', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('146', '2', '孕产期健康--微量元素6项', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('147', '2', '孕产期健康--叶酸代谢', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('148', '2', '孕产期健康--乳糖代谢', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('149', '2', '孕产期健康--妊娠糖尿病', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('150', '2', '孕产期健康--妊娠高血压', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('151', '2', '孕产期健康--肝内胆汁淤积', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('152', '2', '孕产期健康--产后抑郁', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('153', '2', '孕产期健康--多囊卵巢综合征', '优馨益', '产前', '优馨益-孕产期', null, null);
INSERT INTO `sample_checkproject` VALUES ('154', '4', '优替--PD-L1检测', '优替TM个体化诊疗基因检测', '肿瘤', 'PD-L1', null, null);
INSERT INTO `sample_checkproject` VALUES ('155', '7', '优旭--CTC+靶药', '优旭', '肿瘤', '优旭-CTC', null, null);
INSERT INTO `sample_checkproject` VALUES ('173', '2', '优馨益--胎儿染色体异常检测', '优馨益', '产前', '优馨益-染色体', null, null);
INSERT INTO `sample_checkproject` VALUES ('174', '2', '优馨益--成人染色体异常检测', '优馨益', '产前', '优馨益-染色体', null, null);
INSERT INTO `sample_checkproject` VALUES ('175', '2', '优馨益--新生儿/未成年人染色体异常检测', '优馨益', '产前', '优馨益-染色体', null, null);
INSERT INTO `sample_checkproject` VALUES ('177', '9', '优睿--染色体异常检测', '优睿', '肿瘤', '优睿-染色体', null, null);
INSERT INTO `sample_checkproject` VALUES ('178', '9', '优睿--个性化微残检测(定制)', '优睿', '肿瘤', '优睿-微残(定制)', null, null);
INSERT INTO `sample_checkproject` VALUES ('179', '9', '优睿--个性化微残检测(常规)', '优睿', '肿瘤', '优睿-微残(常规)', null, null);

-- ----------------------------
-- Table structure for sample_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_child`;
CREATE TABLE `sample_child` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有些会冲突',
  `num` varchar(50) DEFAULT NULL,
  `blood` varchar(50) DEFAULT NULL,
  `xtime` varchar(50) DEFAULT NULL,
  `hospital` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `xname` varchar(100) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `birthdate` varchar(20) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `haveweekw` varchar(50) DEFAULT NULL,
  `haveweekd` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `lastyj` varchar(20) DEFAULT NULL,
  `lczd` varchar(100) DEFAULT NULL,
  `jybs` varchar(100) DEFAULT NULL,
  `ytsx` varchar(20) DEFAULT NULL,
  `ytsxpd` varchar(20) DEFAULT NULL,
  `myzlpd` varchar(20) DEFAULT NULL,
  `myzl` varchar(20) DEFAULT NULL,
  `yzss` varchar(50) DEFAULT NULL,
  `gxbzl` varchar(50) DEFAULT NULL,
  `bc` varchar(50) DEFAULT NULL,
  `bcyc` varchar(50) DEFAULT NULL,
  `scms` varchar(50) DEFAULT NULL,
  `mxqsc` varchar(50) DEFAULT NULL,
  `santi21` varchar(50) DEFAULT NULL,
  `santi18` varchar(50) DEFAULT NULL,
  `ntd` varchar(50) DEFAULT NULL,
  `agedanger` varchar(50) DEFAULT NULL,
  `husband` varchar(50) DEFAULT NULL,
  `husbandyc` varchar(50) DEFAULT NULL,
  `wife` varchar(50) DEFAULT NULL,
  `wifeyc` varchar(50) DEFAULT NULL,
  `yunc` varchar(50) DEFAULT NULL,
  `chanc` varchar(50) DEFAULT NULL,
  `renc` varchar(50) DEFAULT NULL,
  `zic` varchar(50) DEFAULT NULL,
  `shunc` varchar(50) DEFAULT NULL,
  `poc` varchar(50) DEFAULT NULL,
  `ivfc` varchar(50) DEFAULT NULL,
  `gwyc` varchar(50) DEFAULT NULL,
  `pttc` varchar(50) DEFAULT NULL,
  `stc` varchar(50) DEFAULT NULL,
  `xsesc` varchar(50) DEFAULT NULL,
  `jxe` varchar(50) DEFAULT NULL,
  `qtsm` varchar(255) DEFAULT NULL,
  `yfqz` varchar(50) DEFAULT NULL,
  `sfzh` varchar(50) DEFAULT NULL,
  `sjys` varchar(50) DEFAULT NULL,
  `qzrq1` varchar(20) DEFAULT NULL,
  `yfty` varchar(50) DEFAULT NULL,
  `qzrq2` varchar(20) DEFAULT NULL,
  `bz` text,
  `receivedatetime` varchar(50) DEFAULT NULL,
  `sjdgz` varchar(255) DEFAULT NULL,
  `stature` varchar(30) DEFAULT NULL,
  `csyz` varchar(30) DEFAULT NULL,
  `csyt` varchar(30) DEFAULT NULL,
  `ntcd` varchar(30) DEFAULT NULL,
  `zrpt` varchar(30) DEFAULT NULL,
  `zrsj` varchar(30) DEFAULT NULL,
  `qddt` varchar(30) DEFAULT NULL,
  `blycs` varchar(30) DEFAULT NULL,
  `mzh` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_child
-- ----------------------------

-- ----------------------------
-- Table structure for sample_experimentalabnormal
-- ----------------------------
DROP TABLE IF EXISTS `sample_experimentalabnormal`;
CREATE TABLE `sample_experimentalabnormal` (
  `experimentalAbnormalId` int(11) NOT NULL AUTO_INCREMENT,
  `biologicalAnalyzerCount` varchar(10) DEFAULT NULL,
  `biologicalAnalyzerNo` varchar(50) DEFAULT NULL,
  `biologicalAnalyzerResult` varchar(10) DEFAULT NULL,
  `biologicalComputerCount` varchar(10) DEFAULT NULL,
  `biologicalComputerNo` varchar(50) DEFAULT NULL,
  `biologicalComputerResult` varchar(10) DEFAULT NULL,
  `buildLibrariesCount` varchar(10) DEFAULT NULL,
  `buildLibrariesNo` varchar(50) DEFAULT NULL,
  `buildLibrariesResult` varchar(10) DEFAULT NULL,
  `causeFailure` varchar(255) DEFAULT NULL,
  `checkProjectName` varchar(50) NOT NULL,
  `feedbackqcStrategy` varchar(50) DEFAULT NULL,
  `linkFailure` varchar(50) NOT NULL,
  `nucleicacidsCount` varchar(10) DEFAULT NULL,
  `nucleicacidsNo` varchar(50) DEFAULT NULL,
  `nucleicacidsResult` varchar(10) DEFAULT NULL,
  `orderDetailsId` int(11) NOT NULL,
  `outSampleCount` varchar(10) DEFAULT NULL,
  `outSampleNo` varchar(50) DEFAULT NULL,
  `outSampleResult` varchar(10) DEFAULT NULL,
  `pretreatmentCount` varchar(10) DEFAULT NULL,
  `pretreatmentNo` varchar(50) DEFAULT NULL,
  `pretreatmentResult` varchar(10) DEFAULT NULL,
  `processMode` varchar(10) DEFAULT NULL,
  `qpcrCount` varchar(10) DEFAULT NULL,
  `qpcrNo` varchar(50) DEFAULT NULL,
  `qpcrResult` varchar(10) DEFAULT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `workOrderNoId` int(11) NOT NULL,
  `failureSampleNo` varchar(50) NOT NULL,
  `analysisResultNo` varchar(100) DEFAULT NULL,
  `analysisResultCount` varchar(10) DEFAULT NULL,
  `analysisResultResult` varchar(10) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `tumourHybridNo` varchar(50) DEFAULT NULL,
  `tumourHybridCount` varchar(10) DEFAULT NULL,
  `tumourHybridResult` varchar(10) DEFAULT NULL,
  `processRemark` varchar(200) DEFAULT NULL,
  `photoPath` varchar(255) DEFAULT NULL,
  `yqyy` varchar(100) DEFAULT '',
  PRIMARY KEY (`experimentalAbnormalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_experimentalabnormal
-- ----------------------------

-- ----------------------------
-- Table structure for sample_failure_push
-- ----------------------------
DROP TABLE IF EXISTS `sample_failure_push`;
CREATE TABLE `sample_failure_push` (
  `failureId` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `interfaceFailure` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `pushstatus` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `updateName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `inputTime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `inputName` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`failureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sample_failure_push
-- ----------------------------

-- ----------------------------
-- Table structure for sample_flowpath
-- ----------------------------
DROP TABLE IF EXISTS `sample_flowpath`;
CREATE TABLE `sample_flowpath` (
  `flowPathId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProjectName` varchar(50) NOT NULL,
  `plowPath` varchar(50) NOT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`flowPathId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_flowpath
-- ----------------------------

-- ----------------------------
-- Table structure for sample_index
-- ----------------------------
DROP TABLE IF EXISTS `sample_index`;
CREATE TABLE `sample_index` (
  `indexManagerId` int(11) NOT NULL AUTO_INCREMENT,
  `indexNumber` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `useNumber` int(11) DEFAULT NULL,
  `useSampleNo` longtext,
  PRIMARY KEY (`indexManagerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_index
-- ----------------------------

-- ----------------------------
-- Table structure for sample_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_jd`;
CREATE TABLE `sample_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL,
  `ybbh` varchar(20) DEFAULT NULL,
  `hospital` varchar(50) DEFAULT NULL,
  `sjys` varchar(20) DEFAULT NULL,
  `xtime` varchar(20) DEFAULT NULL,
  `yfxm` varchar(100) DEFAULT NULL,
  `sfzh` varchar(255) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `yl` varchar(50) DEFAULT NULL,
  `ylr` varchar(20) DEFAULT NULL,
  `yltime` varchar(20) DEFAULT NULL,
  `ylid` int(10) DEFAULT NULL,
  `el` varchar(50) DEFAULT NULL,
  `elr` varchar(20) DEFAULT NULL,
  `elid` int(10) DEFAULT NULL,
  `eltime` varchar(20) DEFAULT NULL,
  `ys` varchar(50) DEFAULT NULL,
  `ysr` varchar(20) DEFAULT NULL,
  `ysid` int(10) DEFAULT NULL,
  `ystime` varchar(20) DEFAULT NULL,
  `es` varchar(50) DEFAULT NULL,
  `esr` varchar(20) DEFAULT NULL,
  `esid` int(10) DEFAULT NULL,
  `estime` varchar(20) DEFAULT NULL,
  `sctime` varchar(20) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `filestyle` varchar(20) DEFAULT NULL,
  `imgupdatetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `ybbh` (`ybbh`) USING BTREE,
  KEY `esid` (`esid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_log`;
CREATE TABLE `sample_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_meetingdiscuss
-- ----------------------------
DROP TABLE IF EXISTS `sample_meetingdiscuss`;
CREATE TABLE `sample_meetingdiscuss` (
  `meetingDiscussId` int(11) NOT NULL AUTO_INCREMENT,
  `anaOtherSuggest` varchar(100) DEFAULT NULL,
  `anaResultDes` varchar(100) DEFAULT NULL,
  `anaSpecialResult` varchar(100) DEFAULT NULL,
  `anaT13Result` varchar(30) DEFAULT NULL,
  `anaT13Value` double DEFAULT NULL,
  `anaT18Result` varchar(30) DEFAULT NULL,
  `anaT18Value` double DEFAULT NULL,
  `anaT21Result` varchar(30) DEFAULT NULL,
  `anaT21Value` double DEFAULT NULL,
  `discussState` varchar(30) DEFAULT NULL,
  `firstResult` varchar(100) DEFAULT NULL,
  `participants` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `secondResult` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `anaReportState` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`meetingDiscussId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_meetingdiscuss
-- ----------------------------

-- ----------------------------
-- Table structure for sample_num
-- ----------------------------
DROP TABLE IF EXISTS `sample_num`;
CREATE TABLE `sample_num` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `dnum` varchar(20) DEFAULT NULL,
  `ynum` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_num
-- ----------------------------

-- ----------------------------
-- Table structure for sample_outsample
-- ----------------------------
DROP TABLE IF EXISTS `sample_outsample`;
CREATE TABLE `sample_outsample` (
  `outSampleId` int(11) NOT NULL AUTO_INCREMENT,
  `SampleTypeId` int(11) DEFAULT NULL,
  `SampleTypeName` varchar(30) DEFAULT NULL,
  `cusDocumentNo` varchar(50) DEFAULT NULL,
  `cusName` varchar(30) DEFAULT NULL,
  `osCheckProject` longtext,
  `osReceiveDateTime` varchar(30) DEFAULT NULL,
  `osSampleState` varchar(40) DEFAULT NULL,
  `osStorageLocation` varchar(30) DEFAULT NULL,
  `outSampleNo` varchar(50) NOT NULL,
  `outSampleNum` int(11) DEFAULT NULL,
  `outSampleUnit` varchar(50) DEFAULT NULL,
  `remark` longtext,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `osSamplePushState` varchar(100) DEFAULT NULL,
  `sampleSurplus` varchar(20) DEFAULT NULL,
  `resampling` varchar(30) DEFAULT NULL,
  `duiZhaoSampleNo` varchar(50) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`outSampleId`),
  KEY `outsample` (`outSampleNo`) USING BTREE,
  KEY `count_sampleNo` (`outSampleNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_outsample
-- ----------------------------

-- ----------------------------
-- Table structure for sample_public_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_public_child`;
CREATE TABLE `sample_public_child` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `bloodtime` varchar(50) DEFAULT NULL,
  `bxhistorypd` varchar(50) DEFAULT NULL,
  `bz` varchar(100) DEFAULT NULL,
  `checkproject` varchar(50) DEFAULT NULL,
  `checkprojectpd` varchar(50) DEFAULT NULL,
  `cslqph` varchar(50) DEFAULT NULL,
  `cslqppd` varchar(50) DEFAULT NULL,
  `cslqpz` varchar(50) DEFAULT NULL,
  `curehistorypd` varchar(50) DEFAULT NULL,
  `cxxzz` varchar(50) DEFAULT NULL,
  `cxxzzpd` varchar(50) DEFAULT NULL,
  `danwei` varchar(50) DEFAULT NULL,
  `doctor` varchar(50) DEFAULT NULL,
  `doctortelphone` varchar(50) DEFAULT NULL,
  `familyhistory` varchar(50) DEFAULT NULL,
  `familyrelation` varchar(50) DEFAULT NULL,
  `familysickage` varchar(50) DEFAULT NULL,
  `hlhistorypd` varchar(50) DEFAULT NULL,
  `jiguan` varchar(50) DEFAULT NULL,
  `keshi` varchar(50) DEFAULT NULL,
  `lbjzy` varchar(50) DEFAULT NULL,
  `lbjzyc` varchar(50) DEFAULT NULL,
  `lcfq` varchar(50) DEFAULT NULL,
  `lczd` varchar(50) DEFAULT NULL,
  `lczdnr` varchar(50) DEFAULT NULL,
  `lyqg` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL,
  `qita` varchar(50) DEFAULT NULL,
  `qitapd` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `sfzh` varchar(50) DEFAULT NULL,
  `sickage` varchar(50) DEFAULT NULL,
  `sickhistory` varchar(50) DEFAULT NULL,
  `smokepd` varchar(50) DEFAULT NULL,
  `sslqph` varchar(50) DEFAULT NULL,
  `sslqppd` varchar(50) DEFAULT NULL,
  `sslqpz` varchar(50) DEFAULT NULL,
  `sxxzz` varchar(50) DEFAULT NULL,
  `sxxzzpd` varchar(50) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `waizhouxue` varchar(50) DEFAULT NULL,
  `waizhouxuepd` varchar(50) DEFAULT NULL,
  `xfshui` varchar(50) DEFAULT NULL,
  `xfshuipd` varchar(50) DEFAULT NULL,
  `xyyw` varchar(50) DEFAULT NULL,
  `ybfz` varchar(50) DEFAULT NULL,
  `yczyc` varchar(50) DEFAULT NULL,
  `zlfy` varchar(50) DEFAULT NULL,
  `zzms` varchar(50) DEFAULT NULL,
  `familyhistorynr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_public_child
-- ----------------------------

-- ----------------------------
-- Table structure for sample_public_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_public_jd`;
CREATE TABLE `sample_public_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `luid` int(10) DEFAULT NULL,
  `ybbh` varchar(50) DEFAULT NULL COMMENT '样本编号',
  `checkproject` varchar(50) DEFAULT NULL COMMENT '送检医院',
  `name` varchar(50) DEFAULT NULL COMMENT '送检医生',
  `age` varchar(50) DEFAULT NULL COMMENT '抽血时间',
  `yblx` varchar(200) DEFAULT NULL COMMENT '姓名',
  `telphone` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `doctor` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `bloodtime` varchar(50) DEFAULT NULL COMMENT '是否一录',
  `tjpd` varchar(50) DEFAULT NULL COMMENT '一录人',
  `dysjdpd` varchar(50) DEFAULT NULL COMMENT '一录时间',
  `dysjpd` varchar(50) DEFAULT NULL,
  `skfs` varchar(50) DEFAULT NULL COMMENT '一录id',
  `skje` int(10) DEFAULT NULL COMMENT '二录',
  `tjr` varchar(50) DEFAULT NULL,
  `tjtime` varchar(50) DEFAULT NULL,
  `sjdaddress` varchar(100) DEFAULT NULL,
  `sjaddress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_public_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_resamplingnotice
-- ----------------------------
DROP TABLE IF EXISTS `sample_resamplingnotice`;
CREATE TABLE `sample_resamplingnotice` (
  `reSamplingNoticeId` int(11) NOT NULL AUTO_INCREMENT,
  `reportTime` varchar(30) DEFAULT NULL,
  `abnormalReason` varchar(100) DEFAULT NULL,
  `abnormalSituation` varchar(30) DEFAULT NULL,
  `arriveTime` varchar(30) DEFAULT NULL,
  `checkProject` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `exceptionHandling` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `notificationDate` varchar(30) DEFAULT NULL,
  `productType` varchar(30) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `rsRecipient` varchar(30) DEFAULT NULL,
  `rsState` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `samplingTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `yqyy` varchar(100) DEFAULT '',
  PRIMARY KEY (`reSamplingNoticeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_resamplingnotice
-- ----------------------------

-- ----------------------------
-- Table structure for sample_safe_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_safe_child`;
CREATE TABLE `sample_safe_child` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL,
  `safetype` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `xname` varchar(50) DEFAULT NULL,
  `sfzh` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `fxname` varchar(50) DEFAULT NULL,
  `fzj` varchar(50) DEFAULT NULL,
  `fzjh` varchar(50) DEFAULT NULL,
  `fbirthdate` varchar(50) DEFAULT NULL,
  `yfqm` varchar(50) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `qsqm` varchar(50) DEFAULT NULL,
  `relative` varchar(50) DEFAULT NULL,
  `qstelphone` varchar(50) DEFAULT NULL,
  `qsdate` varchar(50) DEFAULT NULL,
  `jydq` varchar(50) DEFAULT NULL,
  `bz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_safe_child
-- ----------------------------

-- ----------------------------
-- Table structure for sample_safe_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_safe_jd`;
CREATE TABLE `sample_safe_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sfzh` varchar(50) DEFAULT NULL,
  `yl` varchar(50) DEFAULT NULL,
  `ylr` varchar(50) DEFAULT NULL,
  `yltime` varchar(50) DEFAULT NULL,
  `ylid` int(10) DEFAULT NULL,
  `uploadtime` varchar(50) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `imgupdatetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_safe_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_salescontacts
-- ----------------------------
DROP TABLE IF EXISTS `sample_salescontacts`;
CREATE TABLE `sample_salescontacts` (
  `salescontactsId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(30) DEFAULT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `saleEmail` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `internalOrno` varchar(30) DEFAULT NULL,
  `isQuit` varchar(30) DEFAULT NULL,
  `cityHead` varchar(30) DEFAULT NULL,
  `ssx` varchar(300) DEFAULT NULL,
  `saleHead` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`salescontactsId`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_salescontacts
-- ----------------------------
INSERT INTO `sample_salescontacts` VALUES ('32', '北京市海淀区四季青桥益园文创基地C7', '总部', '北京', '黄金龙;马达佳;顾文杰', '15101093727', 'chunkezhang@scisoon.cn', '张春可', '张春可', '2018-03-21 10:00:19', '直营', '正常', '黄金龙;马达佳;顾文杰', '', '黄金龙');
INSERT INTO `sample_salescontacts` VALUES ('33', '北京市海淀区四季青桥益园文创基地C7', '总部', '北京', '黄金龙', '13011891948', 'jinlonghuang@scisoon.cn', '黄金龙', '演示', '2018-03-20 19:18:57', '直营', '正常', '黄金龙', '', '黄金龙');
INSERT INTO `sample_salescontacts` VALUES ('34', '北京市海淀区四季青桥益园文创基地C7', '总部', '北京', '黄金龙', '18800100830', 'xinyaowang@scisoon.cn', '王鑫尧', '张春可', '2018-03-20 19:36:16', '直营', '正常', '黄金龙', '', '黄金龙');
INSERT INTO `sample_salescontacts` VALUES ('35', '北京市海淀区四季青桥益园文创基地C7', '总部', '北京', '黄金龙', '13439124178', 'dajiama@scisoon.cn', '马达佳', '张春可', '2018-03-21 09:57:29', '直营', '正常', '黄金龙', '', '黄金龙');
INSERT INTO `sample_salescontacts` VALUES ('36', '北京市海淀区四季青桥益园文创基地C7', '总部', '北京', '黄金龙', '15001116947', 'wenjiegu@scisoon.cn', '顾文杰', '张春可', '2018-03-22 14:51:42', '直营', '正常', '黄金龙', '', '黄金龙');

-- ----------------------------
-- Table structure for sample_samplegtasks
-- ----------------------------
DROP TABLE IF EXISTS `sample_samplegtasks`;
CREATE TABLE `sample_samplegtasks` (
  `sampleGtasksId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProjectName` varchar(50) NOT NULL,
  `originalSampleNo` varchar(50) NOT NULL,
  `sampleGtasksNo` varchar(50) NOT NULL,
  `sampleGtasksState` varchar(10) NOT NULL,
  `sampleModuleName` varchar(50) NOT NULL,
  `sampleTypeName` varchar(50) NOT NULL,
  `superSampleNo` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `buildFeedbackStrategy` varchar(50) DEFAULT NULL,
  `orderSampleUnit` varchar(20) DEFAULT NULL,
  `osReceiveDateTime` varchar(30) DEFAULT NULL,
  `priority` int(30) DEFAULT '0',
  `workOrderNo` varchar(50) DEFAULT NULL,
  `superOverTime` varchar(50) DEFAULT NULL,
  `buildLibrariesMethod` varchar(50) DEFAULT NULL,
  `purificationConcentration` varchar(50) DEFAULT '',
  `purificationVolume` varchar(50) DEFAULT '',
  `feedbackTotalAmount` varchar(50) DEFAULT '',
  `diluentConcentration` varchar(50) DEFAULT '',
  `diluentVolume` varchar(50) DEFAULT '',
  `orderProjectNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`sampleGtasksId`),
  KEY `originalSampleNo` (`originalSampleNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_samplegtasks
-- ----------------------------

-- ----------------------------
-- Table structure for sample_sampletrack
-- ----------------------------
DROP TABLE IF EXISTS `sample_sampletrack`;
CREATE TABLE `sample_sampletrack` (
  `sampleTrackId` int(11) NOT NULL AUTO_INCREMENT,
  `checkProjectName` varchar(50) NOT NULL,
  `sampleNo` varchar(50) NOT NULL,
  `sampleTrackState` varchar(50) DEFAULT NULL,
  `sampleName` varchar(30) DEFAULT NULL,
  `sampleMobile` varchar(30) DEFAULT NULL,
  `sampleIdCard` varchar(30) DEFAULT NULL,
  `reportPdf` varchar(100) DEFAULT NULL,
  `expressCompany` varchar(30) DEFAULT NULL,
  `expressNo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sampleTrackId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_sampletrack
-- ----------------------------

-- ----------------------------
-- Table structure for sample_sampletrackdetails
-- ----------------------------
DROP TABLE IF EXISTS `sample_sampletrackdetails`;
CREATE TABLE `sample_sampletrackdetails` (
  `sampleTrackDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `sampleLink` varchar(50) NOT NULL,
  `sampleResult` varchar(50) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `sampleTrackId` int(11) NOT NULL,
  PRIMARY KEY (`sampleTrackDetailsId`),
  KEY `FK6A5F59F687BB39B9` (`sampleTrackId`),
  CONSTRAINT `FK6A5F59F687BB39B9` FOREIGN KEY (`sampleTrackId`) REFERENCES `sample_sampletrack` (`sampleTrackId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_sampletrackdetails
-- ----------------------------

-- ----------------------------
-- Table structure for sample_sampletype
-- ----------------------------
DROP TABLE IF EXISTS `sample_sampletype`;
CREATE TABLE `sample_sampletype` (
  `SampleTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `SampleTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`SampleTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_sampletype
-- ----------------------------

-- ----------------------------
-- Table structure for sample_samplingmakeup
-- ----------------------------
DROP TABLE IF EXISTS `sample_samplingmakeup`;
CREATE TABLE `sample_samplingmakeup` (
  `samplingMakeupId` int(11) NOT NULL AUTO_INCREMENT,
  `againGestationalDays` varchar(30) DEFAULT NULL,
  `againGestationalWeeks` varchar(30) DEFAULT NULL,
  `againSampleNo` varchar(30) DEFAULT NULL,
  `againSamplingDate` varchar(30) DEFAULT NULL,
  `gestationalDays` varchar(30) DEFAULT NULL,
  `gestationalWeeks` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `samplingDate` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`samplingMakeupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_samplingmakeup
-- ----------------------------

-- ----------------------------
-- Table structure for sample_th_change_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_th_change_log`;
CREATE TABLE `sample_th_change_log` (
  `thid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`thid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_th_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_th_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_th_child`;
CREATE TABLE `sample_th_child` (
  `thid` int(20) NOT NULL AUTO_INCREMENT,
  `ybbh` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sjdw` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sampleType` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sjzname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `collectionTime` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `xsjzname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `nation` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `jiguan` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `wysx` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `qgyz` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `gxbzl` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `myzl` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cpth` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fatherth` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `motherth` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `selfth` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `excpsm` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `sjzqz` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cardType` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ysqz` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cardid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `qzDate` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sjdgz` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bz` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`thid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sample_th_child
-- ----------------------------

-- ----------------------------
-- Table structure for sample_th_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_th_jd`;
CREATE TABLE `sample_th_jd` (
  `thid` int(20) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `ybbh` varchar(50) DEFAULT NULL COMMENT '样本编号',
  `sjdw` varchar(50) DEFAULT NULL COMMENT '送检医院',
  `sjzname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `yl` varchar(50) DEFAULT NULL COMMENT '是否一录',
  `ylr` varchar(20) DEFAULT NULL COMMENT '一录人',
  `yltime` varchar(20) DEFAULT NULL COMMENT '一录时间',
  `ylid` int(10) DEFAULT NULL COMMENT '一录id',
  `el` varchar(50) DEFAULT NULL COMMENT '二录',
  `elr` varchar(20) DEFAULT NULL COMMENT '二录人',
  `elid` int(10) DEFAULT NULL COMMENT '二录id',
  `eltime` varchar(20) DEFAULT NULL COMMENT '二录时间',
  `ys` varchar(50) DEFAULT NULL COMMENT '一审',
  `ysr` varchar(20) DEFAULT NULL COMMENT '一审人',
  `ysid` int(10) DEFAULT NULL COMMENT '一审id',
  `ystime` varchar(20) DEFAULT NULL COMMENT '一审时间',
  `es` varchar(50) DEFAULT NULL COMMENT '是否二审',
  `esr` varchar(20) DEFAULT NULL COMMENT '二审人',
  `esid` int(10) DEFAULT NULL COMMENT '二审id',
  `estime` varchar(20) DEFAULT NULL COMMENT '二审时间',
  `sctime` varchar(20) DEFAULT NULL COMMENT '上传时间',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `salename` varchar(50) DEFAULT NULL,
  `saletime` varchar(50) DEFAULT NULL,
  `imgupdatetime` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploadtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`thid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_th_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_th_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_th_log`;
CREATE TABLE `sample_th_log` (
  `thid` int(20) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`thid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_th_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_tjxk_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_tjxk_child`;
CREATE TABLE `sample_tjxk_child` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有些会冲突',
  `num` varchar(50) DEFAULT NULL COMMENT '样本编号',
  `name` varchar(50) DEFAULT NULL COMMENT '孕妇姓名',
  `sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `age` varchar(50) DEFAULT NULL COMMENT '年龄',
  `nation` varchar(50) DEFAULT NULL COMMENT '民族',
  `jiguan` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `telphone` varchar(50) DEFAULT NULL,
  `sfzh` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `address` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `sickhistory` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `smokepd` varchar(50) DEFAULT NULL COMMENT '通讯地址',
  `curehistorypd` varchar(50) DEFAULT NULL COMMENT '个人疾病史',
  `hlhistorypd` varchar(50) DEFAULT NULL,
  `bxhistorypd` varchar(50) DEFAULT NULL,
  `familyhistory` varchar(50) DEFAULT NULL COMMENT '家族病史',
  `familyrelation` varchar(50) DEFAULT NULL COMMENT '与受检者关系',
  `familysickage` varchar(50) DEFAULT NULL COMMENT '确诊年龄',
  `danwei` varchar(50) DEFAULT NULL COMMENT '送检单位',
  `keshi` varchar(50) DEFAULT NULL COMMENT '送检科室',
  `doctor` varchar(50) DEFAULT NULL COMMENT '送检医师',
  `doctortelphone` varchar(50) DEFAULT NULL COMMENT '医师联系电话',
  `lczd` varchar(50) DEFAULT NULL COMMENT '临床诊断',
  `zzms` varchar(50) DEFAULT NULL COMMENT '症状描述',
  `lcfq` varchar(50) DEFAULT NULL COMMENT '临床分期',
  `lbjzy` varchar(50) DEFAULT NULL,
  `sickage` varchar(50) DEFAULT NULL,
  `xyyw` varchar(50) DEFAULT NULL COMMENT '现用药物',
  `zlfy` varchar(50) DEFAULT NULL COMMENT '治疗反应',
  `lyqg` varchar(50) DEFAULT NULL COMMENT '来源器官',
  `ybfz` varchar(50) DEFAULT NULL,
  `lbjzyc` varchar(50) DEFAULT NULL,
  `yczyc` varchar(50) DEFAULT NULL,
  `sslqppd` varchar(50) DEFAULT NULL COMMENT '手术石蜡切片',
  `sslqpz` varchar(50) DEFAULT NULL COMMENT '石蜡切片张',
  `sslqph` varchar(50) DEFAULT NULL COMMENT '石蜡切片厚',
  `sxxzzpd` varchar(50) DEFAULT NULL COMMENT '手术新鲜组织判断',
  `sxxzz` varchar(50) DEFAULT NULL COMMENT '新鲜组织个',
  `cslqppd` varchar(50) DEFAULT NULL,
  `cslqpz` varchar(50) DEFAULT NULL COMMENT '石蜡切片张',
  `cslqph` varchar(50) DEFAULT NULL COMMENT '石蜡切片厚',
  `cxxzzpd` varchar(50) DEFAULT NULL COMMENT '穿刺新鲜组织判断',
  `cxxzz` varchar(50) DEFAULT NULL COMMENT '新鲜组织针',
  `xfshuipd` varchar(50) DEFAULT NULL COMMENT '胸/腹水',
  `xfshui` varchar(50) DEFAULT NULL,
  `waizhouxuepd` varchar(50) DEFAULT NULL,
  `waizhouxue` varchar(50) DEFAULT NULL,
  `qitapd` varchar(50) DEFAULT NULL,
  `qita` varchar(50) DEFAULT NULL COMMENT '其他',
  `bloodtime` varchar(50) DEFAULT NULL COMMENT '样本采集日期',
  `bz` varchar(50) DEFAULT NULL,
  `checkprojectpd` varchar(50) DEFAULT NULL COMMENT '其它说明',
  `checkproject` varchar(50) DEFAULT NULL,
  `lczdnr` varchar(50) DEFAULT NULL,
  `blh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_tjxk_child
-- ----------------------------

-- ----------------------------
-- Table structure for sample_tjxk_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_tjxk_jd`;
CREATE TABLE `sample_tjxk_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `luid` int(10) DEFAULT NULL,
  `ybbh` varchar(50) DEFAULT NULL COMMENT '样本编号',
  `checkproject` varchar(50) DEFAULT NULL COMMENT '送检医院',
  `name` varchar(50) DEFAULT NULL COMMENT '送检医生',
  `age` varchar(50) DEFAULT NULL COMMENT '抽血时间',
  `yblx` varchar(200) DEFAULT NULL COMMENT '姓名',
  `telphone` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `doctor` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `bloodtime` varchar(50) DEFAULT NULL COMMENT '是否一录',
  `tjpd` varchar(50) DEFAULT NULL COMMENT '一录人',
  `dysjdpd` varchar(50) DEFAULT NULL COMMENT '一录时间',
  `dysjpd` varchar(50) DEFAULT NULL,
  `skfs` varchar(50) DEFAULT NULL COMMENT '一录id',
  `skje` int(10) DEFAULT NULL COMMENT '二录',
  `tjr` varchar(50) DEFAULT NULL,
  `tjtime` varchar(50) DEFAULT NULL,
  `sjdaddress` varchar(100) DEFAULT NULL,
  `sjaddress` varchar(100) DEFAULT NULL,
  `blh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_tjxk_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_yt_change_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_yt_change_log`;
CREATE TABLE `sample_yt_change_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_yt_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_yt_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_yt_child`;
CREATE TABLE `sample_yt_child` (
  `tid` int(255) NOT NULL AUTO_INCREMENT COMMENT '???id extjs?????',
  `num` varchar(255) DEFAULT NULL COMMENT '????',
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '????',
  `sex` varchar(255) DEFAULT NULL COMMENT '??',
  `age` varchar(255) DEFAULT NULL COMMENT '??',
  `nation` varchar(255) DEFAULT NULL COMMENT '??',
  `jiguan` varchar(255) DEFAULT NULL COMMENT '??',
  `sfzh` varchar(255) DEFAULT NULL COMMENT '????',
  `telphone` varchar(255) DEFAULT NULL COMMENT '????',
  `mail` varchar(255) DEFAULT NULL COMMENT '??',
  `address` varchar(255) DEFAULT NULL COMMENT '????',
  `sickhistory` varchar(255) DEFAULT NULL COMMENT '?????',
  `familyhistory` varchar(255) DEFAULT NULL COMMENT '????',
  `familyrelation` varchar(255) DEFAULT NULL COMMENT '??????',
  `familysickage` varchar(255) DEFAULT NULL COMMENT '????',
  `danwei` varchar(255) DEFAULT NULL COMMENT '????',
  `keshi` varchar(255) DEFAULT NULL COMMENT '????',
  `doctor` varchar(255) DEFAULT NULL COMMENT '????',
  `doctortelphone` varchar(255) DEFAULT NULL COMMENT '??????',
  `sickage` varchar(255) DEFAULT NULL COMMENT '????',
  `lczd` varchar(255) DEFAULT NULL COMMENT '????',
  `blzd` varchar(255) DEFAULT NULL COMMENT '????',
  `zzms` varchar(255) DEFAULT NULL COMMENT '????',
  `lcfq` varchar(255) DEFAULT NULL COMMENT '????',
  `xyyw` varchar(255) DEFAULT NULL COMMENT '????',
  `zlfy` varchar(255) DEFAULT NULL COMMENT '????',
  `lyqg3` varchar(255) DEFAULT NULL COMMENT '????',
  `lyqg1` varchar(255) DEFAULT NULL,
  `lyqg2` varchar(255) DEFAULT NULL,
  `ybfz3` varchar(255) DEFAULT NULL,
  `ybfz1` varchar(255) DEFAULT NULL,
  `ybfz2` varchar(255) DEFAULT NULL,
  `lbjzyc3` varchar(255) DEFAULT NULL,
  `lbjzyc1` varchar(255) DEFAULT NULL,
  `lbjzyc2` varchar(255) DEFAULT NULL,
  `yczyc3` varchar(255) DEFAULT NULL,
  `yczyc1` varchar(255) DEFAULT NULL,
  `yczyc2` varchar(255) DEFAULT NULL,
  `yblx3` varchar(255) DEFAULT NULL COMMENT '?????',
  `yblx1` varchar(255) DEFAULT NULL COMMENT '????????',
  `yblx2` varchar(255) DEFAULT NULL COMMENT '?????',
  `piece3` varchar(255) DEFAULT NULL COMMENT '????',
  `piece1` varchar(255) DEFAULT NULL COMMENT '?????',
  `piece2` varchar(255) DEFAULT NULL COMMENT '?????',
  `spiece3` varchar(255) DEFAULT NULL COMMENT '????????',
  `spiece1` varchar(255) DEFAULT NULL COMMENT '?????',
  `spiece2` varchar(255) DEFAULT NULL COMMENT '?/??',
  `bloodtime3` varchar(255) DEFAULT NULL COMMENT '??',
  `bloodtime1` varchar(255) DEFAULT NULL COMMENT '??????',
  `bloodtime2` varchar(255) DEFAULT NULL,
  `qtsm` varchar(255) DEFAULT NULL COMMENT '????',
  `qtjc` varchar(500) DEFAULT NULL COMMENT '??',
  `sign` varchar(255) DEFAULT NULL COMMENT '?????',
  `guardiansign` varchar(255) DEFAULT NULL COMMENT '?????',
  `guardianrelation` varchar(255) DEFAULT NULL COMMENT '?????',
  `date` varchar(255) DEFAULT NULL COMMENT '???????',
  `doctorsign` varchar(255) DEFAULT NULL COMMENT '??????',
  `doctordate` varchar(255) DEFAULT NULL COMMENT '????????',
  `bz` text,
  `sfqk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_yt_child
-- ----------------------------

-- ----------------------------
-- Table structure for sample_yt_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_yt_jd`;
CREATE TABLE `sample_yt_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `ybbh` varchar(20) DEFAULT NULL COMMENT '样本编号',
  `hospital` varchar(50) DEFAULT NULL COMMENT '送检医院',
  `sjys` varchar(20) DEFAULT NULL COMMENT '送检医生',
  `xtime` varchar(20) DEFAULT NULL COMMENT '抽血时间',
  `xm` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sfzh` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `telphone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `yl` varchar(50) DEFAULT NULL COMMENT '是否一录',
  `ylr` varchar(20) DEFAULT NULL COMMENT '一录人',
  `yltime` varchar(20) DEFAULT NULL COMMENT '一录时间',
  `ylid` int(10) DEFAULT NULL COMMENT '一录id',
  `el` varchar(50) DEFAULT NULL COMMENT '二录',
  `elr` varchar(20) DEFAULT NULL COMMENT '二录人',
  `elid` int(10) DEFAULT NULL COMMENT '二录id',
  `eltime` varchar(20) DEFAULT NULL COMMENT '二录时间',
  `ys` varchar(50) DEFAULT NULL COMMENT '一审',
  `ysr` varchar(20) DEFAULT NULL COMMENT '一审人',
  `ysid` int(10) DEFAULT NULL COMMENT '一审id',
  `ystime` varchar(20) DEFAULT NULL COMMENT '一审时间',
  `es` varchar(50) DEFAULT NULL COMMENT '是否二审',
  `esr` varchar(20) DEFAULT NULL COMMENT '二审人',
  `esid` int(10) DEFAULT NULL COMMENT '二审id',
  `estime` varchar(20) DEFAULT NULL COMMENT '二审时间',
  `sctime` varchar(20) DEFAULT NULL COMMENT '上传时间',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `salename` varchar(50) DEFAULT NULL,
  `saletime` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '优替(个体化)',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_yt_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_yt_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_yt_log`;
CREATE TABLE `sample_yt_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(255) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_yt_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_yxy_change_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_yxy_change_log`;
CREATE TABLE `sample_yxy_change_log` (
  `yxyid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`yxyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_yxy_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_yxy_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_yxy_child`;
CREATE TABLE `sample_yxy_child` (
  `yxyid` int(50) NOT NULL AUTO_INCREMENT COMMENT '???id extjs?????',
  `ybbh` varchar(50) DEFAULT NULL COMMENT '????',
  `sjdw` varchar(50) DEFAULT NULL COMMENT '????',
  `sjks` varchar(50) DEFAULT NULL COMMENT '????',
  `collectiontime` varchar(50) DEFAULT NULL COMMENT '????',
  `name` varchar(50) DEFAULT NULL COMMENT '??',
  `xname` varchar(50) DEFAULT NULL COMMENT '??',
  `telphone` varchar(50) DEFAULT NULL COMMENT '??',
  `age` varchar(50) DEFAULT NULL COMMENT '??',
  `birth` varchar(50) DEFAULT NULL COMMENT '??',
  `gender` varchar(50) DEFAULT NULL COMMENT '??',
  `address` varchar(100) DEFAULT NULL COMMENT '??',
  `liucyc` varchar(100) DEFAULT NULL COMMENT '????',
  `liuc` varchar(50) DEFAULT NULL COMMENT '??',
  `cngtdefect` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `blycs` varchar(50) DEFAULT NULL COMMENT '????',
  `sampleType` varchar(50) DEFAULT NULL COMMENT '????',
  `haveweekw` varchar(50) DEFAULT NULL COMMENT 'ȡ',
  `lczd` varchar(100) DEFAULT NULL COMMENT '????',
  `isclose` varchar(50) DEFAULT NULL COMMENT '??????',
  `fbloodtype` varchar(50) DEFAULT NULL COMMENT '???',
  `ismore` varchar(50) DEFAULT NULL,
  `liucs` varchar(50) DEFAULT NULL,
  `liuctype` varchar(50) DEFAULT NULL,
  `gngr` varchar(50) DEFAULT NULL,
  `torch` varchar(50) DEFAULT NULL,
  `myjcms` varchar(100) DEFAULT NULL,
  `myliuc` varchar(50) DEFAULT NULL,
  `rst` varchar(50) DEFAULT NULL,
  `rstyc` varchar(100) DEFAULT NULL,
  `jcmethod` varchar(50) DEFAULT NULL,
  `mbloodtype` varchar(50) DEFAULT NULL,
  `szjc` varchar(50) DEFAULT NULL,
  `mrst` varchar(50) DEFAULT NULL,
  `mrstyc` varchar(100) DEFAULT NULL,
  `mjcmethod` varchar(50) DEFAULT NULL,
  `bc` varchar(50) DEFAULT NULL,
  `bcyc` varchar(100) DEFAULT NULL,
  `xq` varchar(50) DEFAULT NULL,
  `santi21` varchar(50) DEFAULT NULL,
  `santi18` varchar(50) DEFAULT NULL,
  `ntd` varchar(50) DEFAULT NULL,
  `ytz` varchar(50) DEFAULT NULL,
  `lcrst` varchar(50) DEFAULT NULL,
  `lcrstyc` varchar(100) DEFAULT NULL,
  `lcjcmethod` varchar(50) DEFAULT NULL,
  `other` varchar(120) DEFAULT NULL,
  `bfamilyhistory` varchar(50) DEFAULT NULL,
  `jwbs` varchar(50) DEFAULT NULL,
  `yysys` varchar(50) DEFAULT NULL,
  `kss` varchar(50) DEFAULT NULL,
  `byy` varchar(50) DEFAULT NULL,
  `yyother` varchar(100) DEFAULT NULL,
  `yysystime` varchar(50) DEFAULT NULL,
  `ksstime` varchar(50) DEFAULT NULL,
  `byytime` varchar(50) DEFAULT NULL,
  `yyothertime` varchar(50) DEFAULT NULL,
  `couplename` varchar(50) DEFAULT NULL,
  `bz` text,
  `sjzqz` varchar(50) DEFAULT NULL,
  `sjzqzdate` varchar(50) DEFAULT NULL,
  `dlrqz` varchar(50) DEFAULT NULL,
  `dlrqzdate` varchar(50) DEFAULT NULL,
  `crrstyc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trrstyc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bbrstyc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bmreason` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tsgn` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `duozr` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jllc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bwqlc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ychan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ztyc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jsyc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `zlyc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `qtyc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `byby` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `blycsqt` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sampleqt1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jqjh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `liucc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `familyhistory2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jclxbr` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jwhistory2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jclxcp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `familyjc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `names1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `names2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `names3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gx1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gx2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gx3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sjdgz` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `qtycpd` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `blycsqtpd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`yxyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_yxy_child
-- ----------------------------

-- ----------------------------
-- Table structure for sample_yxy_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_yxy_jd`;
CREATE TABLE `sample_yxy_jd` (
  `yxyid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `ybbh` varchar(20) DEFAULT NULL COMMENT '样本编号',
  `sjdw` varchar(50) DEFAULT NULL COMMENT '送检医院',
  `sjks` varchar(20) DEFAULT NULL COMMENT '送检医生',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `telphone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `yl` varchar(50) DEFAULT NULL COMMENT '是否一录',
  `ylr` varchar(20) DEFAULT NULL COMMENT '一录人',
  `yltime` varchar(20) DEFAULT NULL COMMENT '一录时间',
  `ylid` int(10) DEFAULT NULL COMMENT '一录id',
  `el` varchar(50) DEFAULT NULL COMMENT '二录',
  `elr` varchar(20) DEFAULT NULL COMMENT '二录人',
  `elid` int(10) DEFAULT NULL COMMENT '二录id',
  `eltime` varchar(20) DEFAULT NULL COMMENT '二录时间',
  `ys` varchar(50) DEFAULT NULL COMMENT '一审',
  `ysr` varchar(20) DEFAULT NULL COMMENT '一审人',
  `ysid` int(10) DEFAULT NULL COMMENT '一审id',
  `ystime` varchar(20) DEFAULT NULL COMMENT '一审时间',
  `es` varchar(50) DEFAULT NULL COMMENT '是否二审',
  `esr` varchar(20) DEFAULT NULL COMMENT '二审人',
  `esid` int(10) DEFAULT NULL COMMENT '二审id',
  `estime` varchar(20) DEFAULT NULL COMMENT '二审时间',
  `sctime` varchar(20) DEFAULT NULL COMMENT '上传时间',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `salename` varchar(50) DEFAULT NULL,
  `saletime` varchar(50) DEFAULT NULL,
  `imgupdatetime` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploadtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`yxyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_yxy_jd
-- ----------------------------

-- ----------------------------
-- Table structure for sample_yxy_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_yxy_log`;
CREATE TABLE `sample_yxy_log` (
  `yxyid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`yxyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_yxy_log
-- ----------------------------

-- ----------------------------
-- Table structure for sample_zl_change_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_zl_change_log`;
CREATE TABLE `sample_zl_change_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_zl_change_log
-- ----------------------------
INSERT INTO `sample_zl_change_log` VALUES ('1', '372', null);
INSERT INTO `sample_zl_change_log` VALUES ('2', '372', null);
INSERT INTO `sample_zl_change_log` VALUES ('3', '352', 'num');
INSERT INTO `sample_zl_change_log` VALUES ('4', '352', 'name');
INSERT INTO `sample_zl_change_log` VALUES ('5', '352', 'telphone');
INSERT INTO `sample_zl_change_log` VALUES ('6', '352', 'xname');
INSERT INTO `sample_zl_change_log` VALUES ('7', '352', 'blood');
INSERT INTO `sample_zl_change_log` VALUES ('8', '363', 'blood');
INSERT INTO `sample_zl_change_log` VALUES ('9', '363', 'num');
INSERT INTO `sample_zl_change_log` VALUES ('10', '375', 'name');
INSERT INTO `sample_zl_change_log` VALUES ('11', '375', 'xname');
INSERT INTO `sample_zl_change_log` VALUES ('12', '375', 'hospital');
INSERT INTO `sample_zl_change_log` VALUES ('13', '375', 'blood');
INSERT INTO `sample_zl_change_log` VALUES ('14', '375', 'num');
INSERT INTO `sample_zl_change_log` VALUES ('15', '376', 'mxqsc');
INSERT INTO `sample_zl_change_log` VALUES ('16', '376', 'scms');
INSERT INTO `sample_zl_change_log` VALUES ('17', '376', 'yzss');
INSERT INTO `sample_zl_change_log` VALUES ('18', '376', 'myzlpd');
INSERT INTO `sample_zl_change_log` VALUES ('19', '376', 'ytsxpd');
INSERT INTO `sample_zl_change_log` VALUES ('20', '376', 'lczd');
INSERT INTO `sample_zl_change_log` VALUES ('21', '376', 'address');
INSERT INTO `sample_zl_change_log` VALUES ('22', '376', 'nation');
INSERT INTO `sample_zl_change_log` VALUES ('23', '399', 'num');
INSERT INTO `sample_zl_change_log` VALUES ('24', '403', 'num');
INSERT INTO `sample_zl_change_log` VALUES ('25', '419', 'hospital');
INSERT INTO `sample_zl_change_log` VALUES ('26', '439', 'hospital');
INSERT INTO `sample_zl_change_log` VALUES ('27', '443', 'hospital');
INSERT INTO `sample_zl_change_log` VALUES ('28', '443', 'num');
INSERT INTO `sample_zl_change_log` VALUES ('29', '431', 'hospital');
INSERT INTO `sample_zl_change_log` VALUES ('30', '431', 'num');
INSERT INTO `sample_zl_change_log` VALUES ('31', '435', 'hospital');
INSERT INTO `sample_zl_change_log` VALUES ('32', '435', 'num');

-- ----------------------------
-- Table structure for sample_zl_child
-- ----------------------------
DROP TABLE IF EXISTS `sample_zl_child`;
CREATE TABLE `sample_zl_child` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL COMMENT '样本编号',
  `checkcompony` varchar(50) DEFAULT NULL COMMENT '送检单位',
  `yblx` varchar(20) DEFAULT NULL COMMENT '样本类型',
  `qita1` varchar(50) DEFAULT NULL COMMENT '其他样本',
  `samplingdate` varchar(20) DEFAULT NULL COMMENT '取样日期',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(20) DEFAULT NULL COMMENT '性别',
  `age` varchar(10) DEFAULT NULL COMMENT '年龄',
  `nation` varchar(20) DEFAULT NULL COMMENT '民族',
  `jiguan` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `sfzh` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `telphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(50) DEFAULT NULL COMMENT '通讯地址',
  `sickhistory1` varchar(50) DEFAULT NULL COMMENT '个人疾病史',
  `sickage1` varchar(20) DEFAULT NULL COMMENT '发病年龄',
  `lczd1` varchar(50) DEFAULT NULL COMMENT '临床诊断',
  `lcbx` varchar(50) DEFAULT NULL COMMENT '临床表现',
  `zlqk` varchar(50) DEFAULT NULL COMMENT '治疗情况',
  `sickhistory2` varchar(50) DEFAULT NULL COMMENT '其他疾病史',
  `aezhistory` varchar(50) DEFAULT NULL COMMENT '阿尔兹海默病家族 史',
  `family` varchar(50) DEFAULT NULL COMMENT '与受检者关系',
  `fsickage` varchar(50) DEFAULT NULL COMMENT '发病年龄',
  `lczd2` varchar(50) DEFAULT NULL COMMENT '临床诊断',
  `yanpd` varchar(50) DEFAULT NULL COMMENT '烟',
  `jiupd` varchar(50) DEFAULT NULL COMMENT '酒',
  `yaopd` varchar(50) DEFAULT NULL COMMENT '药判断',
  `yao` varchar(50) DEFAULT NULL COMMENT '药',
  `fsx` varchar(50) DEFAULT NULL COMMENT '放射线',
  `shsj` varchar(50) DEFAULT NULL COMMENT '生化试剂',
  `qian` varchar(50) DEFAULT NULL COMMENT '铅',
  `gong` varchar(50) DEFAULT NULL COMMENT '汞',
  `qtpd1` varchar(50) DEFAULT NULL COMMENT '是否有其他',
  `qt1` varchar(50) DEFAULT NULL COMMENT '其他',
  `cztc` varchar(50) DEFAULT NULL COMMENT '超值套餐检测(43种肿瘤)',
  `nantc` varchar(50) DEFAULT NULL COMMENT '男性套餐(15种男性高发肿瘤)',
  `nvtc` varchar(50) DEFAULT NULL COMMENT '女性套餐(16种女性高发肿瘤)',
  `rxagj` varchar(50) DEFAULT NULL COMMENT '乳腺癌单项高级版(22个基因)',
  `rxabz` varchar(50) DEFAULT NULL COMMENT '乳腺癌单项标准版(BRCA1/2)',
  `qtpd2` varchar(50) DEFAULT NULL COMMENT '是否有其他',
  `qt2` varchar(50) DEFAULT NULL COMMENT '其他',
  `sign1` varchar(50) DEFAULT NULL COMMENT '受检者签名',
  `sign2` varchar(50) DEFAULT NULL COMMENT '监护人签名',
  `sign2relation` varchar(50) DEFAULT NULL COMMENT '与患者关系',
  `signdate1` varchar(50) DEFAULT NULL COMMENT '签字日期',
  `doctorsign` varchar(50) DEFAULT NULL COMMENT '送检医生签名',
  `signdate2` varchar(50) DEFAULT NULL COMMENT '送检医生签字日期',
  `f1name` varchar(50) DEFAULT NULL COMMENT '亲属1姓名',
  `f1sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `f1age` varchar(50) DEFAULT NULL COMMENT '年龄',
  `f1relation` varchar(50) DEFAULT NULL COMMENT '与受检者关系',
  `f1lcbx` varchar(50) DEFAULT NULL COMMENT '临床表现',
  `f2name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `f2sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `f2age` varchar(50) DEFAULT NULL COMMENT '年龄',
  `f2relation` varchar(50) DEFAULT NULL COMMENT '与受检者关系',
  `f2lcbx` varchar(50) DEFAULT NULL COMMENT '临床表现',
  `fsign` varchar(50) DEFAULT NULL COMMENT '亲属签名',
  `fdate` varchar(50) DEFAULT NULL COMMENT '日期',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_zl_child
-- ----------------------------
INSERT INTO `sample_zl_child` VALUES ('73', 'qwerqwer', 'qwerqwer', '血液', null, '2016-04-27', 'qwer', 'qe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sample_zl_child` VALUES ('74', 'qwerqewr', 'qwerqwer', '', null, '2016-04-07', 'qqwer', 'qwer', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sample_zl_child` VALUES ('75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sample_zl_child` VALUES ('76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sample_zl_child` VALUES ('77', 'sadfasdfadf', '', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sample_zl_child` VALUES ('78', 'asdfasdfasdf', '', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sample_zl_child` VALUES ('79', 'qwerqwer', 'qer', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'zlqk1');
INSERT INTO `sample_zl_child` VALUES ('80', 'qwerqwer', 'qer', '其他', '其他', '2016-05-19', '12312', '阿斯达 ', '', '123', '籍贯阿三的发生地方', '', '', '', '呵呵呵阿斯蒂芬', '个人疾病史', '', '阿斯蒂芬', '千万二千味儿', '', '', '千万二千味儿', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'zlqk1');
INSERT INTO `sample_zl_child` VALUES ('85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sample_zl_child` VALUES ('86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sample_zl_child` VALUES ('87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sample_zl_child` VALUES ('88', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sample_zl_jd
-- ----------------------------
DROP TABLE IF EXISTS `sample_zl_jd`;
CREATE TABLE `sample_zl_jd` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '直接用id extjs有冲突',
  `img` varchar(100) DEFAULT NULL,
  `ybbh` varchar(20) DEFAULT NULL,
  `xm` varchar(20) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `yl` varchar(5) DEFAULT NULL,
  `ylr` varchar(20) DEFAULT NULL,
  `yltime` varchar(20) DEFAULT NULL,
  `ylid` int(10) DEFAULT NULL,
  `el` varchar(5) DEFAULT NULL,
  `elr` varchar(20) DEFAULT NULL,
  `elid` int(10) DEFAULT NULL,
  `eltime` varchar(20) DEFAULT NULL,
  `ys` varchar(5) DEFAULT NULL,
  `ysr` varchar(20) DEFAULT NULL,
  `ysid` int(10) DEFAULT NULL,
  `ystime` varchar(20) DEFAULT NULL,
  `es` varchar(5) DEFAULT NULL,
  `esr` varchar(20) DEFAULT NULL,
  `esid` int(10) DEFAULT NULL,
  `estime` varchar(20) DEFAULT NULL,
  `sctime` varchar(20) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='数字代表行号,因为一页中的数据有点多,太乱,所以加注了行号';

-- ----------------------------
-- Records of sample_zl_jd
-- ----------------------------
INSERT INTO `sample_zl_jd` VALUES ('19', 'zhongliu-9d2ef558-984e-4202-9d0d-59368d87333b.jpg', 'qwerqewr', 'qqwer', '', '是', '管理员', '2016-04-28', '73', '是', '管理员', '74', '2016-04-28', '否', null, '75', null, '否', null, '76', null, '2016-04-28', '2016-04-28');
INSERT INTO `sample_zl_jd` VALUES ('20', 'zhongliu-5a9d59ca-6bf7-493e-92ac-9e245537f2f4.jpg', 'qwerqwer', '12312', '', '是', '管理员', '2016-04-28', '77', '是', '管理员', '78', '2016-04-28', '是', '管理员', '79', '2016-04-29', '是', '管理员', '80', '2016-05-04', '2016-04-28', '2016-05-04');
INSERT INTO `sample_zl_jd` VALUES ('22', 'zhongliu-69666c9c-ed90-4c6e-9b69-13758ca250fe.jpg', null, null, null, '否', null, null, '85', '否', null, '86', null, '否', null, '87', null, '否', null, '88', null, '2016-05-04', null);

-- ----------------------------
-- Table structure for sample_zl_log
-- ----------------------------
DROP TABLE IF EXISTS `sample_zl_log`;
CREATE TABLE `sample_zl_log` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updatetime` varchar(20) DEFAULT NULL,
  `updatetext` varchar(100) DEFAULT NULL,
  `updatereason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sample_zl_log
-- ----------------------------
INSERT INTO `sample_zl_log` VALUES ('1', '80', '样本类型', '2016-05-03', '-->口腔拭子', '');
INSERT INTO `sample_zl_log` VALUES ('2', '80', '样本类型', '2016-05-03', '-->其他', '');
INSERT INTO `sample_zl_log` VALUES ('3', '80', '其他', '2016-05-03', '-->123', '');

-- ----------------------------
-- Table structure for sjdinfo
-- ----------------------------
DROP TABLE IF EXISTS `sjdinfo`;
CREATE TABLE `sjdinfo` (
  `id` int(100) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `isQuit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sjdinfo
-- ----------------------------

-- ----------------------------
-- Table structure for ss_sample
-- ----------------------------
DROP TABLE IF EXISTS `ss_sample`;
CREATE TABLE `ss_sample` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(30) DEFAULT NULL,
  `sampleType` varchar(50) DEFAULT NULL,
  `collectionDate` varchar(50) DEFAULT NULL,
  `receiveDate` varchar(50) DEFAULT NULL,
  `fetalType` varchar(10) DEFAULT NULL,
  `additionalReprt` varchar(10) DEFAULT NULL,
  `weeks` varchar(10) DEFAULT NULL,
  `days` varchar(10) DEFAULT NULL,
  `hospital` varchar(50) DEFAULT NULL,
  `clinicNo` varchar(50) DEFAULT NULL,
  `doctor` varchar(50) DEFAULT NULL,
  `custName` varchar(50) DEFAULT NULL,
  `custMobile` varchar(11) DEFAULT NULL,
  `cardId` varchar(50) DEFAULT NULL,
  `birthDate` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dueDate` varchar(50) DEFAULT NULL,
  `lmp` varchar(50) DEFAULT NULL,
  `bChao` varchar(10) DEFAULT NULL,
  `ivf` varchar(10) DEFAULT NULL,
  `bhy` varchar(10) DEFAULT NULL,
  `bhc` varchar(10) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `ph` varchar(255) DEFAULT NULL,
  `hpIllness` varchar(255) DEFAULT NULL,
  `familyHistory` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `inputName` varchar(50) DEFAULT NULL,
  `inputTime` varchar(50) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_sample
-- ----------------------------
INSERT INTO `ss_sample` VALUES ('1', 'PN00G18DF1230', '外周血', '2018-01-02', '2018-01-05', '单胎', '否', '11周5天', null, '北京海淀医院', '20180101', '医生', '受检者', '18701319883', '230231199101040626', '1991-01-04', '17', '161', '48', '北京市海淀区益园文化', '未知', '2017-10-01', '正常单胎', '否', '2', '1', '其他', '既往史', '现病史', '家族史', '备注', '范秋月', '2018-01-06 12:12:12', '范秋月', '2018-01-06 12:12:12');

-- ----------------------------
-- Table structure for ss_sampleaddress
-- ----------------------------
DROP TABLE IF EXISTS `ss_sampleaddress`;
CREATE TABLE `ss_sampleaddress` (
  `sampleAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `saleId` int(11) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `ybszSheng` varchar(30) DEFAULT NULL,
  `ybszShi` varchar(30) DEFAULT NULL,
  `ybszXian` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sampleAddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_sampleaddress
-- ----------------------------

-- ----------------------------
-- Table structure for ss_sendsample
-- ----------------------------
DROP TABLE IF EXISTS `ss_sendsample`;
CREATE TABLE `ss_sendsample` (
  `sendSampleId` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(30) DEFAULT NULL,
  `cardAfterFour` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `checkProject` varchar(100) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `collectionDate` varchar(30) DEFAULT NULL,
  `creditCardNum` varchar(30) DEFAULT NULL,
  `expressCompany` varchar(30) DEFAULT NULL,
  `expressNumber` varchar(30) DEFAULT NULL,
  `invoiceNumber` varchar(30) DEFAULT NULL,
  `invoiceTitle` varchar(30) DEFAULT NULL,
  `isHaveInvoice` varchar(30) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `outState` varchar(30) DEFAULT NULL,
  `patientName` varchar(30) DEFAULT NULL,
  `paymentBy` varchar(30) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `reportRecipient` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `cityHead` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sjrxm` varchar(100) DEFAULT NULL,
  `sjrdh` varchar(100) DEFAULT NULL,
  `reportTemplate` varchar(30) DEFAULT '优迅报告模版',
  `settlement` varchar(30) DEFAULT '未结算',
  `settlementName` varchar(30) DEFAULT NULL,
  `settlementTime` varchar(30) DEFAULT NULL,
  `ybszSheng` varchar(30) DEFAULT NULL,
  `ybszShi` varchar(30) DEFAULT NULL,
  `ybszXian` varchar(30) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `haveweekw` varchar(20) DEFAULT NULL,
  `haveweekd` varchar(20) DEFAULT NULL,
  `lastyj` varchar(30) DEFAULT NULL,
  `bchao` varchar(30) DEFAULT NULL,
  `ivf` varchar(30) DEFAULT NULL,
  `diabetes` int(5) DEFAULT NULL,
  PRIMARY KEY (`sendSampleId`),
  KEY `index_sendSampleID` (`sendSampleId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3055 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_sendsample
-- ----------------------------
INSERT INTO `ss_sendsample` VALUES ('3045', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '123456789', null, null, null, '15101093727', '否', '一', null, '', '销售', '张春可', 'PN00G18CQ0001', '全血', '张春可', '2018-03-22 15:51:59', '2018-03-20 20:12:07', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', '', '', null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3046', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '24394884674', null, null, null, '15101093727', '否', '二', null, '', '销售', '张春可', 'PN00G18CQ0002', '全血', '张春可', '2018-03-20 20:12:42', '2018-03-20 20:12:42', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3047', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '466464', null, null, null, '15101093727', '否', '三', null, '', '销售', '张春可', 'PN00G18CQ0003', '全血', '张春可', '2018-03-20 20:13:15', '2018-03-20 20:13:15', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3048', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '166464', null, null, null, '15101093727', '否', '四', null, '', '销售', '张春可', 'PN00G18CQ0004', '全血', '张春可', '2018-03-20 20:14:46', '2018-03-20 20:14:46', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3049', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '948787', null, null, null, '15101093727', '否', '五', null, '', '受检者', '张春可', 'PN00G18CQ0005', '全血', '张春可', '2018-03-20 20:15:20', '2018-03-20 20:15:20', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3050', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '46469485', null, null, null, '15101093727', '否', '六', null, '', '销售', '张春可', 'PN00G18CQ0006', '全血', '张春可', '2018-03-20 20:16:27', '2018-03-20 20:16:27', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3051', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '466497', null, null, null, '15101093727', '否', '七', null, '', '销售', '张春可', 'PN00G18CQ0007', '全血', '张春可', '2018-03-20 20:17:13', '2018-03-20 20:17:13', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3052', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '947994', null, null, null, '15101093727', '否', '八', null, '', '销售', '张春可', 'PN00G18CQ0008', '全血', '张春可', '2018-03-20 20:17:35', '2018-03-20 20:17:35', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3053', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '646484', null, null, null, '15101093727', '否', '九', null, '', '销售', '张春可', 'PN00G18CQ0009', '全血', '张春可', '2018-03-20 20:17:59', '2018-03-20 20:17:59', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `ss_sendsample` VALUES ('3054', '总部', null, '北京医院', '优馨安--无创产前基因检测', '北京', '黄金龙;马达佳', '2018-03-20', null, '顺丰', '6464646', null, null, null, '15101093727', '否', '十', null, '', '销售', '张春可', 'PN00G18CQ0010', '全血', '张春可', '2018-03-20 20:18:25', '2018-03-20 20:18:25', '张春可', '黄金龙;马达佳', null, null, null, '优迅报告模版', '未结算', null, null, '', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for ss_sendsamplehospital
-- ----------------------------
DROP TABLE IF EXISTS `ss_sendsamplehospital`;
CREATE TABLE `ss_sendsamplehospital` (
  `sendSampleHospitalId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `checkHospitalId` int(11) DEFAULT NULL,
  PRIMARY KEY (`sendSampleHospitalId`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_sendsamplehospital
-- ----------------------------
INSERT INTO `ss_sendsamplehospital` VALUES ('229', '北京市,朝阳区', '北京医院', '张春可', '张春可', '2018-03-20 20:12:07', null);

-- ----------------------------
-- Table structure for ss_ssx
-- ----------------------------
DROP TABLE IF EXISTS `ss_ssx`;
CREATE TABLE `ss_ssx` (
  `id` smallint(5) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `parentid` smallint(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_ssx
-- ----------------------------

-- ----------------------------
-- Table structure for storage_apply_right
-- ----------------------------
DROP TABLE IF EXISTS `storage_apply_right`;
CREATE TABLE `storage_apply_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `storageID` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `userName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_apply_right
-- ----------------------------

-- ----------------------------
-- Table structure for storage_baofei
-- ----------------------------
DROP TABLE IF EXISTS `storage_baofei`;
CREATE TABLE `storage_baofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `holdName` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `reason` text,
  `specification` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_baofei
-- ----------------------------

-- ----------------------------
-- Table structure for storage_baosun
-- ----------------------------
DROP TABLE IF EXISTS `storage_baosun`;
CREATE TABLE `storage_baosun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `holdName` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `isBf` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_baosun
-- ----------------------------

-- ----------------------------
-- Table structure for storage_batch
-- ----------------------------
DROP TABLE IF EXISTS `storage_batch`;
CREATE TABLE `storage_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `lifeTime` varchar(30) DEFAULT NULL,
  `number` varchar(30) NOT NULL,
  `pnumber` varchar(30) NOT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `price` varchar(30) NOT NULL,
  `isYK` varchar(30) DEFAULT NULL,
  `classifyName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_batch
-- ----------------------------

-- ----------------------------
-- Table structure for storage_checkstorage
-- ----------------------------
DROP TABLE IF EXISTS `storage_checkstorage`;
CREATE TABLE `storage_checkstorage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkNumber` varchar(30) DEFAULT NULL,
  `checkType` varchar(30) DEFAULT NULL,
  `feedbackName` varchar(30) DEFAULT NULL,
  `feedbackTime` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `pdfPath` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_checkstorage
-- ----------------------------

-- ----------------------------
-- Table structure for storage_checkstorage_person
-- ----------------------------
DROP TABLE IF EXISTS `storage_checkstorage_person`;
CREATE TABLE `storage_checkstorage_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `checkAmount` varchar(30) DEFAULT NULL,
  `checkName` varchar(30) DEFAULT NULL,
  `checkNumber` varchar(20) NOT NULL,
  `number` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `storageID` int(11) DEFAULT NULL,
  `storageName` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_checkstorage_person
-- ----------------------------

-- ----------------------------
-- Table structure for storage_checkstorage_storage
-- ----------------------------
DROP TABLE IF EXISTS `storage_checkstorage_storage`;
CREATE TABLE `storage_checkstorage_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `checkAmount` varchar(30) DEFAULT NULL,
  `checkNumber` varchar(20) NOT NULL,
  `number` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `storageID` int(11) DEFAULT NULL,
  `storageLocation` varchar(255) DEFAULT NULL,
  `storageName` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_checkstorage_storage
-- ----------------------------

-- ----------------------------
-- Table structure for storage_chuku
-- ----------------------------
DROP TABLE IF EXISTS `storage_chuku`;
CREATE TABLE `storage_chuku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `applyNum` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `orderNumber` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `storageLocation` text,
  `unit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_chuku
-- ----------------------------

-- ----------------------------
-- Table structure for storage_classify
-- ----------------------------
DROP TABLE IF EXISTS `storage_classify`;
CREATE TABLE `storage_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classifyName` varchar(20) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `classifyName` (`classifyName`),
  KEY `FK936E63C87E354F04` (`parentid`),
  CONSTRAINT `FK936E63C87E354F04` FOREIGN KEY (`parentid`) REFERENCES `storage_classify` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_classify
-- ----------------------------

-- ----------------------------
-- Table structure for storage_code_province
-- ----------------------------
DROP TABLE IF EXISTS `storage_code_province`;
CREATE TABLE `storage_code_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `province` varchar(20) NOT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_code_province
-- ----------------------------

-- ----------------------------
-- Table structure for storage_exuserecord
-- ----------------------------
DROP TABLE IF EXISTS `storage_exuserecord`;
CREATE TABLE `storage_exuserecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) NOT NULL,
  `project` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `storageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_exuserecord
-- ----------------------------

-- ----------------------------
-- Table structure for storage_fanku
-- ----------------------------
DROP TABLE IF EXISTS `storage_fanku`;
CREATE TABLE `storage_fanku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `holdName` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `storageLocation` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_fanku
-- ----------------------------

-- ----------------------------
-- Table structure for storage_fanku_other
-- ----------------------------
DROP TABLE IF EXISTS `storage_fanku_other`;
CREATE TABLE `storage_fanku_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `holdName` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `storageLocation` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_fanku_other
-- ----------------------------

-- ----------------------------
-- Table structure for storage_main
-- ----------------------------
DROP TABLE IF EXISTS `storage_main`;
CREATE TABLE `storage_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `storageID` int(11) DEFAULT NULL,
  `storageLocation` text,
  `unit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `warningNum` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_main
-- ----------------------------

-- ----------------------------
-- Table structure for storage_outgo
-- ----------------------------
DROP TABLE IF EXISTS `storage_outgo`;
CREATE TABLE `storage_outgo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applyName` varchar(30) DEFAULT NULL,
  `applyTime` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `orderNumber` varchar(30) DEFAULT NULL,
  `outgoState` varchar(30) DEFAULT NULL,
  `outgoTime` varchar(30) DEFAULT NULL,
  `placeName` varchar(30) DEFAULT NULL,
  `placeTime` varchar(30) DEFAULT NULL,
  `reviewName` varchar(30) DEFAULT NULL,
  `reviewOpinion` text,
  `reviewState` varchar(30) DEFAULT NULL,
  `reviewTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `storageID` int(11) DEFAULT NULL,
  `outgoName` varchar(30) DEFAULT NULL,
  `applyNameRemark` varchar(255) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_outgo
-- ----------------------------

-- ----------------------------
-- Table structure for storage_outgo_detals
-- ----------------------------
DROP TABLE IF EXISTS `storage_outgo_detals`;
CREATE TABLE `storage_outgo_detals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `applyNum` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `orderNumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `useNum` varchar(30) DEFAULT NULL,
  `applyName` varchar(30) DEFAULT NULL,
  `bz` text,
  `checkproject` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_outgo_detals
-- ----------------------------

-- ----------------------------
-- Table structure for storage_person
-- ----------------------------
DROP TABLE IF EXISTS `storage_person`;
CREATE TABLE `storage_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canSeePrice` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `storageID` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `userName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_person
-- ----------------------------

-- ----------------------------
-- Table structure for storage_room
-- ----------------------------
DROP TABLE IF EXISTS `storage_room`;
CREATE TABLE `storage_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `storageName` varchar(20) NOT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `allCanSee` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storageName` (`storageName`),
  KEY `FK357D4C1FEF566620` (`parentid`),
  CONSTRAINT `FK357D4C1FEF566620` FOREIGN KEY (`parentid`) REFERENCES `storage_room` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_room
-- ----------------------------

-- ----------------------------
-- Table structure for storage_ruku
-- ----------------------------
DROP TABLE IF EXISTS `storage_ruku`;
CREATE TABLE `storage_ruku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `mainID` int(11) NOT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_ruku
-- ----------------------------

-- ----------------------------
-- Table structure for storage_sample_des
-- ----------------------------
DROP TABLE IF EXISTS `storage_sample_des`;
CREATE TABLE `storage_sample_des` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `res` varchar(50) DEFAULT NULL,
  `stid` int(11) NOT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_sample_des
-- ----------------------------

-- ----------------------------
-- Table structure for storage_sample_take
-- ----------------------------
DROP TABLE IF EXISTS `storage_sample_take`;
CREATE TABLE `storage_sample_take` (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `custName` varchar(50) DEFAULT NULL,
  `eid` int(11) NOT NULL,
  `expName` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_sample_take
-- ----------------------------

-- ----------------------------
-- Table structure for storage_shouhui
-- ----------------------------
DROP TABLE IF EXISTS `storage_shouhui`;
CREATE TABLE `storage_shouhui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(30) DEFAULT NULL,
  `holdName` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `pnumber` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `storageLocation` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_shouhui
-- ----------------------------

-- ----------------------------
-- Table structure for storage_stock
-- ----------------------------
DROP TABLE IF EXISTS `storage_stock`;
CREATE TABLE `storage_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classifyName` varchar(20) NOT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `specification` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `warningNum` varchar(30) DEFAULT NULL,
  `warningTime` varchar(30) DEFAULT NULL,
  `useJudge` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_stock
-- ----------------------------

-- ----------------------------
-- Table structure for storage_suit
-- ----------------------------
DROP TABLE IF EXISTS `storage_suit`;
CREATE TABLE `storage_suit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `suitName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `storageID` int(11) DEFAULT NULL,
  `checkproject` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_suit
-- ----------------------------

-- ----------------------------
-- Table structure for storage_suit_details
-- ----------------------------
DROP TABLE IF EXISTS `storage_suit_details`;
CREATE TABLE `storage_suit_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suitId` int(11) NOT NULL,
  `stockId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_suit_details
-- ----------------------------

-- ----------------------------
-- Table structure for storage_unboxing_express
-- ----------------------------
DROP TABLE IF EXISTS `storage_unboxing_express`;
CREATE TABLE `storage_unboxing_express` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `expressCompany` varchar(30) DEFAULT NULL,
  `expressNum` varchar(50) DEFAULT NULL,
  `foamBox` varchar(30) DEFAULT NULL,
  `foamBoxAmount` varchar(30) DEFAULT NULL,
  `foamBoxLocation` varchar(30) DEFAULT NULL,
  `foamBoxNum` varchar(30) DEFAULT NULL,
  `foamBoxStorage` int(11) DEFAULT NULL,
  `foamHolder` varchar(30) DEFAULT NULL,
  `foamHolderAmount` varchar(30) DEFAULT NULL,
  `foamHolderLocation` varchar(30) DEFAULT NULL,
  `foamHolderNum` varchar(30) DEFAULT NULL,
  `foamHolderStorage` int(11) DEFAULT NULL,
  `iceBag` varchar(30) DEFAULT NULL,
  `iceBagAmount` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `packing` varchar(30) DEFAULT NULL,
  `payAmount` varchar(30) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sender` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `warmIce` varchar(30) DEFAULT NULL,
  `warmIceAmount` varchar(30) DEFAULT NULL,
  `warmIceLocation` varchar(30) DEFAULT NULL,
  `warmIceNum` varchar(30) DEFAULT NULL,
  `warmIceStorage` int(11) DEFAULT NULL,
  `warmer` varchar(30) DEFAULT NULL,
  `warmerAmount` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `abnormal` varchar(30) DEFAULT NULL,
  `foamHolder1` varchar(30) DEFAULT NULL,
  `foamHolder2` varchar(30) DEFAULT NULL,
  `foamHolderNum1` varchar(30) DEFAULT NULL,
  `foamHolderNum2` varchar(30) DEFAULT NULL,
  `foamHolderAmount1` varchar(30) DEFAULT NULL,
  `foamHolderAmount2` varchar(30) DEFAULT NULL,
  `foamHolderStorage1` int(11) DEFAULT NULL,
  `foamHolderStorage2` int(11) DEFAULT NULL,
  `foamHolderLocation1` varchar(30) DEFAULT NULL,
  `foamHolderLocation2` varchar(30) DEFAULT NULL,
  `warmIce1` varchar(30) DEFAULT '',
  `warmIce2` varchar(30) DEFAULT '',
  `warmIce3` varchar(30) DEFAULT '',
  `warmIceNum1` varchar(30) DEFAULT '',
  `warmIceNum2` varchar(30) DEFAULT '',
  `warmIceNum3` varchar(30) DEFAULT '',
  `warmIceAmount1` varchar(30) DEFAULT '',
  `warmIceAmount2` varchar(30) DEFAULT '',
  `warmIceAmount3` varchar(30) DEFAULT '',
  `warmIceStorage1` int(11) DEFAULT NULL,
  `warmIceStorage2` int(11) DEFAULT NULL,
  `warmIceStorage3` int(11) DEFAULT NULL,
  `warmIceLocation1` varchar(30) DEFAULT '',
  `warmIceLocation2` varchar(30) DEFAULT '',
  `warmIceLocation3` varchar(30) DEFAULT '',
  PRIMARY KEY (`eid`),
  KEY `index_eid` (`eid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_unboxing_express
-- ----------------------------

-- ----------------------------
-- Table structure for storage_unboxing_sample
-- ----------------------------
DROP TABLE IF EXISTS `storage_unboxing_sample`;
CREATE TABLE `storage_unboxing_sample` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `areaCode` varchar(30) DEFAULT NULL,
  `checkProject` varchar(30) DEFAULT NULL,
  `eid` int(11) NOT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `sampleNum` varchar(50) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `sheet` varchar(30) DEFAULT NULL,
  `policy` varchar(30) DEFAULT NULL,
  `agreeBook` varchar(30) DEFAULT NULL,
  `pos` varchar(30) DEFAULT NULL,
  `receipt` varchar(30) DEFAULT NULL,
  `patientName` varchar(30) DEFAULT NULL,
  `isAb` varchar(10) DEFAULT NULL,
  `regular` varchar(10) DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `index_sid` (`sid`) USING BTREE,
  KEY `index_eid` (`eid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_unboxing_sample
-- ----------------------------

-- ----------------------------
-- Table structure for storage_unboxing_type
-- ----------------------------
DROP TABLE IF EXISTS `storage_unboxing_type`;
CREATE TABLE `storage_unboxing_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `sampleType` varchar(50) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `ware` varchar(30) DEFAULT NULL,
  `wareAmount` varchar(30) DEFAULT NULL,
  `wareNum` varchar(30) DEFAULT NULL,
  `sampleAmount` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `index_sid` (`sid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_unboxing_type
-- ----------------------------

-- ----------------------------
-- Table structure for storage_warndifference
-- ----------------------------
DROP TABLE IF EXISTS `storage_warndifference`;
CREATE TABLE `storage_warndifference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `number` varchar(20) NOT NULL,
  `storageID` int(11) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `warningNum` varchar(30) DEFAULT NULL,
  `warningTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_warndifference
-- ----------------------------

-- ----------------------------
-- Table structure for sx_abnormalrecording
-- ----------------------------
DROP TABLE IF EXISTS `sx_abnormalrecording`;
CREATE TABLE `sx_abnormalrecording` (
  `abnormalRecordingId` int(11) NOT NULL AUTO_INCREMENT,
  `specification` varchar(100) DEFAULT NULL,
  `library` varchar(100) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `isSolve` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`abnormalRecordingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_abnormalrecording
-- ----------------------------

-- ----------------------------
-- Table structure for sx_abnormalson
-- ----------------------------
DROP TABLE IF EXISTS `sx_abnormalson`;
CREATE TABLE `sx_abnormalson` (
  `abnormalSonId` int(11) NOT NULL AUTO_INCREMENT,
  `feedbackContent` varchar(100) DEFAULT NULL,
  `feedbackPerson` varchar(100) DEFAULT NULL,
  `feedbackTime` varchar(100) DEFAULT NULL,
  `library` varchar(100) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `isSolve` varchar(30) DEFAULT NULL,
  `specification` varchar(200) DEFAULT NULL,
  `photoPath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`abnormalSonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_abnormalson
-- ----------------------------

-- ----------------------------
-- Table structure for sx_analyticalqualitycontrol
-- ----------------------------
DROP TABLE IF EXISTS `sx_analyticalqualitycontrol`;
CREATE TABLE `sx_analyticalqualitycontrol` (
  `analyticalQualityControlId` int(11) NOT NULL AUTO_INCREMENT,
  `adapterPollutedRate` varchar(100) DEFAULT NULL,
  `adapterPollutedRead` varchar(100) DEFAULT NULL,
  `allReads` varchar(100) DEFAULT NULL,
  `analysisID` varchar(100) DEFAULT NULL,
  `exactlyMappedRatio` varchar(100) DEFAULT NULL,
  `exactlyMappedSites` varchar(100) DEFAULT NULL,
  `finalReadsRatio` varchar(100) DEFAULT NULL,
  `finalSampleGC` varchar(100) DEFAULT NULL,
  `lowReadsNum` varchar(100) DEFAULT NULL,
  `lowReadsRate` varchar(100) DEFAULT NULL,
  `modifiedBasesNum` varchar(100) DEFAULT NULL,
  `modifiedQ30BasesRate` varchar(100) DEFAULT NULL,
  `modifiedReadsNum` varchar(100) DEFAULT NULL,
  `modifiedReadsRate` varchar(100) DEFAULT NULL,
  `originalBasesNum` varchar(100) DEFAULT NULL,
  `originalQ30BasesRate` varchar(100) DEFAULT NULL,
  `originalReadsNum` varchar(100) DEFAULT NULL,
  `qcState` varchar(100) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `sampleID` varchar(100) DEFAULT NULL,
  `uniqueMappedRatio` varchar(100) DEFAULT NULL,
  `uniquelyMappedReads` varchar(100) DEFAULT NULL,
  `unmappedReads` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `withoutDup` varchar(100) DEFAULT NULL,
  `projectCode` varchar(100) DEFAULT NULL,
  `unqualifiedReason` varchar(100) DEFAULT NULL,
  `versionQc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`analyticalQualityControlId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_analyticalqualitycontrol
-- ----------------------------

-- ----------------------------
-- Table structure for sx_analyticalqualitycontrolzhu
-- ----------------------------
DROP TABLE IF EXISTS `sx_analyticalqualitycontrolzhu`;
CREATE TABLE `sx_analyticalqualitycontrolzhu` (
  `analyticalQualityControlzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `runID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `zkType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`analyticalQualityControlzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_analyticalqualitycontrolzhu
-- ----------------------------

-- ----------------------------
-- Table structure for sx_backupsofz
-- ----------------------------
DROP TABLE IF EXISTS `sx_backupsofz`;
CREATE TABLE `sx_backupsofz` (
  `backupsOfZId` int(11) NOT NULL AUTO_INCREMENT,
  `analysisID` varchar(100) DEFAULT NULL,
  `chr1` double DEFAULT NULL,
  `chr10` double DEFAULT NULL,
  `chr11` double DEFAULT NULL,
  `chr12` double DEFAULT NULL,
  `chr13` double DEFAULT NULL,
  `chr14` double DEFAULT NULL,
  `chr15` double DEFAULT NULL,
  `chr16` double DEFAULT NULL,
  `chr17` double DEFAULT NULL,
  `chr18` double DEFAULT NULL,
  `chr19` double DEFAULT NULL,
  `chr2` double DEFAULT NULL,
  `chr20` double DEFAULT NULL,
  `chr21` double DEFAULT NULL,
  `chr22` double DEFAULT NULL,
  `chr3` double DEFAULT NULL,
  `chr4` double DEFAULT NULL,
  `chr5` double DEFAULT NULL,
  `chr6` double DEFAULT NULL,
  `chr7` double DEFAULT NULL,
  `chr8` double DEFAULT NULL,
  `chr9` double DEFAULT NULL,
  `sampleID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `dataFrom` varchar(10) DEFAULT NULL,
  `isOk` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`backupsOfZId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_backupsofz
-- ----------------------------

-- ----------------------------
-- Table structure for sx_biologicalcomputerinfo
-- ----------------------------
DROP TABLE IF EXISTS `sx_biologicalcomputerinfo`;
CREATE TABLE `sx_biologicalcomputerinfo` (
  `biologicalComputerInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(50) DEFAULT NULL,
  `dilutionConcentration` varchar(50) DEFAULT NULL,
  `dilutionRatio` varchar(50) DEFAULT NULL,
  `expectData` varchar(50) DEFAULT NULL,
  `expectRead` varchar(50) DEFAULT NULL,
  `mixingAfterVolume` varchar(50) DEFAULT NULL,
  `mixingAmount` varchar(50) DEFAULT NULL,
  `mixingConcentration` varchar(50) DEFAULT NULL,
  `mixingRatio` varchar(50) DEFAULT NULL,
  `mixingTotal` varchar(50) DEFAULT NULL,
  `mixingVolume` varchar(50) DEFAULT NULL,
  `orderBiologicalAnalyzer` varchar(50) DEFAULT NULL,
  `orderCaptureLibraryNo` varchar(50) DEFAULT NULL,
  `orderDate` varchar(30) DEFAULT NULL,
  `orderDiluentConcentration` varchar(50) DEFAULT NULL,
  `orderDiluentvolume` varchar(50) DEFAULT NULL,
  `orderIndex` varchar(50) DEFAULT NULL,
  `orderLane` varchar(30) DEFAULT NULL,
  `orderLibraryName` varchar(50) DEFAULT NULL,
  `orderOutAmount` varchar(50) DEFAULT NULL,
  `orderOutConcentration` varchar(50) DEFAULT NULL,
  `orderOutVolume` varchar(50) DEFAULT NULL,
  `orderProjectName` varchar(50) DEFAULT NULL,
  `orderProjectNo` varchar(50) DEFAULT NULL,
  `orderQpcr` varchar(50) DEFAULT NULL,
  `orderRemark` longtext,
  `orderSampleNo` varchar(50) DEFAULT NULL,
  `orderSequencerNo` varchar(30) DEFAULT NULL,
  `orderSequencingStrategy` varchar(30) DEFAULT NULL,
  `orderfcId` varchar(30) DEFAULT NULL,
  `pcrcycle` varchar(50) DEFAULT NULL,
  `plasmaAmount` varchar(50) DEFAULT NULL,
  `programmeCheck` varchar(50) DEFAULT NULL,
  `programmeMaker` varchar(50) DEFAULT NULL,
  `qpcrConcentration` varchar(50) DEFAULT NULL,
  `readNumber` varchar(50) DEFAULT NULL,
  `standardProduct` varchar(50) DEFAULT NULL,
  `startAmount` varchar(50) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`biologicalComputerInfoId`),
  KEY `orderfcId` (`orderfcId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_biologicalcomputerinfo
-- ----------------------------

-- ----------------------------
-- Table structure for sx_biologicalcomputerinfozhu
-- ----------------------------
DROP TABLE IF EXISTS `sx_biologicalcomputerinfozhu`;
CREATE TABLE `sx_biologicalcomputerinfozhu` (
  `biologicalComputerInfozhuId` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` varchar(30) DEFAULT NULL,
  `orderLane` varchar(30) DEFAULT NULL,
  `orderSequencerNo` varchar(30) DEFAULT NULL,
  `orderSequencingStrategy` varchar(30) DEFAULT NULL,
  `orderfcId` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `splitType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`biologicalComputerInfozhuId`),
  KEY `orderfcId` (`orderfcId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_biologicalcomputerinfozhu
-- ----------------------------

-- ----------------------------
-- Table structure for sx_chromosomedfz
-- ----------------------------
DROP TABLE IF EXISTS `sx_chromosomedfz`;
CREATE TABLE `sx_chromosomedfz` (
  `chromosomeOfZId` int(11) NOT NULL AUTO_INCREMENT,
  `analysisID` varchar(100) DEFAULT NULL,
  `chr1` double DEFAULT NULL,
  `chr10` double DEFAULT NULL,
  `chr11` double DEFAULT NULL,
  `chr12` double DEFAULT NULL,
  `chr13` double DEFAULT NULL,
  `chr14` double DEFAULT NULL,
  `chr15` double DEFAULT NULL,
  `chr16` double DEFAULT NULL,
  `chr17` double DEFAULT NULL,
  `chr18` double DEFAULT NULL,
  `chr19` double DEFAULT NULL,
  `chr2` double DEFAULT NULL,
  `chr20` double DEFAULT NULL,
  `chr21` double DEFAULT NULL,
  `chr22` double DEFAULT NULL,
  `chr3` double DEFAULT NULL,
  `chr4` double DEFAULT NULL,
  `chr5` double DEFAULT NULL,
  `chr6` double DEFAULT NULL,
  `chr7` double DEFAULT NULL,
  `chr8` double DEFAULT NULL,
  `chr9` double DEFAULT NULL,
  `isOk` varchar(30) DEFAULT NULL,
  `projectCode` varchar(100) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `sampleID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `picturePath` text,
  `picturePath2` text,
  `hh1` varchar(100) DEFAULT NULL,
  `bf1` varchar(100) DEFAULT NULL,
  `bfx1` varchar(100) DEFAULT NULL,
  `hh2` varchar(100) DEFAULT NULL,
  `bf2` varchar(100) DEFAULT NULL,
  `bfx2` varchar(100) DEFAULT NULL,
  `hh3` varchar(100) DEFAULT NULL,
  `bf3` varchar(100) DEFAULT NULL,
  `bfx3` varchar(100) DEFAULT NULL,
  `hh4` varchar(100) DEFAULT NULL,
  `bf4` varchar(100) DEFAULT NULL,
  `bfx4` varchar(100) DEFAULT NULL,
  `hh5` varchar(100) DEFAULT NULL,
  `bf5` varchar(100) DEFAULT NULL,
  `bfx5` varchar(100) DEFAULT NULL,
  `hh6` varchar(100) DEFAULT NULL,
  `bf6` varchar(100) DEFAULT NULL,
  `bfx6` varchar(100) DEFAULT NULL,
  `hh7` varchar(100) DEFAULT NULL,
  `bf7` varchar(100) DEFAULT NULL,
  `bfx7` varchar(100) DEFAULT NULL,
  `hh8` varchar(100) DEFAULT NULL,
  `bf8` varchar(100) DEFAULT NULL,
  `bfx8` varchar(100) DEFAULT NULL,
  `hh9` varchar(100) DEFAULT NULL,
  `bf9` varchar(100) DEFAULT NULL,
  `bfx9` varchar(100) DEFAULT NULL,
  `hh10` varchar(100) DEFAULT NULL,
  `bf10` varchar(100) DEFAULT NULL,
  `bfx10` varchar(100) DEFAULT NULL,
  `hh11` varchar(100) DEFAULT NULL,
  `bf11` varchar(100) DEFAULT NULL,
  `bfx11` varchar(100) DEFAULT NULL,
  `hh12` varchar(100) DEFAULT NULL,
  `bf12` varchar(100) DEFAULT NULL,
  `bfx12` varchar(100) DEFAULT NULL,
  `hh13` varchar(100) DEFAULT NULL,
  `bf13` varchar(100) DEFAULT NULL,
  `bfx13` varchar(100) DEFAULT NULL,
  `hh14` varchar(100) DEFAULT NULL,
  `bf14` varchar(100) DEFAULT NULL,
  `bfx14` varchar(100) DEFAULT NULL,
  `hh15` varchar(100) DEFAULT NULL,
  `bf15` varchar(100) DEFAULT NULL,
  `bfx15` varchar(100) DEFAULT NULL,
  `hh16` varchar(100) DEFAULT NULL,
  `bf16` varchar(100) DEFAULT NULL,
  `bfx16` varchar(100) DEFAULT NULL,
  `hh17` varchar(100) DEFAULT NULL,
  `bf17` varchar(100) DEFAULT NULL,
  `bfx17` varchar(100) DEFAULT NULL,
  `hh18` varchar(100) DEFAULT NULL,
  `bf18` varchar(100) DEFAULT NULL,
  `bfx18` varchar(100) DEFAULT NULL,
  `hh19` varchar(100) DEFAULT NULL,
  `bf19` varchar(100) DEFAULT NULL,
  `bfx19` varchar(100) DEFAULT NULL,
  `hh20` varchar(100) DEFAULT NULL,
  `bf20` varchar(100) DEFAULT NULL,
  `bfx20` varchar(100) DEFAULT NULL,
  `hh21` varchar(100) DEFAULT NULL,
  `bf21` varchar(100) DEFAULT NULL,
  `bfx21` varchar(100) DEFAULT NULL,
  `hh22` varchar(100) DEFAULT NULL,
  `bf22` varchar(100) DEFAULT NULL,
  `bfx22` varchar(100) DEFAULT NULL,
  `picturePath3` text,
  `picturePath4` text,
  PRIMARY KEY (`chromosomeOfZId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_chromosomedfz
-- ----------------------------

-- ----------------------------
-- Table structure for sx_chromosomedfzzhu
-- ----------------------------
DROP TABLE IF EXISTS `sx_chromosomedfzzhu`;
CREATE TABLE `sx_chromosomedfzzhu` (
  `chromosomeOfZzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `runID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `zkType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`chromosomeOfZzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_chromosomedfzzhu
-- ----------------------------

-- ----------------------------
-- Table structure for sx_datasplitproject
-- ----------------------------
DROP TABLE IF EXISTS `sx_datasplitproject`;
CREATE TABLE `sx_datasplitproject` (
  `dataSplitProjectId` int(11) NOT NULL AUTO_INCREMENT,
  `analysisVersion` varchar(50) DEFAULT NULL,
  `dataPatch` varchar(200) DEFAULT NULL,
  `otherAbnormal` varchar(50) DEFAULT NULL,
  `qualifiedNum` varchar(50) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `sampleNum` varchar(50) DEFAULT NULL,
  `sendMailTime` varchar(50) DEFAULT NULL,
  `sequenceTime` varchar(100) DEFAULT NULL,
  `unqualifiedNum` varchar(50) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `warningNum` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dataSplitProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_datasplitproject
-- ----------------------------

-- ----------------------------
-- Table structure for sx_nitpabnormal
-- ----------------------------
DROP TABLE IF EXISTS `sx_nitpabnormal`;
CREATE TABLE `sx_nitpabnormal` (
  `nitpAbnormalId` int(11) NOT NULL AUTO_INCREMENT,
  `abnormalResult` varchar(100) DEFAULT NULL,
  `analysisID` varchar(100) DEFAULT NULL,
  `isOver` varchar(100) DEFAULT NULL,
  `projectCode` varchar(100) DEFAULT NULL,
  `qcState` varchar(100) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `sampleID` varchar(100) DEFAULT NULL,
  `treatment` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `z13Value` varchar(30) DEFAULT NULL,
  `z18Value` varchar(30) DEFAULT NULL,
  `z21Value` varchar(30) DEFAULT NULL,
  `versionQc` varchar(100) DEFAULT NULL,
  `sytreatment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nitpAbnormalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_nitpabnormal
-- ----------------------------

-- ----------------------------
-- Table structure for sx_nitpabnormalzhu
-- ----------------------------
DROP TABLE IF EXISTS `sx_nitpabnormalzhu`;
CREATE TABLE `sx_nitpabnormalzhu` (
  `nitpAbnormalzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `isOver` varchar(100) DEFAULT NULL,
  `sampleID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`nitpAbnormalzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_nitpabnormalzhu
-- ----------------------------

-- ----------------------------
-- Table structure for sx_nitpdfpositive
-- ----------------------------
DROP TABLE IF EXISTS `sx_nitpdfpositive`;
CREATE TABLE `sx_nitpdfpositive` (
  `nitpOfPositiveId` int(11) NOT NULL AUTO_INCREMENT,
  `abnormalValue` varchar(200) DEFAULT NULL,
  `analysisID` varchar(100) DEFAULT NULL,
  `conclusion` varchar(100) DEFAULT NULL,
  `dataSource` varchar(100) DEFAULT NULL,
  `pictureDesc` varchar(100) DEFAULT NULL,
  `picturePath` text,
  `projectCode` varchar(100) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `sampleID` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `treatment` varchar(100) DEFAULT NULL,
  `picturePath2` text,
  `sytreatment` varchar(100) DEFAULT NULL,
  `qcState` varchar(100) DEFAULT NULL,
  `hhAbnormalValue` varchar(200) DEFAULT NULL,
  `bfAbnormalValue` varchar(200) DEFAULT NULL,
  `bfxAbnormalValue` varchar(200) DEFAULT NULL,
  `picturePath3` text,
  `picturePath4` text,
  PRIMARY KEY (`nitpOfPositiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_nitpdfpositive
-- ----------------------------

-- ----------------------------
-- Table structure for sx_nitpdfpositivezhu
-- ----------------------------
DROP TABLE IF EXISTS `sx_nitpdfpositivezhu`;
CREATE TABLE `sx_nitpdfpositivezhu` (
  `nitpOfPositivezhuId` int(11) NOT NULL AUTO_INCREMENT,
  `sampleID` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `conclusion` varchar(100) DEFAULT NULL,
  `reportType` varchar(100) DEFAULT NULL,
  `isBuchong` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nitpOfPositivezhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_nitpdfpositivezhu
-- ----------------------------

-- ----------------------------
-- Table structure for sx_nitprroject
-- ----------------------------
DROP TABLE IF EXISTS `sx_nitprroject`;
CREATE TABLE `sx_nitprroject` (
  `nitpProjectId` int(11) NOT NULL AUTO_INCREMENT,
  `adqcFail` varchar(30) DEFAULT NULL,
  `adqcPass` varchar(30) DEFAULT NULL,
  `adqcWarning` varchar(30) DEFAULT NULL,
  `elseNum` varchar(30) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `sampleNum` varchar(30) DEFAULT NULL,
  `sendResultTime` varchar(50) DEFAULT NULL,
  `spiltFail` varchar(30) DEFAULT NULL,
  `splitEmailTime` varchar(50) DEFAULT NULL,
  `splitPass` varchar(30) DEFAULT NULL,
  `splitWarning` varchar(30) DEFAULT NULL,
  `t13Num` varchar(30) DEFAULT NULL,
  `t18Num` varchar(30) DEFAULT NULL,
  `t21Num` varchar(30) DEFAULT NULL,
  `projectCode` varchar(50) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `vPipeline` varchar(50) DEFAULT NULL,
  `vdataBase` varchar(50) DEFAULT NULL,
  `versionQc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nitpProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_nitprroject
-- ----------------------------

-- ----------------------------
-- Table structure for sx_qualitycontrol
-- ----------------------------
DROP TABLE IF EXISTS `sx_qualitycontrol`;
CREATE TABLE `sx_qualitycontrol` (
  `qualitycontrolId` int(11) NOT NULL AUTO_INCREMENT,
  `failLink` varchar(100) DEFAULT NULL,
  `isFail` varchar(100) DEFAULT NULL,
  `orderSampleNo` varchar(100) DEFAULT NULL,
  `originalSampleNo` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `zkpSampleNo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`qualitycontrolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_qualitycontrol
-- ----------------------------

-- ----------------------------
-- Table structure for sx_reverification
-- ----------------------------
DROP TABLE IF EXISTS `sx_reverification`;
CREATE TABLE `sx_reverification` (
  `reverificationId` int(11) NOT NULL AUTO_INCREMENT,
  `chr13` double DEFAULT NULL,
  `chr18` double DEFAULT NULL,
  `chr21` double DEFAULT NULL,
  `failLink` varchar(100) DEFAULT NULL,
  `isFail` varchar(100) DEFAULT NULL,
  `originalSampleNo` varchar(100) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `zkpSampleNo` varchar(100) DEFAULT NULL,
  `projectCode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reverificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_reverification
-- ----------------------------

-- ----------------------------
-- Table structure for sx_reverificationzhu
-- ----------------------------
DROP TABLE IF EXISTS `sx_reverificationzhu`;
CREATE TABLE `sx_reverificationzhu` (
  `reverificationzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `qualityResult` varchar(100) DEFAULT NULL,
  `qualityType` varchar(100) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `xxfxIsok` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reverificationzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_reverificationzhu
-- ----------------------------

-- ----------------------------
-- Table structure for sx_statisticsall
-- ----------------------------
DROP TABLE IF EXISTS `sx_statisticsall`;
CREATE TABLE `sx_statisticsall` (
  `statisticsSplitAllSampleId` int(11) NOT NULL AUTO_INCREMENT,
  `runID` varchar(100) DEFAULT NULL,
  `totalBase` varchar(30) DEFAULT NULL,
  `totalRead` varchar(30) DEFAULT NULL,
  `unmatchPercent` varchar(30) DEFAULT NULL,
  `unmatchRead` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`statisticsSplitAllSampleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_statisticsall
-- ----------------------------

-- ----------------------------
-- Table structure for sx_statisticsnosplitsample
-- ----------------------------
DROP TABLE IF EXISTS `sx_statisticsnosplitsample`;
CREATE TABLE `sx_statisticsnosplitsample` (
  `statisticsNoSplitSampleId` int(11) NOT NULL AUTO_INCREMENT,
  `lane1` varchar(30) DEFAULT NULL,
  `lane2` varchar(30) DEFAULT NULL,
  `lane3` varchar(30) DEFAULT NULL,
  `lane4` varchar(30) DEFAULT NULL,
  `percent1` varchar(30) DEFAULT NULL,
  `percent2` varchar(30) DEFAULT NULL,
  `percent3` varchar(30) DEFAULT NULL,
  `percent4` varchar(30) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`statisticsNoSplitSampleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_statisticsnosplitsample
-- ----------------------------

-- ----------------------------
-- Table structure for sx_statisticssplitsample
-- ----------------------------
DROP TABLE IF EXISTS `sx_statisticssplitsample`;
CREATE TABLE `sx_statisticssplitsample` (
  `statisticsSplitSampleId` int(11) NOT NULL AUTO_INCREMENT,
  `adapPollu` varchar(30) DEFAULT NULL,
  `adapSelf` varchar(30) DEFAULT NULL,
  `dup` varchar(30) DEFAULT NULL,
  `firstAdappollu` varchar(30) DEFAULT NULL,
  `firstAdapself` varchar(30) DEFAULT NULL,
  `firstGc` varchar(30) DEFAULT NULL,
  `firstNPercent` varchar(30) DEFAULT NULL,
  `firstq20` varchar(30) DEFAULT NULL,
  `firstq30` varchar(30) DEFAULT NULL,
  `gc` varchar(30) DEFAULT NULL,
  `hybridlibNum` varchar(30) DEFAULT NULL,
  `indexNum` varchar(30) DEFAULT NULL,
  `laneNum` varchar(30) DEFAULT NULL,
  `libraryNum` varchar(30) DEFAULT NULL,
  `nPercent` varchar(30) DEFAULT NULL,
  `needBase` varchar(30) DEFAULT NULL,
  `needReads` varchar(30) DEFAULT NULL,
  `pct` varchar(30) DEFAULT NULL,
  `polyAt` varchar(30) DEFAULT NULL,
  `productivity` varchar(30) DEFAULT NULL,
  `projectNum` varchar(30) DEFAULT NULL,
  `q20` varchar(30) DEFAULT NULL,
  `q30` varchar(30) DEFAULT NULL,
  `qcPatch` varchar(100) DEFAULT NULL,
  `realBase` varchar(30) DEFAULT NULL,
  `realReads` varchar(30) DEFAULT NULL,
  `runID` varchar(100) DEFAULT NULL,
  `sampleName` varchar(30) DEFAULT NULL,
  `secondAdappollu` varchar(30) DEFAULT NULL,
  `secondAdapself` varchar(30) DEFAULT NULL,
  `secondGc` varchar(30) DEFAULT NULL,
  `secondNPercent` varchar(30) DEFAULT NULL,
  `secondq20` varchar(30) DEFAULT NULL,
  `secondq30` varchar(30) DEFAULT NULL,
  `tagIndex` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `qcPatch2` varchar(100) DEFAULT NULL,
  `versionResult` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`statisticsSplitSampleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_statisticssplitsample
-- ----------------------------

-- ----------------------------
-- Table structure for sx_statisticszhu
-- ----------------------------
DROP TABLE IF EXISTS `sx_statisticszhu`;
CREATE TABLE `sx_statisticszhu` (
  `statisticsSplitzhuId` int(11) NOT NULL AUTO_INCREMENT,
  `runID` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`statisticsSplitzhuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sx_statisticszhu
-- ----------------------------

-- ----------------------------
-- Table structure for system_email
-- ----------------------------
DROP TABLE IF EXISTS `system_email`;
CREATE TABLE `system_email` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `methodName` varchar(50) DEFAULT NULL,
  `inputName` varchar(50) DEFAULT NULL,
  `inputTime` varchar(50) DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  `wReceiveName` varchar(300) DEFAULT NULL,
  `eReceiveName` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_email
-- ----------------------------
INSERT INTO `system_email` VALUES ('1', '产前项目管理下单', '产前项目管理任务单下达，邮件内容由表格形式展示包括：预出库日期，出库负责人，预上机日期，上机负责人，信息分析日期，信息负责人，报告最晚日期，报告负责人，样本编号', 'sendPmorder', '1', '2', '刘楠1', '2018-03-23 16:17:41', '黄金龙', '刘楠4,刘楠3');
INSERT INTO `system_email` VALUES ('2', '生育项目管理下单', '生育线项目管理任务单下达，邮件内容由表格形式展示，根据检测项目不同变更展示数据内容\r\n', 'syEmail\r\n', null, null, '刘楠1', '2018-03-22 18:46:59', '刘楠3,刘楠2', '刘楠2,刘楠1,刘楠3');
INSERT INTO `system_email` VALUES ('3', '体检项目管理下单', '体检项目管理任务单下达，邮件内容由表格形式展示，根据检测项目不同变更展示数据内容', 'tjEmail', null, null, '刘楠1', '2018-03-22 19:05:10', '刘楠4,刘楠3,刘楠2', '刘楠4,刘楠3');
INSERT INTO `system_email` VALUES ('4', '肿瘤项目管理下单', '肿瘤项目管理任务单下达，邮件内容由表格形式展示，根据检测项目不同变更展示数据内容\r\n', 'tumourEmail\r\n', '刘楠1', '2018-03-22 18:44:09', '刘楠1', '2018-03-22 18:44:16', '刘楠4,刘楠3', '刘楠4,刘楠3');
INSERT INTO `system_email` VALUES ('5', '肿瘤补录反审提醒', '肿瘤补录，寄样信息与补录信息不一致时，需财务反审\r\n', 'otcRelation\r\n', null, null, '刘楠1', '2018-03-22 17:56:48', '刘楠4,刘楠3', null);
INSERT INTO `system_email` VALUES ('6', '肿瘤补录寄送样信息修改提醒\r\n', '肿瘤补录同步修改寄送样信息时，提醒销售寄样信息被修改', 'sendSampleSendEmail\r\n', '刘楠1', '2018-03-22 18:51:43', '刘楠1', '2018-03-22 18:51:43', null, '刘楠4,刘楠3,王鑫尧,刘楠1,刘楠2');
INSERT INTO `system_email` VALUES ('7', '肿瘤补录寄送样信息修改提醒', '肿瘤补录同步修改寄送样信息时，提醒客服、财务等相关人员修改状态\r\n', 'sendTumourUpdate2Email\r\n', null, null, null, null, null, '刘楠4,刘楠3');
INSERT INTO `system_email` VALUES ('8', '肿瘤审核通过提醒', '肿瘤审核，优逸检测项目审核通过时，提醒相关人员已生成新的报告发放注意查看\r\n', 'updateEmailState\r\n', null, null, '刘楠1', '2018-03-22 17:53:55', '刘楠4,刘楠3', null);
INSERT INTO `system_email` VALUES ('9', '优逸分析结果反馈信息缺失提示', '优逸分析结果反馈信息缺失，如寄送样未添加或补录未添加或寄样与补录姓名不相同时，提示分析结果反馈长传失败', 'uploadFail\r\n', '刘楠1', '2018-03-23 16:13:37', '刘楠1', '2018-03-23 16:14:43', '刘楠3,刘楠2', '刘楠3,刘楠2');
INSERT INTO `system_email` VALUES ('10', '优逸分析结果反馈撤销提醒\r\n', '优逸分析结果反馈分析状态已修改，由已反馈改为未分析。', 'tumourGoback', null, null, '刘楠1', '2018-03-22 17:55:05', '刘楠4,刘楠3,刘楠2,刘楠1', null);
INSERT INTO `system_email` VALUES ('11', '产前报告发放完成通知\r\n', '产前报告发放完成，提示相关人员完成后续工作。', 'reportIssueSendEmail', null, null, '刘楠1', '2018-03-22 17:56:08', '刘楠4,刘楠3', null);
INSERT INTO `system_email` VALUES ('12', '无创报告审核完毕通知', '无创报告审核完毕（中山二院报告审核完毕），提示相关人员完成后续工作。\r\n', 'zsyyReviewSendEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('13', '无创报告审核完毕通知', '无创报告审核完毕（中山二院报告审核完毕），需医院进行审核。\r\n', 'zsyyNoticeSendEmail\r\n', '刘楠1', '2018-03-22 18:26:30', '刘楠1', '2018-03-22 18:26:30', null, '刘楠4,刘楠1,王鑫尧');
INSERT INTO `system_email` VALUES ('14', '产前报告发放邮件发送', '产前报告发放完毕，告知销售，内容包括报告部分信息及报告pdf电子版。\r\n', 'sendReportIssueSendEmail\r\n', '刘楠1', '2018-03-22 18:41:31', '刘楠1', '2018-03-22 18:41:34', null, '刘楠4,刘楠3');
INSERT INTO `system_email` VALUES ('15', '产前审核不通过\r\n', '产前审核不通过告知相关人员修正报告重新生成。\r\n', 'reportReview\r\n', '刘楠1', '2018-03-22 18:53:32', '刘楠1', '2018-03-22 18:53:51', '王鑫尧', '刘楠4,刘楠3');
INSERT INTO `system_email` VALUES ('16', '批量添加BGI报告失败\r\n', '批量添加BGI报告失败，告知相关人员，由于寄送样和补录姓名不一致或寄送样无此数据或不是产前样本导致报告报告生成失败。\r\n', 'reportResult\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('17', '批量添加BGI报告失败', '批量添加BGI报告失败，告知相关人员，由于样本入库与补录信息不一致导致报告报告生成失败。', 'outSampleAndCheck\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('18', '批量添加BGI报告成功\r\n', '批量添加BGI报告成功，告知审核人员审核报告。\r\n', 'reportIsOK\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('19', '批量添加BGI异常样本', 'BGI样本批量添加异常样本，告知相关人员。\r\n', 'bgi\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('20', '外来入库\r\n', '外来入库数据与客服补录信息不一致,提醒相关人员线下沟通处理。\r\n', 'checkSampleChildAndOutSample\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('21', '产前寄送样退款\r\n', '产前寄送样已申请退款，告知相关人员注意样本进度。\r\n', 'tumourTuiKuan\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('23', '生育审核，新生成报告邮件通知\r\n', '新生成XXX份优馨益报告，告知审核人员审核\r\n', 'updateYxyEmailState\r\n', null, null, '刘楠1', '2018-03-22 17:57:19', '刘楠4,刘楠3', null);
INSERT INTO `system_email` VALUES ('24', '生育报告发放告知销售\r\n', '提醒销售报告已寄出，收到后请核对报告和发票情况是否与邮件内容一致\r\n', 'expressInfo\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('25', '生育线电子版报告告知销售附-附件', '告知发送多少分XX产品线报告,电子版见附件,告知产品有(孕产期-其他,叶酸代谢,地中海贫血,耳聋,新筛,染色体异常)\r\n', 'sendReportIssueSendEmail\r\n', null, null, '刘楠1', '2018-03-22 17:58:07', null, '刘楠4,刘楠3,刘楠2');
INSERT INTO `system_email` VALUES ('26', '生育线客服审核过通知质量部审核\r\n', '单个样本提醒告知,客服审核过告知质量部审核\r\n', 'syReviewPassEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('27', '生育线客服审核不通过\r\n', '生育线客服审核不通过告知审核录入人\r\n', 'tumourReviewNotPassEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('28', '生育线质量审核不通过\r\n', '生育线质量审核不通过告知审核录入人\r\n', 'tumourReviewNotPassEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('29', '生成肿瘤报告告知审核\r\n', '新生成XX份肿瘤报告，请审核\r\n', 'tumourSendEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('30', '肿瘤60基因样本修改分析状态\r\n', '肿瘤60基因样本：XXXXXXXXXXXX分析状态从\'已反馈\'改为\'未分析\'\r\n', 'tumourGoback\r\n', '刘楠1', '2018-03-22 17:58:38', '刘楠1', '2018-03-22 17:58:38', null, '刘楠4,刘楠3,刘楠2');
INSERT INTO `system_email` VALUES ('31', '肿瘤报告发放告知销售\r\n', '提醒销售报告已寄出，收到后请核对报告和发票情况是否与邮件内容一致\r\n', 'expressInfo\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('32', '肿瘤60基因结果反馈', '肿瘤60基因结果反馈上传样本在肿瘤寄送样中不存在，样本编号为XXXXXXXX\r\n', 'uploadFail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('33', '肿瘤60基因结果反馈\r\n', '肿瘤60基因结果反馈上传样本,肿瘤寄送样和肿瘤临时补录姓名不一致，样本编号为XXXXXXXXX\r\n', 'uploadFail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('34', '肿瘤线电子版报告告知销售附-附件\r\n', '告知发送多少分XX产品线报告,电子版见附件\r\n', 'sendReportIssueSendEmailTum\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('35', '肿瘤审核不通过告知\r\n', 'XX样本在质量部审核环节不通过，请知悉\r\n', 'tumourReviewNotPassEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('36', '肿瘤审核通过告知\r\n', 'XX样本已通过客服部审核，请知悉！\r\n', 'tumourReviewPassEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('37', '肿瘤审核不通过告知\r\n', 'XX样本在客服部审核环节不通过，请知悉\r\n', 'tumourReviewNotPassEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('38', '上机单已拆分\r\n', '上机日期为XXXX的上机单已拆分\r\n', 'sendBiologicalComputerWork\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('39', '生信上传信息单失败\r\n', '生信上传信息单调用生信接口失败，请知悉\r\n', 'sendBiologicalComputerWrong\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('40', '样本进入实验异常记录\r\n', '样本异常，异常情况：XXXXXXX 请及时处理\r\n', 'sendNitpAbnormal\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('41', '批次质控完成\r\n', 'XXX批次共上传NIPT样本XX例，NIPTVD样本XX例，已生成XX份报告，质控完毕\r\n', 'sendReverification\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('42', 'NIPT结果已上传\r\n', '批次编号为：XXXXXXX的NIPT数据已上传,请到重复验证查看\r\n', 'sendNipt\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('43', '地贫结果已反馈\r\n', '地贫结果已反馈，编号如下：XX,XX,XX\r\n', 'emailNotice\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('44', '新生成地贫报告待审核\r\n', '发送时间为：XXXXXX   新生成地贫报告，请审核\r\n', 'updatethEmailState\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('45', '优馨安上机样本名单（共XX份）\r\n', '优馨安样本即将出报告，详见附件\r\n', 'yxaEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('46', '异常样本项目管理处理完XXX例\r\n', '异常样本项目管理处理完XXXX例，详见异常样本。\r\n', 'projectManagerOk\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('47', '新存入异常样本（共XXX例）\r\n', '新存入异常样本XXX例，详见异常样本。\r\n', 'abnormalSample\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('48', 'AD报告审核通过\r\n', 'AD审核通过\r\n', 'adTongguoEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('49', 'AD报告审核不通过\r\n', 'AD报告审核不通过\r\n', 'adButongguoEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('50', '2100任务单反馈告知\r\n', 'XXXX2100任务单已反馈，共XX个样本，以下是不合格样本\r\n', 'sendBiologicalAnalyzerFeedback\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('51', '2100任务单已下单\r\n', 'XXXX2100任务单已下达，请及时查看\r\n', 'sendBiologicalAnalyzer\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('52', '上机任务单反馈告知\r\n', 'XXXX上机任务单已反馈，共XX个样本，以下是不合格样本\r\n', 'sendBiologicalComputerFeedback\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('53', '上机任务单已下单\r\n', 'XXXX上机任务单已下达，请及时查看！\r\n', 'sendBiologicalComputer\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('54', '建库任务单反馈告知\r\n', 'XXXX建库任务单已反馈，共XX个样本，以下是不合格样本\r\n', 'sendBuildLibrariesFeedback\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('55', '建库任务单已下单\r\n', 'XXXX建库任务单已下达，请及时查看！\r\n', 'sendBuildLibraries\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('56', '样本试验异常—处理方式告知\r\n', 'XX样本在XX环节出现异常，经项目管理XX反馈，处理方式为：XX，请知悉！', 'sendExperimentalAbnormal', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('57', '退款申请已确认(告知事业部)\r\n', '实验领导已确认样本编号：XX的退款申请,项目管理意见：XX实验领导意见：XX请知悉\r\n', 'financeRefundSendEmail2\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('58', '退款申请已确认(告知实验)\r\n', '项目管理已确认样本编号：XX的退款申请,项目管理意见：XX请知悉\r\n', 'financeRefundSendEmail1\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('59', '事业部已处理退款申请\r\n', '样本编号：XX的样本已由事业部推送到财务退款，退款原因：XX,项目管理意见：XX,实验领导意见：XX 请知悉\r\n', 'financeRefundSendEmail3\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('60', '事业部已处理退款申请\r\n', '样本编号：XX的样本已由事业部推送到结算时退款，退款原因：XX,项目管理意见：XX,实验领导意见：XX 请知悉\r\n', 'financeRefundSendEmail3\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('61', '生育线财审不通过\r\n', '以下样本由XX确认财审不通过，请知悉\r\n', 'businessRefundSendEmail1\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('62', '肿瘤线财审不通过\r\n', '以下样本由XX确认财审不通过，请知悉\r\n', 'businessRefundSendEmail2\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('63', '体检线财审不通过\r\n', '以下样本由XX确认财审不通过，请知悉\r\n', 'businessRefundSendEmail3\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('64', '肿瘤线财审通过\r\n', '以下样本由XX确认财审通过，请知悉\r\n', 'transferPass\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('65', '体检线财审通过\r\n', '以下样本由XX确认财审通过，请知悉\r\n', 'transferPass2\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('66', '核酸任务单反馈告知\r\n', '核酸任务单已反馈，共XX个样本，以下是不合格样本：\r\n', 'sendNucleicacidsFeedback\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('67', '阿尔茨海默病核酸下单告知\r\n', '阿尔茨海默病XX份核酸已下单——请反馈\r\n', 'sendNucleicacids\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('68', '核酸任务单已下单\r\n', 'XXXX核酸任务单已下达，请及时查看！\r\n', 'sendNucleicacids2', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('69', '样本入库失败\r\n', 'XX样本入库失败，寄送样无此样本(或检测项目不一致)，请知悉\r\n', 'otcRelation\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('70', '外来入库每日统计产前\r\n', '定时任务发送每日入库产前样本\r\n', 'sendOutsample1\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('71', '外来入库每日统计肿瘤\r\n', '定时任务发送每日入库肿瘤样本\r\n', 'sendOutsample2\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('72', '预处理反馈告知\r\n', 'XXXX预处理任务单已反馈，共XX个样本，以下是不合格样本\r\n', 'sendPretreatmentFeedback\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('73', '预处理任务单下单\r\n', 'XXXX预处理任务单已下达，请及时查看！\r\n', 'jieshouren\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('74', 'QPCR任务单反馈告知\r\n', 'XXXXQPCR任务单已反馈，共XX个样本，以下是不合格样本：\r\n', 'sendQpcrFeedback\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('75', 'QPCR任务单已下单\r\n', 'XXXXQPCR任务单已下达，请及时查看！\r\n', 'sendQpcr\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('76', '产前销售通讯录修改\r\n', '产前销售通讯录ID为:XX的数据被修改\r\n', 'saleContacts\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('77', '寄样信息被修改\r\n', '样本编号为：XX的寄样信息被修改\r\n', 'sendSampleSendEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('78', '产前寄样信息被修改(检测项目)\r\n', '样本编号为：XX的寄样信息被修改\r\n', 'sendSampleUpdateEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('79', '产前寄样信息被修改(编号、姓名、发票抬头、发票金额)\r\n', '样本编号为：XX的寄样信息被修改\r\n', 'sendSampleUpdate2Email\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('80', '销售通讯录修改\r\n', '销售通讯录ID为:XX的数据被修改\r\n', 'saleContacts\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('81', '肿瘤寄样信息被修改(检测项目)\r\n', '样本编号为：XX的寄样信息被修改\r\n', 'sendTumourUpdateEmail\r\n', null, null, null, null, null, null);
INSERT INTO `system_email` VALUES ('82', '肿瘤寄样信息被修改(编号、姓名、发票抬头、发票金额)\r\n', '样本编号为：XX的寄样信息被修改\r\n', 'sendTumourUpdate2Email\r\n', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for system_email_zi
-- ----------------------------
DROP TABLE IF EXISTS `system_email_zi`;
CREATE TABLE `system_email_zi` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `pushType` varchar(50) DEFAULT NULL,
  `recieveName` varchar(300) DEFAULT NULL,
  `inputName` varchar(50) DEFAULT NULL,
  `inputTime` varchar(50) DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  `tid` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_email_zi
-- ----------------------------
INSERT INTO `system_email_zi` VALUES ('1', '微信', '黄金龙', null, null, '刘楠1', '2018-03-23 16:17:41', '1');
INSERT INTO `system_email_zi` VALUES ('3', '邮件', '刘楠4,刘楠3', null, null, null, null, '1');
INSERT INTO `system_email_zi` VALUES ('4', '邮件', '刘楠2,刘楠1,刘楠3', null, null, '刘楠1', '2018-03-22 18:46:59', '2');
INSERT INTO `system_email_zi` VALUES ('5', '邮件', '刘楠4,刘楠3', null, null, '刘楠1', '2018-03-22 18:45:55', '3');
INSERT INTO `system_email_zi` VALUES ('6', '邮件', '刘楠4,刘楠3', null, null, '刘楠1', '2018-03-22 18:44:12', '4');
INSERT INTO `system_email_zi` VALUES ('7', '邮件', '刘楠4,刘楠3', null, null, null, null, '5');
INSERT INTO `system_email_zi` VALUES ('8', '邮件', '刘楠4,刘楠3', null, null, null, null, '7');
INSERT INTO `system_email_zi` VALUES ('9', '微信', '刘楠4,刘楠3,刘楠2', null, null, '刘楠1', '2018-03-22 19:05:10', '3');
INSERT INTO `system_email_zi` VALUES ('10', '微信', '刘楠4,刘楠3', '刘楠1', '2018-03-22 17:54:00', '刘楠1', '2018-03-22 17:54:00', '8');
INSERT INTO `system_email_zi` VALUES ('11', '微信', '刘楠4,刘楠3,刘楠2,刘楠1', '刘楠1', '2018-03-22 17:55:05', '刘楠1', '2018-03-22 17:55:05', '10');
INSERT INTO `system_email_zi` VALUES ('12', '微信', '刘楠4,刘楠3', '刘楠1', '2018-03-22 17:56:09', '刘楠1', '2018-03-22 17:56:09', '11');
INSERT INTO `system_email_zi` VALUES ('13', '微信', '刘楠4,刘楠3', '刘楠1', '2018-03-22 17:56:48', '刘楠1', '2018-03-22 17:56:48', '5');
INSERT INTO `system_email_zi` VALUES ('14', '微信', '刘楠4,刘楠3', '刘楠1', '2018-03-22 17:57:19', '刘楠1', '2018-03-22 17:57:19', '23');
INSERT INTO `system_email_zi` VALUES ('15', '邮件', '刘楠4,刘楠3,刘楠2', '刘楠1', '2018-03-22 17:58:07', '刘楠1', '2018-03-22 17:58:07', '25');
INSERT INTO `system_email_zi` VALUES ('16', '邮件', '刘楠4,刘楠3,刘楠2', '刘楠1', '2018-03-22 17:58:38', '刘楠1', '2018-03-22 17:58:38', '30');
INSERT INTO `system_email_zi` VALUES ('17', '邮件', '刘楠4,刘楠1,王鑫尧', '刘楠1', '2018-03-22 18:26:30', '刘楠1', '2018-03-22 18:26:30', '13');
INSERT INTO `system_email_zi` VALUES ('18', '邮件', '刘楠4,刘楠3', '刘楠1', '2018-03-22 18:41:31', '刘楠1', '2018-03-22 18:41:34', '14');
INSERT INTO `system_email_zi` VALUES ('19', '微信', '刘楠4,刘楠3', '刘楠1', '2018-03-22 18:44:16', '刘楠1', '2018-03-22 18:44:16', '4');
INSERT INTO `system_email_zi` VALUES ('20', '微信', '刘楠3,刘楠2', '刘楠1', '2018-03-22 18:46:48', '刘楠1', '2018-03-22 18:46:48', '2');
INSERT INTO `system_email_zi` VALUES ('21', '邮件', '刘楠4,刘楠3,王鑫尧,刘楠1,刘楠2', '刘楠1', '2018-03-22 18:51:43', '刘楠1', '2018-03-22 18:51:43', '6');
INSERT INTO `system_email_zi` VALUES ('22', '邮件', '刘楠4,刘楠3', '刘楠1', '2018-03-22 18:53:33', '刘楠1', '2018-03-22 18:53:33', '15');
INSERT INTO `system_email_zi` VALUES ('23', '微信', '王鑫尧', '刘楠1', '2018-03-22 18:53:51', '刘楠1', '2018-03-22 18:53:51', '15');
INSERT INTO `system_email_zi` VALUES ('24', '微信', '刘楠3,刘楠2', '刘楠1', '2018-03-23 16:13:37', '刘楠1', '2018-03-23 16:14:43', '9');
INSERT INTO `system_email_zi` VALUES ('25', '邮件', '刘楠3,刘楠2', '刘楠1', '2018-03-23 16:14:33', '刘楠1', '2018-03-23 16:14:33', '9');

-- ----------------------------
-- Table structure for sys_attendance
-- ----------------------------
DROP TABLE IF EXISTS `sys_attendance`;
CREATE TABLE `sys_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attClasses` varchar(20) DEFAULT NULL,
  `attDate` varchar(20) DEFAULT NULL,
  `attDeptName` varchar(20) DEFAULT NULL,
  `attJobNumber` varchar(20) DEFAULT NULL,
  `attSignin` varchar(20) DEFAULT NULL,
  `attSignout` varchar(20) DEFAULT NULL,
  `attState` varchar(20) DEFAULT NULL,
  `attUserName` varchar(20) DEFAULT NULL,
  `attWeek` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=997 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_attendance
-- ----------------------------
INSERT INTO `sys_attendance` VALUES ('499', '正常班', '2015-11-02', '管理层', '4.0', null, null, '旷工', '吕爱民', '一');
INSERT INTO `sys_attendance` VALUES ('500', '正常班', '2015-11-02', '质量部', '26.0', null, null, '旷工', '陈冬雪', '一');
INSERT INTO `sys_attendance` VALUES ('501', '正常班', '2015-11-02', '实验中心部', '12.0', null, null, '旷工,加班', '葛博', '一');
INSERT INTO `sys_attendance` VALUES ('502', '正常班', '2015-11-02', '市场部', '47.0', null, null, '旷工', '温孝楠', '一');
INSERT INTO `sys_attendance` VALUES ('503', '正常班', '2015-11-02', 'IT部', '24.0', null, null, '旷工', '黄金龙', '一');
INSERT INTO `sys_attendance` VALUES ('504', '正常班', '2015-11-02', '管理层', '6.0', null, null, '旷工', '王总', '一');
INSERT INTO `sys_attendance` VALUES ('505', '正常班', '2015-11-02', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '一');
INSERT INTO `sys_attendance` VALUES ('506', '正常班', '2015-11-02', '人事行政部', '8.0', null, null, '旷工', '钱坤', '一');
INSERT INTO `sys_attendance` VALUES ('507', '正常班', '2015-11-02', '实验中心部', '33.0', '10:10', '18:08', '旷工', '霍旭', '一');
INSERT INTO `sys_attendance` VALUES ('508', '正常班', '2015-11-02', '信息分析', '34.0', null, null, '旷工', '刘洋', '一');
INSERT INTO `sys_attendance` VALUES ('509', '正常班', '2015-11-02', '实验中心部', '1.0', null, null, '旷工', '李映欧', '一');
INSERT INTO `sys_attendance` VALUES ('510', '正常班', '2015-11-02', '市场部', '3.0', null, null, '旷工', '唐宇', '一');
INSERT INTO `sys_attendance` VALUES ('511', '正常班', '2015-11-02', '市场部', '21.0', null, null, '旷工,加班', '周亚', '一');
INSERT INTO `sys_attendance` VALUES ('512', '正常班', '2015-11-02', '[默认部门]', '88.0', null, null, '旷工', '公司', '一');
INSERT INTO `sys_attendance` VALUES ('513', '正常班', '2015-11-02', '财务部', '45.0', null, null, '旷工', '田洁', '一');
INSERT INTO `sys_attendance` VALUES ('514', '正常班', '2015-11-02', '人事行政部', '38.0', null, null, '旷工', '陈心铱', '一');
INSERT INTO `sys_attendance` VALUES ('515', '正常班', '2015-11-02', 'IT部', '39.0', null, null, '旷工', '顾文杰', '一');
INSERT INTO `sys_attendance` VALUES ('516', '正常班', '2015-11-02', '人事行政部', '40.0', null, null, '旷工', '许多', '一');
INSERT INTO `sys_attendance` VALUES ('517', '正常班', '2015-11-02', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '一');
INSERT INTO `sys_attendance` VALUES ('518', '正常班', '2015-11-02', '质量部', '41.0', null, null, '旷工', '张娟', '一');
INSERT INTO `sys_attendance` VALUES ('519', '正常班', '2015-11-02', '管理层', '44.0', null, null, '旷工', '周晔', '一');
INSERT INTO `sys_attendance` VALUES ('520', '正常班', '2015-11-02', '研发部', '42.0', null, null, '旷工', '李富威', '一');
INSERT INTO `sys_attendance` VALUES ('521', '正常班', '2015-11-02', '财务部', '43.0', null, null, '旷工', '谷艳', '一');
INSERT INTO `sys_attendance` VALUES ('522', '正常班', '2015-11-02', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '一');
INSERT INTO `sys_attendance` VALUES ('523', '正常班', '2015-11-02', '采购部', '22.0', null, null, '旷工', '张姣', '一');
INSERT INTO `sys_attendance` VALUES ('524', '正常班', '2015-11-02', '质量部', '48.0', null, null, '旷工', '王宏丽', '一');
INSERT INTO `sys_attendance` VALUES ('525', '正常班', '2015-11-02', '质量部', '10.0', null, null, '旷工', '姬晓勇', '一');
INSERT INTO `sys_attendance` VALUES ('526', '正常班', '2015-11-02', '人事行政部', '25.0', null, null, '旷工', '付微微', '一');
INSERT INTO `sys_attendance` VALUES ('527', '正常班', '2015-11-03', 'IT部', '24.0', null, null, '旷工', '黄金龙', '二');
INSERT INTO `sys_attendance` VALUES ('528', '正常班', '2015-11-03', '实验中心部', '33.0', null, null, '旷工', '霍旭', '二');
INSERT INTO `sys_attendance` VALUES ('529', '正常班', '2015-11-03', '财务部', '45.0', null, null, '旷工', '田洁', '二');
INSERT INTO `sys_attendance` VALUES ('530', '正常班', '2015-11-03', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '二');
INSERT INTO `sys_attendance` VALUES ('531', '正常班', '2015-11-03', '[默认部门]', '88.0', null, null, '旷工', '公司', '二');
INSERT INTO `sys_attendance` VALUES ('532', '正常班', '2015-11-03', 'IT部', '39.0', '10:06', '18:23', '旷工', '顾文杰', '二');
INSERT INTO `sys_attendance` VALUES ('533', '正常班', '2015-11-03', '管理层', '6.0', null, null, '旷工', '王总', '二');
INSERT INTO `sys_attendance` VALUES ('534', '正常班', '2015-11-03', '质量部', '48.0', null, null, '旷工', '王宏丽', '二');
INSERT INTO `sys_attendance` VALUES ('535', '正常班', '2015-11-03', '管理层', '4.0', null, null, '旷工', '吕爱民', '二');
INSERT INTO `sys_attendance` VALUES ('536', '正常班', '2015-11-03', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '二');
INSERT INTO `sys_attendance` VALUES ('537', '正常班', '2015-11-03', '人事行政部', '8.0', null, null, '旷工', '钱坤', '二');
INSERT INTO `sys_attendance` VALUES ('538', '正常班', '2015-11-03', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '二');
INSERT INTO `sys_attendance` VALUES ('539', '正常班', '2015-11-03', '信息分析', '34.0', null, null, '旷工', '刘洋', '二');
INSERT INTO `sys_attendance` VALUES ('540', '正常班', '2015-11-03', '财务部', '43.0', null, null, '旷工', '谷艳', '二');
INSERT INTO `sys_attendance` VALUES ('541', '正常班', '2015-11-03', '实验中心部', '7.0', null, null, '旷工', '高婧婧', '二');
INSERT INTO `sys_attendance` VALUES ('542', '正常班', '2015-11-03', '管理层', '44.0', null, null, '旷工', '周晔', '二');
INSERT INTO `sys_attendance` VALUES ('543', '正常班', '2015-11-03', '人事行政部', '40.0', null, null, '旷工', '许多', '二');
INSERT INTO `sys_attendance` VALUES ('544', '正常班', '2015-11-03', '市场部', '47.0', null, null, '旷工', '温孝楠', '二');
INSERT INTO `sys_attendance` VALUES ('545', '正常班', '2015-11-03', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '二');
INSERT INTO `sys_attendance` VALUES ('546', '正常班', '2015-11-03', '质量部', '10.0', null, null, '旷工', '姬晓勇', '二');
INSERT INTO `sys_attendance` VALUES ('547', '正常班', '2015-11-03', '市场部', '3.0', null, null, '旷工', '唐宇', '二');
INSERT INTO `sys_attendance` VALUES ('548', '正常班', '2015-11-03', '质量部', '41.0', null, null, '旷工', '张娟', '二');
INSERT INTO `sys_attendance` VALUES ('549', '正常班', '2015-11-03', '人事行政部', '25.0', null, null, '旷工', '付微微', '二');
INSERT INTO `sys_attendance` VALUES ('550', '正常班', '2015-11-03', '研发部', '42.0', null, null, '旷工', '李富威', '二');
INSERT INTO `sys_attendance` VALUES ('551', '正常班', '2015-11-03', '实验中心部', '1.0', null, null, '旷工', '李映欧', '二');
INSERT INTO `sys_attendance` VALUES ('552', '正常班', '2015-11-04', '实验中心部', '33.0', '08:57', '14:27', '旷工', '霍旭', '三');
INSERT INTO `sys_attendance` VALUES ('553', '正常班', '2015-11-04', '财务部', '43.0', null, null, '旷工', '谷艳', '三');
INSERT INTO `sys_attendance` VALUES ('554', '正常班', '2015-11-04', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '三');
INSERT INTO `sys_attendance` VALUES ('555', '正常班', '2015-11-04', '研发部', '42.0', null, null, '旷工', '李富威', '三');
INSERT INTO `sys_attendance` VALUES ('556', '正常班', '2015-11-04', '研发部', '15.0', null, null, '旷工,加班', '刘倩', '三');
INSERT INTO `sys_attendance` VALUES ('557', '正常班', '2015-11-04', '实验中心部', '7.0', null, null, '旷工', '高婧婧', '三');
INSERT INTO `sys_attendance` VALUES ('558', '正常班', '2015-11-04', '人事行政部', '25.0', null, null, '旷工', '付微微', '三');
INSERT INTO `sys_attendance` VALUES ('559', '正常班', '2015-11-04', '管理层', '4.0', null, null, '旷工', '吕爱民', '三');
INSERT INTO `sys_attendance` VALUES ('560', '正常班', '2015-11-04', '管理层', '44.0', null, null, '旷工', '周晔', '三');
INSERT INTO `sys_attendance` VALUES ('561', '正常班', '2015-11-04', '质量部', '41.0', null, null, '旷工', '张娟', '三');
INSERT INTO `sys_attendance` VALUES ('562', '正常班', '2015-11-04', '[默认部门]', '88.0', null, null, '旷工', '公司', '三');
INSERT INTO `sys_attendance` VALUES ('563', '正常班', '2015-11-04', '财务部', '45.0', null, null, '旷工', '田洁', '三');
INSERT INTO `sys_attendance` VALUES ('564', '正常班', '2015-11-04', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '三');
INSERT INTO `sys_attendance` VALUES ('565', '正常班', '2015-11-04', '信息分析', '34.0', null, null, '旷工', '刘洋', '三');
INSERT INTO `sys_attendance` VALUES ('566', '正常班', '2015-11-04', '市场部', '3.0', null, null, '旷工,早退', '唐宇', '三');
INSERT INTO `sys_attendance` VALUES ('567', '正常班', '2015-11-04', '实验中心部', '1.0', null, null, '旷工', '李映欧', '三');
INSERT INTO `sys_attendance` VALUES ('568', '正常班', '2015-11-04', '管理层', '6.0', null, null, '旷工', '王总', '三');
INSERT INTO `sys_attendance` VALUES ('569', '正常班', '2015-11-04', 'IT部', '24.0', null, null, '旷工', '黄金龙', '三');
INSERT INTO `sys_attendance` VALUES ('570', '正常班', '2015-11-04', '市场部', '47.0', null, null, '旷工', '温孝楠', '三');
INSERT INTO `sys_attendance` VALUES ('571', '正常班', '2015-11-04', '质量部', '48.0', null, null, '旷工', '王宏丽', '三');
INSERT INTO `sys_attendance` VALUES ('572', '正常班', '2015-11-04', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '三');
INSERT INTO `sys_attendance` VALUES ('573', '正常班', '2015-11-04', '采购部', '22.0', null, null, '旷工', '张姣', '三');
INSERT INTO `sys_attendance` VALUES ('574', '正常班', '2015-11-04', '人事行政部', '8.0', null, null, '旷工', '钱坤', '三');
INSERT INTO `sys_attendance` VALUES ('575', '正常班', '2015-11-04', '质量部', '10.0', null, null, '旷工', '姬晓勇', '三');
INSERT INTO `sys_attendance` VALUES ('576', '正常班', '2015-11-04', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '三');
INSERT INTO `sys_attendance` VALUES ('577', '正常班', '2015-11-05', '管理层', '44.0', null, null, '旷工', '周晔', '四');
INSERT INTO `sys_attendance` VALUES ('578', '正常班', '2015-11-05', '信息分析', '28.0', '10:51', '18:12', '旷工', '徐寒黎', '四');
INSERT INTO `sys_attendance` VALUES ('579', '正常班', '2015-11-05', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '四');
INSERT INTO `sys_attendance` VALUES ('580', '正常班', '2015-11-05', '人事行政部', '40.0', null, null, '旷工', '许多', '四');
INSERT INTO `sys_attendance` VALUES ('581', '正常班', '2015-11-05', '人事行政部', '25.0', null, null, '旷工', '付微微', '四');
INSERT INTO `sys_attendance` VALUES ('582', '正常班', '2015-11-05', '市场部', '47.0', null, null, '旷工', '温孝楠', '四');
INSERT INTO `sys_attendance` VALUES ('583', '正常班', '2015-11-05', '实验中心部', '12.0', null, null, '旷工,加班', '葛博', '四');
INSERT INTO `sys_attendance` VALUES ('584', '正常班', '2015-11-05', '财务部', '37.0', null, null, '旷工,迟到', '张艺骞', '四');
INSERT INTO `sys_attendance` VALUES ('585', '正常班', '2015-11-05', '质量部', '26.0', null, null, '旷工,加班', '陈冬雪', '四');
INSERT INTO `sys_attendance` VALUES ('586', '正常班', '2015-11-05', '实验中心部', '1.0', null, null, '旷工', '李映欧', '四');
INSERT INTO `sys_attendance` VALUES ('587', '正常班', '2015-11-05', '市场部', '3.0', null, null, '旷工', '唐宇', '四');
INSERT INTO `sys_attendance` VALUES ('588', '正常班', '2015-11-05', '质量部', '41.0', null, null, '旷工', '张娟', '四');
INSERT INTO `sys_attendance` VALUES ('589', '正常班', '2015-11-05', '研发部', '42.0', null, null, '旷工', '李富威', '四');
INSERT INTO `sys_attendance` VALUES ('590', '正常班', '2015-11-05', '质量部', '10.0', null, null, '旷工', '姬晓勇', '四');
INSERT INTO `sys_attendance` VALUES ('591', '正常班', '2015-11-05', '财务部', '43.0', null, null, '旷工', '谷艳', '四');
INSERT INTO `sys_attendance` VALUES ('592', '正常班', '2015-11-05', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '四');
INSERT INTO `sys_attendance` VALUES ('593', '正常班', '2015-11-05', '人事行政部', '032_1', null, null, '旷工,加班', '于晓蕊', '四');
INSERT INTO `sys_attendance` VALUES ('594', '正常班', '2015-11-05', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '四');
INSERT INTO `sys_attendance` VALUES ('595', '正常班', '2015-11-05', 'IT部', '24.0', null, null, '旷工', '黄金龙', '四');
INSERT INTO `sys_attendance` VALUES ('596', '正常班', '2015-11-05', '质量部', '48.0', null, null, '旷工', '王宏丽', '四');
INSERT INTO `sys_attendance` VALUES ('597', '正常班', '2015-11-05', '管理层', '6.0', null, null, '旷工', '王总', '四');
INSERT INTO `sys_attendance` VALUES ('598', '正常班', '2015-11-05', '管理层', '4.0', null, null, '旷工', '吕爱民', '四');
INSERT INTO `sys_attendance` VALUES ('599', '正常班', '2015-11-05', '实验中心部', '17.0', '08:51', '14:22', '旷工', '曾雪霞', '四');
INSERT INTO `sys_attendance` VALUES ('600', '正常班', '2015-11-05', '[默认部门]', '88.0', null, null, '旷工', '公司', '四');
INSERT INTO `sys_attendance` VALUES ('601', '正常班', '2015-11-05', '研发部', '15.0', null, null, '旷工,加班', '刘倩', '四');
INSERT INTO `sys_attendance` VALUES ('602', '正常班', '2015-11-05', '财务部', '45.0', null, null, '旷工', '田洁', '四');
INSERT INTO `sys_attendance` VALUES ('603', '正常班', '2015-11-05', '实验中心部', '33.0', null, null, '旷工', '霍旭', '四');
INSERT INTO `sys_attendance` VALUES ('604', '正常班', '2015-11-05', '人事行政部', '8.0', null, null, '旷工', '钱坤', '四');
INSERT INTO `sys_attendance` VALUES ('605', '正常班', '2015-11-05', '信息分析', '34.0', null, null, '旷工', '刘洋', '四');
INSERT INTO `sys_attendance` VALUES ('606', '正常班', '2015-11-06', '质量部', '10.0', null, null, '旷工', '姬晓勇', '五');
INSERT INTO `sys_attendance` VALUES ('607', '正常班', '2015-11-06', '市场部', '3.0', null, null, '旷工', '唐宇', '五');
INSERT INTO `sys_attendance` VALUES ('608', '正常班', '2015-11-06', '实验中心部', '1.0', null, null, '旷工', '李映欧', '五');
INSERT INTO `sys_attendance` VALUES ('609', '正常班', '2015-11-06', '质量部', '41.0', null, null, '旷工', '张娟', '五');
INSERT INTO `sys_attendance` VALUES ('610', '正常班', '2015-11-06', '研发部', '42.0', null, null, '旷工', '李富威', '五');
INSERT INTO `sys_attendance` VALUES ('611', '正常班', '2015-11-06', '研发部', '15.0', null, null, '旷工', '刘倩', '五');
INSERT INTO `sys_attendance` VALUES ('612', '正常班', '2015-11-06', '管理层', '6.0', null, null, '旷工', '王总', '五');
INSERT INTO `sys_attendance` VALUES ('613', '正常班', '2015-11-06', '实验中心部', '7.0', null, null, '旷工,加班', '高婧婧', '五');
INSERT INTO `sys_attendance` VALUES ('614', '正常班', '2015-11-06', '信息分析', '28.0', null, null, '旷工,迟到', '徐寒黎', '五');
INSERT INTO `sys_attendance` VALUES ('615', '正常班', '2015-11-06', '实验中心部', '17.0', null, null, '旷工', '曾雪霞', '五');
INSERT INTO `sys_attendance` VALUES ('616', '正常班', '2015-11-06', '人事行政部', '008_1', null, null, '旷工,早退', '1660777.0', '五');
INSERT INTO `sys_attendance` VALUES ('617', '正常班', '2015-11-06', '管理层', '4.0', null, null, '旷工', '吕爱民', '五');
INSERT INTO `sys_attendance` VALUES ('618', '正常班', '2015-11-06', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '五');
INSERT INTO `sys_attendance` VALUES ('619', '正常班', '2015-11-06', '人事行政部', '40.0', null, null, '旷工', '许多', '五');
INSERT INTO `sys_attendance` VALUES ('620', '正常班', '2015-11-06', 'IT部', '31.0', null, null, '旷工', '聂梦肖', '五');
INSERT INTO `sys_attendance` VALUES ('621', '正常班', '2015-11-06', 'IT部', '39.0', null, null, '旷工', '顾文杰', '五');
INSERT INTO `sys_attendance` VALUES ('622', '正常班', '2015-11-06', '[默认部门]', '88.0', null, null, '旷工', '公司', '五');
INSERT INTO `sys_attendance` VALUES ('623', '正常班', '2015-11-06', '人事行政部', '8.0', null, null, '旷工', '钱坤', '五');
INSERT INTO `sys_attendance` VALUES ('624', '正常班', '2015-11-06', 'IT部', '24.0', null, null, '旷工', '黄金龙', '五');
INSERT INTO `sys_attendance` VALUES ('625', '正常班', '2015-11-06', '人事行政部', '25.0', null, null, '旷工', '付微微', '五');
INSERT INTO `sys_attendance` VALUES ('626', '正常班', '2015-11-06', '信息分析', '34.0', null, null, '旷工', '刘洋', '五');
INSERT INTO `sys_attendance` VALUES ('627', '正常班', '2015-11-06', '市场部', '47.0', null, null, '旷工', '温孝楠', '五');
INSERT INTO `sys_attendance` VALUES ('628', '正常班', '2015-11-06', '财务部', '43.0', null, null, '旷工', '谷艳', '五');
INSERT INTO `sys_attendance` VALUES ('629', '正常班', '2015-11-06', '财务部', '45.0', null, null, '旷工', '田洁', '五');
INSERT INTO `sys_attendance` VALUES ('630', '正常班', '2015-11-06', '质量部', '48.0', null, null, '旷工', '王宏丽', '五');
INSERT INTO `sys_attendance` VALUES ('631', '正常班', '2015-11-06', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '五');
INSERT INTO `sys_attendance` VALUES ('632', '正常班', '2015-11-06', '管理层', '44.0', null, null, '旷工', '周晔', '五');
INSERT INTO `sys_attendance` VALUES ('633', '正常班', '2015-11-06', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '五');
INSERT INTO `sys_attendance` VALUES ('634', '正常班', '2015-11-09', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '一');
INSERT INTO `sys_attendance` VALUES ('635', '正常班', '2015-11-09', 'IT部', '39.0', null, null, '旷工', '顾文杰', '一');
INSERT INTO `sys_attendance` VALUES ('636', '正常班', '2015-11-09', '管理层', '4.0', null, null, '旷工', '吕爱民', '一');
INSERT INTO `sys_attendance` VALUES ('637', '正常班', '2015-11-09', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '一');
INSERT INTO `sys_attendance` VALUES ('638', '正常班', '2015-11-09', '市场部', '47.0', null, null, '旷工', '温孝楠', '一');
INSERT INTO `sys_attendance` VALUES ('639', '正常班', '2015-11-09', 'IT部', '24.0', null, null, '旷工', '黄金龙', '一');
INSERT INTO `sys_attendance` VALUES ('640', '正常班', '2015-11-09', '信息分析', '34.0', null, null, '旷工', '刘洋', '一');
INSERT INTO `sys_attendance` VALUES ('641', '正常班', '2015-11-09', '研发部', '15.0', null, null, '旷工', '刘倩', '一');
INSERT INTO `sys_attendance` VALUES ('642', '正常班', '2015-11-09', '质量部', '48.0', null, null, '旷工', '王宏丽', '一');
INSERT INTO `sys_attendance` VALUES ('643', '正常班', '2015-11-09', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '一');
INSERT INTO `sys_attendance` VALUES ('644', '正常班', '2015-11-09', '研发部', '42.0', null, null, '旷工', '李富威', '一');
INSERT INTO `sys_attendance` VALUES ('645', '正常班', '2015-11-09', '市场部', '3.0', null, null, '旷工', '唐宇', '一');
INSERT INTO `sys_attendance` VALUES ('646', '正常班', '2015-11-09', '实验中心部', '1.0', null, null, '旷工', '李映欧', '一');
INSERT INTO `sys_attendance` VALUES ('647', '正常班', '2015-11-09', '[默认部门]', '88.0', null, null, '旷工', '公司', '一');
INSERT INTO `sys_attendance` VALUES ('648', '正常班', '2015-11-09', '人事行政部', '25.0', null, null, '旷工', '付微微', '一');
INSERT INTO `sys_attendance` VALUES ('649', '正常班', '2015-11-09', '人事行政部', '8.0', null, null, '旷工', '钱坤', '一');
INSERT INTO `sys_attendance` VALUES ('650', '正常班', '2015-11-09', '管理层', '44.0', null, null, '旷工', '周晔', '一');
INSERT INTO `sys_attendance` VALUES ('651', '正常班', '2015-11-09', '财务部', '43.0', null, null, '旷工', '谷艳', '一');
INSERT INTO `sys_attendance` VALUES ('652', '正常班', '2015-11-09', '财务部', '45.0', null, null, '旷工', '田洁', '一');
INSERT INTO `sys_attendance` VALUES ('653', '正常班', '2015-11-09', '实验中心部', '33.0', null, null, '旷工', '霍旭', '一');
INSERT INTO `sys_attendance` VALUES ('654', '正常班', '2015-11-09', '采购部', '22.0', null, null, '旷工', '张姣', '一');
INSERT INTO `sys_attendance` VALUES ('655', '正常班', '2015-11-09', '实验中心部', '17.0', null, null, '旷工', '曾雪霞', '一');
INSERT INTO `sys_attendance` VALUES ('656', '正常班', '2015-11-09', '管理层', '6.0', null, null, '旷工', '王总', '一');
INSERT INTO `sys_attendance` VALUES ('657', '正常班', '2015-11-10', '质量部', '10.0', null, null, '旷工', '姬晓勇', '二');
INSERT INTO `sys_attendance` VALUES ('658', '正常班', '2015-11-10', '财务部', '45.0', null, null, '旷工', '田洁', '二');
INSERT INTO `sys_attendance` VALUES ('659', '正常班', '2015-11-10', 'IT部', '39.0', null, null, '旷工', '顾文杰', '二');
INSERT INTO `sys_attendance` VALUES ('660', '正常班', '2015-11-10', '研发部', '15.0', null, null, '旷工', '刘倩', '二');
INSERT INTO `sys_attendance` VALUES ('661', '正常班', '2015-11-10', '[默认部门]', '88.0', null, null, '旷工', '公司', '二');
INSERT INTO `sys_attendance` VALUES ('662', '正常班', '2015-11-10', '人事行政部', '40.0', null, null, '旷工', '许多', '二');
INSERT INTO `sys_attendance` VALUES ('663', '正常班', '2015-11-10', 'IT部', '24.0', null, null, '旷工', '黄金龙', '二');
INSERT INTO `sys_attendance` VALUES ('664', '正常班', '2015-11-10', '质量部', '48.0', null, null, '旷工', '王宏丽', '二');
INSERT INTO `sys_attendance` VALUES ('665', '正常班', '2015-11-10', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '二');
INSERT INTO `sys_attendance` VALUES ('666', '正常班', '2015-11-10', '人事行政部', '25.0', null, null, '旷工', '付微微', '二');
INSERT INTO `sys_attendance` VALUES ('667', '正常班', '2015-11-10', '市场部', '3.0', null, null, '旷工', '唐宇', '二');
INSERT INTO `sys_attendance` VALUES ('668', '正常班', '2015-11-10', '人事行政部', '8.0', null, null, '旷工', '钱坤', '二');
INSERT INTO `sys_attendance` VALUES ('669', '正常班', '2015-11-10', '研发部', '42.0', null, null, '旷工', '李富威', '二');
INSERT INTO `sys_attendance` VALUES ('670', '正常班', '2015-11-10', '财务部', '43.0', null, null, '旷工', '谷艳', '二');
INSERT INTO `sys_attendance` VALUES ('671', '正常班', '2015-11-10', '实验中心部', '33.0', '08:28', '15:21', '旷工', '霍旭', '二');
INSERT INTO `sys_attendance` VALUES ('672', '正常班', '2015-11-10', '管理层', '6.0', null, null, '旷工', '王总', '二');
INSERT INTO `sys_attendance` VALUES ('673', '正常班', '2015-11-10', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '二');
INSERT INTO `sys_attendance` VALUES ('674', '正常班', '2015-11-10', '管理层', '4.0', null, null, '旷工', '吕爱民', '二');
INSERT INTO `sys_attendance` VALUES ('675', '正常班', '2015-11-10', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '二');
INSERT INTO `sys_attendance` VALUES ('676', '正常班', '2015-11-10', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '二');
INSERT INTO `sys_attendance` VALUES ('677', '正常班', '2015-11-10', '实验中心部', '7.0', '08:28', '13:46', '旷工', '高婧婧', '二');
INSERT INTO `sys_attendance` VALUES ('678', '正常班', '2015-11-10', '市场部', '47.0', null, null, '旷工', '温孝楠', '二');
INSERT INTO `sys_attendance` VALUES ('679', '正常班', '2015-11-10', '信息分析', '34.0', null, null, '旷工', '刘洋', '二');
INSERT INTO `sys_attendance` VALUES ('680', '正常班', '2015-11-10', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '二');
INSERT INTO `sys_attendance` VALUES ('681', '正常班', '2015-11-10', '管理层', '44.0', null, null, '旷工', '周晔', '二');
INSERT INTO `sys_attendance` VALUES ('682', '正常班', '2015-11-10', '实验中心部', '1.0', null, null, '旷工', '李映欧', '二');
INSERT INTO `sys_attendance` VALUES ('683', '正常班', '2015-11-11', '管理层', '4.0', null, null, '旷工', '吕爱民', '三');
INSERT INTO `sys_attendance` VALUES ('684', '正常班', '2015-11-11', '市场部', '47.0', null, null, '旷工', '温孝楠', '三');
INSERT INTO `sys_attendance` VALUES ('685', '正常班', '2015-11-11', '[默认部门]', '88.0', null, null, '旷工', '公司', '三');
INSERT INTO `sys_attendance` VALUES ('686', '正常班', '2015-11-11', '人事行政部', '8.0', null, null, '旷工', '钱坤', '三');
INSERT INTO `sys_attendance` VALUES ('687', '正常班', '2015-11-11', 'IT部', '24.0', null, null, '旷工', '黄金龙', '三');
INSERT INTO `sys_attendance` VALUES ('688', '正常班', '2015-11-11', '管理层', '6.0', null, null, '旷工', '王总', '三');
INSERT INTO `sys_attendance` VALUES ('689', '正常班', '2015-11-11', '财务部', '45.0', null, null, '旷工', '田洁', '三');
INSERT INTO `sys_attendance` VALUES ('690', '正常班', '2015-11-11', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '三');
INSERT INTO `sys_attendance` VALUES ('691', '正常班', '2015-11-11', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '三');
INSERT INTO `sys_attendance` VALUES ('692', '正常班', '2015-11-11', '质量部', '26.0', null, null, '旷工', '陈冬雪', '三');
INSERT INTO `sys_attendance` VALUES ('693', '正常班', '2015-11-11', '信息分析', '34.0', null, null, '旷工', '刘洋', '三');
INSERT INTO `sys_attendance` VALUES ('694', '正常班', '2015-11-11', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '三');
INSERT INTO `sys_attendance` VALUES ('695', '正常班', '2015-11-11', '人事行政部', '25.0', null, null, '旷工', '付微微', '三');
INSERT INTO `sys_attendance` VALUES ('696', '正常班', '2015-11-11', '研发部', '15.0', null, null, '旷工', '刘倩', '三');
INSERT INTO `sys_attendance` VALUES ('697', '正常班', '2015-11-11', '人事行政部', '40.0', null, null, '旷工', '许多', '三');
INSERT INTO `sys_attendance` VALUES ('698', '正常班', '2015-11-11', '质量部', '48.0', null, null, '旷工', '王宏丽', '三');
INSERT INTO `sys_attendance` VALUES ('699', '正常班', '2015-11-11', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '三');
INSERT INTO `sys_attendance` VALUES ('700', '正常班', '2015-11-11', '质量部', '10.0', null, null, '旷工', '姬晓勇', '三');
INSERT INTO `sys_attendance` VALUES ('701', '正常班', '2015-11-11', '研发部', '42.0', null, null, '旷工', '李富威', '三');
INSERT INTO `sys_attendance` VALUES ('702', '正常班', '2015-11-11', '财务部', '43.0', null, null, '旷工', '谷艳', '三');
INSERT INTO `sys_attendance` VALUES ('703', '正常班', '2015-11-11', '实验中心部', '1.0', null, null, '旷工', '李映欧', '三');
INSERT INTO `sys_attendance` VALUES ('704', '正常班', '2015-11-11', '市场部', '3.0', null, null, '旷工', '唐宇', '三');
INSERT INTO `sys_attendance` VALUES ('705', '正常班', '2015-11-11', '管理层', '44.0', null, null, '旷工', '周晔', '三');
INSERT INTO `sys_attendance` VALUES ('706', '正常班', '2015-11-12', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '四');
INSERT INTO `sys_attendance` VALUES ('707', '正常班', '2015-11-12', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '四');
INSERT INTO `sys_attendance` VALUES ('708', '正常班', '2015-11-12', '管理层', '6.0', null, null, '旷工', '王总', '四');
INSERT INTO `sys_attendance` VALUES ('709', '正常班', '2015-11-12', '管理层', '44.0', null, null, '旷工', '周晔', '四');
INSERT INTO `sys_attendance` VALUES ('710', '正常班', '2015-11-12', '财务部', '43.0', null, null, '旷工', '谷艳', '四');
INSERT INTO `sys_attendance` VALUES ('711', '正常班', '2015-11-12', '信息分析', '34.0', null, null, '旷工', '刘洋', '四');
INSERT INTO `sys_attendance` VALUES ('712', '正常班', '2015-11-12', '质量部', '48.0', null, null, '旷工', '王宏丽', '四');
INSERT INTO `sys_attendance` VALUES ('713', '正常班', '2015-11-12', '管理层', '4.0', null, null, '旷工', '吕爱民', '四');
INSERT INTO `sys_attendance` VALUES ('714', '正常班', '2015-11-12', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '四');
INSERT INTO `sys_attendance` VALUES ('715', '正常班', '2015-11-12', '信息分析', '28.0', null, null, '旷工,迟到', '徐寒黎', '四');
INSERT INTO `sys_attendance` VALUES ('716', '正常班', '2015-11-12', 'IT部', '24.0', null, null, '旷工', '黄金龙', '四');
INSERT INTO `sys_attendance` VALUES ('717', '正常班', '2015-11-12', '人事行政部', '25.0', null, null, '旷工', '付微微', '四');
INSERT INTO `sys_attendance` VALUES ('718', '正常班', '2015-11-12', '实验中心部', '1.0', null, null, '旷工', '李映欧', '四');
INSERT INTO `sys_attendance` VALUES ('719', '正常班', '2015-11-12', '市场部', '47.0', null, null, '旷工', '温孝楠', '四');
INSERT INTO `sys_attendance` VALUES ('720', '正常班', '2015-11-12', '市场部', '3.0', null, null, '旷工', '唐宇', '四');
INSERT INTO `sys_attendance` VALUES ('721', '正常班', '2015-11-12', '[默认部门]', '88.0', null, null, '旷工', '公司', '四');
INSERT INTO `sys_attendance` VALUES ('722', '正常班', '2015-11-12', '人事行政部', '8.0', null, null, '旷工', '钱坤', '四');
INSERT INTO `sys_attendance` VALUES ('723', '正常班', '2015-11-12', '质量部', '10.0', null, null, '旷工', '姬晓勇', '四');
INSERT INTO `sys_attendance` VALUES ('724', '正常班', '2015-11-12', '研发部', '15.0', null, null, '旷工', '刘倩', '四');
INSERT INTO `sys_attendance` VALUES ('725', '正常班', '2015-11-12', '财务部', '45.0', null, null, '旷工', '田洁', '四');
INSERT INTO `sys_attendance` VALUES ('726', '正常班', '2015-11-12', 'IT部', '39.0', null, null, '旷工', '顾文杰', '四');
INSERT INTO `sys_attendance` VALUES ('727', '正常班', '2015-11-12', '质量部', '26.0', '10:51', '20:51', '旷工,加班', '陈冬雪', '四');
INSERT INTO `sys_attendance` VALUES ('728', '正常班', '2015-11-12', '研发部', '42.0', null, null, '旷工', '李富威', '四');
INSERT INTO `sys_attendance` VALUES ('729', '正常班', '2015-11-12', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '四');
INSERT INTO `sys_attendance` VALUES ('730', '正常班', '2015-11-12', '实验中心部', '12.0', null, null, '旷工', '葛博', '四');
INSERT INTO `sys_attendance` VALUES ('731', '正常班', '2015-11-12', '实验中心部', '7.0', null, null, '旷工', '高婧婧', '四');
INSERT INTO `sys_attendance` VALUES ('732', '正常班', '2015-11-13', '人事行政部', '25.0', null, null, '旷工', '付微微', '五');
INSERT INTO `sys_attendance` VALUES ('733', '正常班', '2015-11-13', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '五');
INSERT INTO `sys_attendance` VALUES ('734', '正常班', '2015-11-13', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '五');
INSERT INTO `sys_attendance` VALUES ('735', '正常班', '2015-11-13', '质量部', '48.0', null, null, '旷工', '王宏丽', '五');
INSERT INTO `sys_attendance` VALUES ('736', '正常班', '2015-11-13', '市场部', '3.0', null, null, '旷工', '唐宇', '五');
INSERT INTO `sys_attendance` VALUES ('737', '正常班', '2015-11-13', '财务部', '43.0', null, null, '旷工', '谷艳', '五');
INSERT INTO `sys_attendance` VALUES ('738', '正常班', '2015-11-13', '信息分析', '34.0', null, null, '旷工', '刘洋', '五');
INSERT INTO `sys_attendance` VALUES ('739', '正常班', '2015-11-13', '实验中心部', '12.0', null, null, '旷工', '葛博', '五');
INSERT INTO `sys_attendance` VALUES ('740', '正常班', '2015-11-13', '实验中心部', '1.0', null, null, '旷工', '李映欧', '五');
INSERT INTO `sys_attendance` VALUES ('741', '正常班', '2015-11-13', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '五');
INSERT INTO `sys_attendance` VALUES ('742', '正常班', '2015-11-13', '人事行政部', '8.0', null, null, '旷工', '钱坤', '五');
INSERT INTO `sys_attendance` VALUES ('743', '正常班', '2015-11-13', '[默认部门]', '88.0', null, null, '旷工', '公司', '五');
INSERT INTO `sys_attendance` VALUES ('744', '正常班', '2015-11-13', '市场部', '47.0', null, null, '旷工', '温孝楠', '五');
INSERT INTO `sys_attendance` VALUES ('745', '正常班', '2015-11-13', '技术支持', '35.0', null, null, '旷工', '李雯雯', '五');
INSERT INTO `sys_attendance` VALUES ('746', '正常班', '2015-11-13', '采购部', '22.0', null, null, '旷工', '张姣', '五');
INSERT INTO `sys_attendance` VALUES ('747', '正常班', '2015-11-13', '财务部', '45.0', null, null, '旷工', '田洁', '五');
INSERT INTO `sys_attendance` VALUES ('748', '正常班', '2015-11-13', '研发部', '15.0', null, null, '旷工', '刘倩', '五');
INSERT INTO `sys_attendance` VALUES ('749', '正常班', '2015-11-13', '管理层', '6.0', null, null, '旷工', '王总', '五');
INSERT INTO `sys_attendance` VALUES ('750', '正常班', '2015-11-13', '管理层', '4.0', null, null, '旷工', '吕爱民', '五');
INSERT INTO `sys_attendance` VALUES ('751', '正常班', '2015-11-13', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '五');
INSERT INTO `sys_attendance` VALUES ('752', '正常班', '2015-11-13', '实验中心部', '7.0', null, null, '旷工', '高婧婧', '五');
INSERT INTO `sys_attendance` VALUES ('753', '正常班', '2015-11-13', '管理层', '44.0', null, null, '旷工', '周晔', '五');
INSERT INTO `sys_attendance` VALUES ('754', '正常班', '2015-11-13', 'IT部', '24.0', null, null, '旷工', '黄金龙', '五');
INSERT INTO `sys_attendance` VALUES ('755', '正常班', '2015-11-13', '市场部', '21.0', null, null, '旷工', '周亚', '五');
INSERT INTO `sys_attendance` VALUES ('756', '正常班', '2015-11-13', '研发部', '42.0', null, null, '旷工', '李富威', '五');
INSERT INTO `sys_attendance` VALUES ('757', '正常班', '2015-11-16', '管理层', '6.0', null, null, '旷工', '王总', '一');
INSERT INTO `sys_attendance` VALUES ('758', '正常班', '2015-11-16', '市场部', '3.0', null, null, '旷工', '唐宇', '一');
INSERT INTO `sys_attendance` VALUES ('759', '正常班', '2015-11-16', '人事行政部', '25.0', null, null, '旷工', '付微微', '一');
INSERT INTO `sys_attendance` VALUES ('760', '正常班', '2015-11-16', '质量部', '48.0', null, null, '旷工', '王宏丽', '一');
INSERT INTO `sys_attendance` VALUES ('761', '正常班', '2015-11-16', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '一');
INSERT INTO `sys_attendance` VALUES ('762', '正常班', '2015-11-16', '实验中心部', '1.0', null, null, '旷工', '李映欧', '一');
INSERT INTO `sys_attendance` VALUES ('763', '正常班', '2015-11-16', 'IT部', '31.0', null, null, '旷工,早退', '聂梦肖', '一');
INSERT INTO `sys_attendance` VALUES ('764', '正常班', '2015-11-16', 'IT部', '24.0', null, null, '旷工', '黄金龙', '一');
INSERT INTO `sys_attendance` VALUES ('765', '正常班', '2015-11-16', '实验中心部', '12.0', null, null, '旷工', '葛博', '一');
INSERT INTO `sys_attendance` VALUES ('766', '正常班', '2015-11-16', '研发部', '15.0', null, null, '旷工,加班', '刘倩', '一');
INSERT INTO `sys_attendance` VALUES ('767', '正常班', '2015-11-16', '实验中心部', '17.0', null, null, '旷工', '曾雪霞', '一');
INSERT INTO `sys_attendance` VALUES ('768', '正常班', '2015-11-16', '市场部', '47.0', null, null, '旷工', '温孝楠', '一');
INSERT INTO `sys_attendance` VALUES ('769', '正常班', '2015-11-16', '人事行政部', '8.0', null, null, '旷工', '钱坤', '一');
INSERT INTO `sys_attendance` VALUES ('770', '正常班', '2015-11-16', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '一');
INSERT INTO `sys_attendance` VALUES ('771', '正常班', '2015-11-16', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '一');
INSERT INTO `sys_attendance` VALUES ('772', '正常班', '2015-11-16', '信息分析', '34.0', null, null, '旷工', '刘洋', '一');
INSERT INTO `sys_attendance` VALUES ('773', '正常班', '2015-11-16', '财务部', '45.0', null, null, '旷工', '田洁', '一');
INSERT INTO `sys_attendance` VALUES ('774', '正常班', '2015-11-16', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '一');
INSERT INTO `sys_attendance` VALUES ('775', '正常班', '2015-11-16', '研发部', '42.0', null, null, '旷工', '李富威', '一');
INSERT INTO `sys_attendance` VALUES ('776', '正常班', '2015-11-16', '财务部', '43.0', null, null, '旷工', '谷艳', '一');
INSERT INTO `sys_attendance` VALUES ('777', '正常班', '2015-11-16', '管理层', '4.0', null, null, '旷工', '吕爱民', '一');
INSERT INTO `sys_attendance` VALUES ('778', '正常班', '2015-11-16', '管理层', '44.0', null, null, '旷工', '周晔', '一');
INSERT INTO `sys_attendance` VALUES ('779', '正常班', '2015-11-16', '[默认部门]', '88.0', null, null, '旷工', '公司', '一');
INSERT INTO `sys_attendance` VALUES ('780', '正常班', '2015-11-17', 'IT部', '24.0', null, null, '旷工', '黄金龙', '二');
INSERT INTO `sys_attendance` VALUES ('781', '正常班', '2015-11-17', '实验中心部', '1.0', null, null, '旷工', '李映欧', '二');
INSERT INTO `sys_attendance` VALUES ('782', '正常班', '2015-11-17', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '二');
INSERT INTO `sys_attendance` VALUES ('783', '正常班', '2015-11-17', '管理层', '6.0', null, null, '旷工', '王总', '二');
INSERT INTO `sys_attendance` VALUES ('784', '正常班', '2015-11-17', '质量部', '48.0', null, null, '旷工', '王宏丽', '二');
INSERT INTO `sys_attendance` VALUES ('785', '正常班', '2015-11-17', '实验中心部', '17.0', null, null, '旷工', '曾雪霞', '二');
INSERT INTO `sys_attendance` VALUES ('786', '正常班', '2015-11-17', '财务部', '45.0', null, null, '旷工', '田洁', '二');
INSERT INTO `sys_attendance` VALUES ('787', '正常班', '2015-11-17', '实验中心部', '12.0', null, null, '旷工', '葛博', '二');
INSERT INTO `sys_attendance` VALUES ('788', '正常班', '2015-11-17', '管理层', '4.0', null, null, '旷工', '吕爱民', '二');
INSERT INTO `sys_attendance` VALUES ('789', '正常班', '2015-11-17', '人事行政部', '25.0', null, null, '旷工', '付微微', '二');
INSERT INTO `sys_attendance` VALUES ('790', '正常班', '2015-11-17', 'IT部', '39.0', null, null, '旷工', '顾文杰', '二');
INSERT INTO `sys_attendance` VALUES ('791', '正常班', '2015-11-17', '市场部', '3.0', null, null, '旷工', '唐宇', '二');
INSERT INTO `sys_attendance` VALUES ('792', '正常班', '2015-11-17', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '二');
INSERT INTO `sys_attendance` VALUES ('793', '正常班', '2015-11-17', '人事行政部', '032_1', null, null, '旷工,早退', '于晓蕊', '二');
INSERT INTO `sys_attendance` VALUES ('794', '正常班', '2015-11-17', '财务部', '43.0', null, null, '旷工,早退', '谷艳', '二');
INSERT INTO `sys_attendance` VALUES ('795', '正常班', '2015-11-17', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '二');
INSERT INTO `sys_attendance` VALUES ('796', '正常班', '2015-11-17', '人事行政部', '8.0', null, null, '旷工', '钱坤', '二');
INSERT INTO `sys_attendance` VALUES ('797', '正常班', '2015-11-17', '市场部', '47.0', null, null, '旷工', '温孝楠', '二');
INSERT INTO `sys_attendance` VALUES ('798', '正常班', '2015-11-17', '[默认部门]', '88.0', null, null, '旷工', '公司', '二');
INSERT INTO `sys_attendance` VALUES ('799', '正常班', '2015-11-17', '信息分析', '34.0', null, null, '旷工', '刘洋', '二');
INSERT INTO `sys_attendance` VALUES ('800', '正常班', '2015-11-17', '市场部', '21.0', '11:07', '19:56', '旷工,加班', '周亚', '二');
INSERT INTO `sys_attendance` VALUES ('801', '正常班', '2015-11-17', '管理层', '44.0', null, null, '旷工', '周晔', '二');
INSERT INTO `sys_attendance` VALUES ('802', '正常班', '2015-11-17', '实验中心部', '20.0', null, null, '旷工', '李伟伟', '二');
INSERT INTO `sys_attendance` VALUES ('803', '正常班', '2015-11-17', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '二');
INSERT INTO `sys_attendance` VALUES ('804', '正常班', '2015-11-17', '采购部', '22.0', null, null, '旷工', '张姣', '二');
INSERT INTO `sys_attendance` VALUES ('805', '正常班', '2015-11-18', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '三');
INSERT INTO `sys_attendance` VALUES ('806', '正常班', '2015-11-18', '实验中心部', '7.0', null, null, '旷工', '高婧婧', '三');
INSERT INTO `sys_attendance` VALUES ('807', '正常班', '2015-11-18', 'IT部', '24.0', null, null, '旷工', '黄金龙', '三');
INSERT INTO `sys_attendance` VALUES ('808', '正常班', '2015-11-18', '财务部', '45.0', null, null, '旷工', '田洁', '三');
INSERT INTO `sys_attendance` VALUES ('809', '正常班', '2015-11-18', '管理层', '44.0', null, null, '旷工', '周晔', '三');
INSERT INTO `sys_attendance` VALUES ('810', '正常班', '2015-11-18', '研发部', '15.0', null, null, '旷工,早退', '刘倩', '三');
INSERT INTO `sys_attendance` VALUES ('811', '正常班', '2015-11-18', '管理层', '4.0', null, null, '旷工', '吕爱民', '三');
INSERT INTO `sys_attendance` VALUES ('812', '正常班', '2015-11-18', '实验中心部', '17.0', null, null, '旷工', '曾雪霞', '三');
INSERT INTO `sys_attendance` VALUES ('813', '正常班', '2015-11-18', '实验中心部', '12.0', null, null, '旷工', '葛博', '三');
INSERT INTO `sys_attendance` VALUES ('814', '正常班', '2015-11-18', '实验中心部', '20.0', null, null, '旷工', '李伟伟', '三');
INSERT INTO `sys_attendance` VALUES ('815', '正常班', '2015-11-18', '质量部', '26.0', null, null, '旷工', '陈冬雪', '三');
INSERT INTO `sys_attendance` VALUES ('816', '正常班', '2015-11-18', '市场部', '47.0', null, null, '旷工', '温孝楠', '三');
INSERT INTO `sys_attendance` VALUES ('817', '正常班', '2015-11-18', '[默认部门]', '88.0', null, null, '旷工', '公司', '三');
INSERT INTO `sys_attendance` VALUES ('818', '正常班', '2015-11-18', '实验中心部', '1.0', null, null, '旷工', '李映欧', '三');
INSERT INTO `sys_attendance` VALUES ('819', '正常班', '2015-11-18', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '三');
INSERT INTO `sys_attendance` VALUES ('820', '正常班', '2015-11-18', '人事行政部', '008_1', null, null, '旷工,早退', '1660777.0', '三');
INSERT INTO `sys_attendance` VALUES ('821', '正常班', '2015-11-18', '实验中心部', '33.0', '09:41', '14:30', '旷工,迟到', '霍旭', '三');
INSERT INTO `sys_attendance` VALUES ('822', '正常班', '2015-11-18', '人事行政部', '25.0', null, null, '旷工', '付微微', '三');
INSERT INTO `sys_attendance` VALUES ('823', '正常班', '2015-11-18', '管理层', '6.0', null, null, '旷工', '王总', '三');
INSERT INTO `sys_attendance` VALUES ('824', '正常班', '2015-11-18', '信息分析', '34.0', null, null, '旷工', '刘洋', '三');
INSERT INTO `sys_attendance` VALUES ('825', '正常班', '2015-11-18', '市场部', '3.0', null, null, '旷工', '唐宇', '三');
INSERT INTO `sys_attendance` VALUES ('826', '正常班', '2015-11-18', '质量部', '48.0', null, null, '旷工', '王宏丽', '三');
INSERT INTO `sys_attendance` VALUES ('827', '正常班', '2015-11-18', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '三');
INSERT INTO `sys_attendance` VALUES ('828', '正常班', '2015-11-18', '人事行政部', '8.0', null, null, '旷工', '钱坤', '三');
INSERT INTO `sys_attendance` VALUES ('829', '正常班', '2015-11-19', '质量部', '48.0', null, null, '旷工', '王宏丽', '四');
INSERT INTO `sys_attendance` VALUES ('830', '正常班', '2015-11-19', '人事行政部', '38.0', null, null, '旷工', '陈心铱', '四');
INSERT INTO `sys_attendance` VALUES ('831', '正常班', '2015-11-19', '质量部', '10.0', null, null, '旷工', '姬晓勇', '四');
INSERT INTO `sys_attendance` VALUES ('832', '正常班', '2015-11-19', '管理层', '44.0', null, null, '旷工', '周晔', '四');
INSERT INTO `sys_attendance` VALUES ('833', '正常班', '2015-11-19', '管理层', '6.0', null, null, '旷工', '王总', '四');
INSERT INTO `sys_attendance` VALUES ('834', '正常班', '2015-11-19', '市场部', '47.0', null, null, '旷工', '温孝楠', '四');
INSERT INTO `sys_attendance` VALUES ('835', '正常班', '2015-11-19', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '四');
INSERT INTO `sys_attendance` VALUES ('836', '正常班', '2015-11-19', '市场部', '3.0', null, null, '旷工', '唐宇', '四');
INSERT INTO `sys_attendance` VALUES ('837', '正常班', '2015-11-19', '研发部', '15.0', null, null, '旷工,迟到', '刘倩', '四');
INSERT INTO `sys_attendance` VALUES ('838', '正常班', '2015-11-19', '实验中心部', '12.0', null, null, '旷工', '葛博', '四');
INSERT INTO `sys_attendance` VALUES ('839', '正常班', '2015-11-19', '质量部', '26.0', null, null, '旷工', '陈冬雪', '四');
INSERT INTO `sys_attendance` VALUES ('840', '正常班', '2015-11-19', 'IT部', '24.0', null, null, '旷工', '黄金龙', '四');
INSERT INTO `sys_attendance` VALUES ('841', '正常班', '2015-11-19', '财务部', '45.0', null, null, '旷工', '田洁', '四');
INSERT INTO `sys_attendance` VALUES ('842', '正常班', '2015-11-19', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '四');
INSERT INTO `sys_attendance` VALUES ('843', '正常班', '2015-11-19', '实验中心部', '1.0', null, null, '旷工', '李映欧', '四');
INSERT INTO `sys_attendance` VALUES ('844', '正常班', '2015-11-19', '人事行政部', '8.0', null, null, '旷工', '钱坤', '四');
INSERT INTO `sys_attendance` VALUES ('845', '正常班', '2015-11-19', '实验中心部', '7.0', null, null, '旷工', '高婧婧', '四');
INSERT INTO `sys_attendance` VALUES ('846', '正常班', '2015-11-19', '[默认部门]', '88.0', null, null, '旷工', '公司', '四');
INSERT INTO `sys_attendance` VALUES ('847', '正常班', '2015-11-19', '实验中心部', '20.0', null, null, '旷工', '李伟伟', '四');
INSERT INTO `sys_attendance` VALUES ('848', '正常班', '2015-11-19', '信息分析', '34.0', null, null, '旷工', '刘洋', '四');
INSERT INTO `sys_attendance` VALUES ('849', '正常班', '2015-11-19', '管理层', '4.0', null, null, '旷工', '吕爱民', '四');
INSERT INTO `sys_attendance` VALUES ('850', '正常班', '2015-11-19', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '四');
INSERT INTO `sys_attendance` VALUES ('851', '正常班', '2015-11-19', '人事行政部', '25.0', null, null, '旷工', '付微微', '四');
INSERT INTO `sys_attendance` VALUES ('852', '正常班', '2015-11-19', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '四');
INSERT INTO `sys_attendance` VALUES ('853', '正常班', '2015-11-19', '市场部', '21.0', null, null, '旷工', '周亚', '四');
INSERT INTO `sys_attendance` VALUES ('854', '正常班', '2015-11-19', '实验中心部', '33.0', '09:21', '16:29', '旷工,迟到', '霍旭', '四');
INSERT INTO `sys_attendance` VALUES ('855', '正常班', '2015-11-20', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '五');
INSERT INTO `sys_attendance` VALUES ('856', '正常班', '2015-11-20', '市场部', '21.0', null, null, '旷工', '周亚', '五');
INSERT INTO `sys_attendance` VALUES ('857', '正常班', '2015-11-20', '质量部', '10.0', null, null, '旷工', '姬晓勇', '五');
INSERT INTO `sys_attendance` VALUES ('858', '正常班', '2015-11-20', '[默认部门]', '88.0', null, null, '旷工', '公司', '五');
INSERT INTO `sys_attendance` VALUES ('859', '正常班', '2015-11-20', '质量部', '26.0', null, null, '旷工', '陈冬雪', '五');
INSERT INTO `sys_attendance` VALUES ('860', '正常班', '2015-11-20', '人事行政部', '8.0', null, null, '旷工', '钱坤', '五');
INSERT INTO `sys_attendance` VALUES ('861', '正常班', '2015-11-20', '管理层', '4.0', null, null, '旷工', '吕爱民', '五');
INSERT INTO `sys_attendance` VALUES ('862', '正常班', '2015-11-20', '市场部', '47.0', null, null, '旷工', '温孝楠', '五');
INSERT INTO `sys_attendance` VALUES ('863', '正常班', '2015-11-20', '市场部', '3.0', null, null, '旷工', '唐宇', '五');
INSERT INTO `sys_attendance` VALUES ('864', '正常班', '2015-11-20', '管理层', '44.0', null, null, '旷工', '周晔', '五');
INSERT INTO `sys_attendance` VALUES ('865', '正常班', '2015-11-20', '人事行政部', '25.0', null, null, '旷工', '付微微', '五');
INSERT INTO `sys_attendance` VALUES ('866', '正常班', '2015-11-20', '信息分析', '34.0', null, null, '旷工', '刘洋', '五');
INSERT INTO `sys_attendance` VALUES ('867', '正常班', '2015-11-20', '实验中心部', '7.0', null, null, '旷工', '高婧婧', '五');
INSERT INTO `sys_attendance` VALUES ('868', '正常班', '2015-11-20', '人事行政部', '40.0', null, null, '旷工', '许多', '五');
INSERT INTO `sys_attendance` VALUES ('869', '正常班', '2015-11-20', 'IT部', '24.0', null, null, '旷工', '黄金龙', '五');
INSERT INTO `sys_attendance` VALUES ('870', '正常班', '2015-11-20', '实验中心部', '1.0', null, null, '旷工', '李映欧', '五');
INSERT INTO `sys_attendance` VALUES ('871', '正常班', '2015-11-20', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '五');
INSERT INTO `sys_attendance` VALUES ('872', '正常班', '2015-11-20', '财务部', '45.0', null, null, '旷工', '田洁', '五');
INSERT INTO `sys_attendance` VALUES ('873', '正常班', '2015-11-20', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '五');
INSERT INTO `sys_attendance` VALUES ('874', '正常班', '2015-11-20', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '五');
INSERT INTO `sys_attendance` VALUES ('875', '正常班', '2015-11-20', '管理层', '6.0', null, null, '旷工', '王总', '五');
INSERT INTO `sys_attendance` VALUES ('876', '正常班', '2015-11-20', '研发部', '15.0', null, null, '旷工', '刘倩', '五');
INSERT INTO `sys_attendance` VALUES ('877', '正常班', '2015-11-20', '质量部', '48.0', null, null, '旷工', '王宏丽', '五');
INSERT INTO `sys_attendance` VALUES ('878', '正常班', '2015-11-20', '实验中心部', '12.0', null, null, '旷工', '葛博', '五');
INSERT INTO `sys_attendance` VALUES ('879', '正常班', '2015-11-20', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '五');
INSERT INTO `sys_attendance` VALUES ('880', '正常班', '2015-11-23', '管理层', '44.0', null, null, '旷工', '周晔', '一');
INSERT INTO `sys_attendance` VALUES ('881', '正常班', '2015-11-23', '市场部', '3.0', null, null, '旷工', '唐宇', '一');
INSERT INTO `sys_attendance` VALUES ('882', '正常班', '2015-11-23', 'IT部', '39.0', null, null, '旷工,迟到', '顾文杰', '一');
INSERT INTO `sys_attendance` VALUES ('883', '正常班', '2015-11-23', '研发部', '15.0', null, null, '旷工', '刘倩', '一');
INSERT INTO `sys_attendance` VALUES ('884', '正常班', '2015-11-23', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '一');
INSERT INTO `sys_attendance` VALUES ('885', '正常班', '2015-11-23', '[默认部门]', '88.0', null, null, '旷工', '公司', '一');
INSERT INTO `sys_attendance` VALUES ('886', '正常班', '2015-11-23', '市场部', '47.0', null, null, '旷工', '温孝楠', '一');
INSERT INTO `sys_attendance` VALUES ('887', '正常班', '2015-11-23', '质量部', '48.0', null, null, '旷工', '王宏丽', '一');
INSERT INTO `sys_attendance` VALUES ('888', '正常班', '2015-11-23', '人事行政部', '25.0', null, null, '旷工', '付微微', '一');
INSERT INTO `sys_attendance` VALUES ('889', '正常班', '2015-11-23', '实验中心部', '12.0', '09:19', '16:30', '旷工,迟到', '葛博', '一');
INSERT INTO `sys_attendance` VALUES ('890', '正常班', '2015-11-23', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '一');
INSERT INTO `sys_attendance` VALUES ('891', '正常班', '2015-11-23', 'IT部', '24.0', null, null, '旷工', '黄金龙', '一');
INSERT INTO `sys_attendance` VALUES ('892', '正常班', '2015-11-23', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '一');
INSERT INTO `sys_attendance` VALUES ('893', '正常班', '2015-11-23', '管理层', '6.0', null, null, '旷工', '王总', '一');
INSERT INTO `sys_attendance` VALUES ('894', '正常班', '2015-11-23', '人事行政部', '8.0', null, null, '旷工', '钱坤', '一');
INSERT INTO `sys_attendance` VALUES ('895', '正常班', '2015-11-23', '管理层', '4.0', null, null, '旷工', '吕爱民', '一');
INSERT INTO `sys_attendance` VALUES ('896', '正常班', '2015-11-23', '实验中心部', '1.0', null, null, '旷工', '李映欧', '一');
INSERT INTO `sys_attendance` VALUES ('897', '正常班', '2015-11-23', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '一');
INSERT INTO `sys_attendance` VALUES ('898', '正常班', '2015-11-23', '财务部', '45.0', null, null, '旷工,早退', '田洁', '一');
INSERT INTO `sys_attendance` VALUES ('899', '正常班', '2015-11-23', '信息分析', '34.0', null, null, '旷工', '刘洋', '一');
INSERT INTO `sys_attendance` VALUES ('900', '正常班', '2015-11-23', '人事行政部', '032_1', null, null, '旷工', '于晓蕊', '一');
INSERT INTO `sys_attendance` VALUES ('901', '正常班', '2015-11-24', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '二');
INSERT INTO `sys_attendance` VALUES ('902', '正常班', '2015-11-24', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '二');
INSERT INTO `sys_attendance` VALUES ('903', '正常班', '2015-11-24', '实验中心部', '1.0', null, null, '旷工', '李映欧', '二');
INSERT INTO `sys_attendance` VALUES ('904', '正常班', '2015-11-24', '市场部', '3.0', null, null, '旷工', '唐宇', '二');
INSERT INTO `sys_attendance` VALUES ('905', '正常班', '2015-11-24', '管理层', '4.0', null, null, '旷工', '吕爱民', '二');
INSERT INTO `sys_attendance` VALUES ('906', '正常班', '2015-11-24', '市场部', '47.0', null, null, '旷工', '温孝楠', '二');
INSERT INTO `sys_attendance` VALUES ('907', '正常班', '2015-11-24', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '二');
INSERT INTO `sys_attendance` VALUES ('908', '正常班', '2015-11-24', '信息分析', '34.0', null, null, '旷工', '刘洋', '二');
INSERT INTO `sys_attendance` VALUES ('909', '正常班', '2015-11-24', 'IT部', '24.0', null, null, '旷工', '黄金龙', '二');
INSERT INTO `sys_attendance` VALUES ('910', '正常班', '2015-11-24', '人事行政部', '8.0', null, null, '旷工', '钱坤', '二');
INSERT INTO `sys_attendance` VALUES ('911', '正常班', '2015-11-24', '信息分析', '70.0', '08:47', '13:30', '旷工', '栗小霞', '二');
INSERT INTO `sys_attendance` VALUES ('912', '正常班', '2015-11-24', '[默认部门]', '88.0', null, null, '旷工', '公司', '二');
INSERT INTO `sys_attendance` VALUES ('913', '正常班', '2015-11-24', '质量部', '48.0', null, null, '旷工', '王宏丽', '二');
INSERT INTO `sys_attendance` VALUES ('914', '正常班', '2015-11-24', '管理层', '44.0', null, null, '旷工', '周晔', '二');
INSERT INTO `sys_attendance` VALUES ('915', '正常班', '2015-11-24', '人事行政部', '25.0', null, null, '旷工', '付微微', '二');
INSERT INTO `sys_attendance` VALUES ('916', '正常班', '2015-11-24', '管理层', '6.0', null, null, '旷工', '王总', '二');
INSERT INTO `sys_attendance` VALUES ('917', '正常班', '2015-11-25', '研发部', '15.0', null, null, '旷工', '刘倩', '三');
INSERT INTO `sys_attendance` VALUES ('918', '正常班', '2015-11-25', '人事行政部', '25.0', null, null, '旷工', '付微微', '三');
INSERT INTO `sys_attendance` VALUES ('919', '正常班', '2015-11-25', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '三');
INSERT INTO `sys_attendance` VALUES ('920', '正常班', '2015-11-25', '管理层', '6.0', null, null, '旷工', '王总', '三');
INSERT INTO `sys_attendance` VALUES ('921', '正常班', '2015-11-25', '人事行政部', '008_1', null, null, '旷工,早退', '1660777.0', '三');
INSERT INTO `sys_attendance` VALUES ('922', '正常班', '2015-11-25', '信息分析', '34.0', null, null, '旷工', '刘洋', '三');
INSERT INTO `sys_attendance` VALUES ('923', '正常班', '2015-11-25', 'IT部', '24.0', null, null, '旷工', '黄金龙', '三');
INSERT INTO `sys_attendance` VALUES ('924', '正常班', '2015-11-25', '管理层', '44.0', null, null, '旷工', '周晔', '三');
INSERT INTO `sys_attendance` VALUES ('925', '正常班', '2015-11-25', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '三');
INSERT INTO `sys_attendance` VALUES ('926', '正常班', '2015-11-25', '人事行政部', '38.0', null, null, '旷工', '陈心铱', '三');
INSERT INTO `sys_attendance` VALUES ('927', '正常班', '2015-11-25', '人事行政部', '8.0', null, null, '旷工', '钱坤', '三');
INSERT INTO `sys_attendance` VALUES ('928', '正常班', '2015-11-25', '管理层', '4.0', null, null, '旷工', '吕爱民', '三');
INSERT INTO `sys_attendance` VALUES ('929', '正常班', '2015-11-25', '市场部', '47.0', null, null, '旷工', '温孝楠', '三');
INSERT INTO `sys_attendance` VALUES ('930', '正常班', '2015-11-25', '实验中心部', '12.0', '08:44', '13:58', '旷工', '葛博', '三');
INSERT INTO `sys_attendance` VALUES ('931', '正常班', '2015-11-25', '研发部', '42.0', null, null, '旷工', '李富威', '三');
INSERT INTO `sys_attendance` VALUES ('932', '正常班', '2015-11-25', '质量部', '10.0', null, null, '旷工', '姬晓勇', '三');
INSERT INTO `sys_attendance` VALUES ('933', '正常班', '2015-11-25', '质量部', '48.0', null, null, '旷工', '王宏丽', '三');
INSERT INTO `sys_attendance` VALUES ('934', '正常班', '2015-11-25', '市场部', '3.0', null, null, '旷工', '唐宇', '三');
INSERT INTO `sys_attendance` VALUES ('935', '正常班', '2015-11-25', '[默认部门]', '88.0', null, null, '旷工', '公司', '三');
INSERT INTO `sys_attendance` VALUES ('936', '正常班', '2015-11-25', '实验中心部', '1.0', null, null, '旷工', '李映欧', '三');
INSERT INTO `sys_attendance` VALUES ('937', '正常班', '2015-11-26', '质量部', '48.0', null, null, '旷工', '王宏丽', '四');
INSERT INTO `sys_attendance` VALUES ('938', '正常班', '2015-11-26', '人事行政部', '25.0', null, null, '旷工', '付微微', '四');
INSERT INTO `sys_attendance` VALUES ('939', '正常班', '2015-11-26', '[默认部门]', '88.0', null, null, '旷工', '公司', '四');
INSERT INTO `sys_attendance` VALUES ('940', '正常班', '2015-11-26', '市场部', '3.0', null, null, '旷工', '唐宇', '四');
INSERT INTO `sys_attendance` VALUES ('941', '正常班', '2015-11-26', '人事行政部', '008_1', null, null, '旷工,早退', '1660777.0', '四');
INSERT INTO `sys_attendance` VALUES ('942', '正常班', '2015-11-26', '质量部', '41.0', null, null, '旷工,早退', '张娟', '四');
INSERT INTO `sys_attendance` VALUES ('943', '正常班', '2015-11-26', '实验中心部', '1.0', null, null, '旷工', '李映欧', '四');
INSERT INTO `sys_attendance` VALUES ('944', '正常班', '2015-11-26', 'IT部', '24.0', null, null, '旷工', '黄金龙', '四');
INSERT INTO `sys_attendance` VALUES ('945', '正常班', '2015-11-26', '信息分析', '34.0', null, null, '旷工', '刘洋', '四');
INSERT INTO `sys_attendance` VALUES ('946', '正常班', '2015-11-26', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '四');
INSERT INTO `sys_attendance` VALUES ('947', '正常班', '2015-11-26', '管理层', '44.0', null, null, '旷工', '周晔', '四');
INSERT INTO `sys_attendance` VALUES ('948', '正常班', '2015-11-26', '研发部', '15.0', null, null, '旷工,早退', '刘倩', '四');
INSERT INTO `sys_attendance` VALUES ('949', '正常班', '2015-11-26', '管理层', '6.0', null, null, '旷工', '王总', '四');
INSERT INTO `sys_attendance` VALUES ('950', '正常班', '2015-11-26', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '四');
INSERT INTO `sys_attendance` VALUES ('951', '正常班', '2015-11-26', '质量部', '10.0', null, null, '旷工', '姬晓勇', '四');
INSERT INTO `sys_attendance` VALUES ('952', '正常班', '2015-11-26', '市场部', '47.0', null, null, '旷工', '温孝楠', '四');
INSERT INTO `sys_attendance` VALUES ('953', '正常班', '2015-11-26', '实验中心部', '7.0', null, null, '旷工,迟到', '高婧婧', '四');
INSERT INTO `sys_attendance` VALUES ('954', '正常班', '2015-11-26', '实验中心部', '12.0', null, null, '旷工,加班', '葛博', '四');
INSERT INTO `sys_attendance` VALUES ('955', '正常班', '2015-11-26', '实验中心部', '46.0', null, null, '旷工', '杨江薇', '四');
INSERT INTO `sys_attendance` VALUES ('956', '正常班', '2015-11-26', '人事行政部', '8.0', null, null, '旷工', '钱坤', '四');
INSERT INTO `sys_attendance` VALUES ('957', '正常班', '2015-11-26', '管理层', '4.0', null, null, '旷工', '吕爱民', '四');
INSERT INTO `sys_attendance` VALUES ('958', '正常班', '2015-11-26', '人事行政部', '40.0', null, null, '旷工,早退', '许多', '四');
INSERT INTO `sys_attendance` VALUES ('959', '正常班', '2015-11-27', '人事行政部', '008_1', null, null, '旷工,早退', '1660777.0', '五');
INSERT INTO `sys_attendance` VALUES ('960', '正常班', '2015-11-27', '人事行政部', '8.0', null, null, '旷工', '钱坤', '五');
INSERT INTO `sys_attendance` VALUES ('961', '正常班', '2015-11-27', '质量部', '48.0', null, null, '旷工', '王宏丽', '五');
INSERT INTO `sys_attendance` VALUES ('962', '正常班', '2015-11-27', '市场部', '3.0', null, null, '旷工', '唐宇', '五');
INSERT INTO `sys_attendance` VALUES ('963', '正常班', '2015-11-27', '管理层', '6.0', null, null, '旷工', '王总', '五');
INSERT INTO `sys_attendance` VALUES ('964', '正常班', '2015-11-27', '人事行政部', '40.0', null, null, '旷工', '许多', '五');
INSERT INTO `sys_attendance` VALUES ('965', '正常班', '2015-11-27', '管理层', '44.0', null, null, '旷工', '周晔', '五');
INSERT INTO `sys_attendance` VALUES ('966', '正常班', '2015-11-27', '实验中心部', '7.0', '11:47', '17:09', '旷工,早退', '高婧婧', '五');
INSERT INTO `sys_attendance` VALUES ('967', '正常班', '2015-11-27', '质量部', '10.0', null, null, '旷工', '姬晓勇', '五');
INSERT INTO `sys_attendance` VALUES ('968', '正常班', '2015-11-27', '研发部', '15.0', null, null, '旷工', '刘倩', '五');
INSERT INTO `sys_attendance` VALUES ('969', '正常班', '2015-11-27', '管理层', '4.0', null, null, '旷工', '吕爱民', '五');
INSERT INTO `sys_attendance` VALUES ('970', '正常班', '2015-11-27', '信息分析', '28.0', null, null, '旷工', '徐寒黎', '五');
INSERT INTO `sys_attendance` VALUES ('971', '正常班', '2015-11-27', '市场部', '47.0', null, null, '旷工', '温孝楠', '五');
INSERT INTO `sys_attendance` VALUES ('972', '正常班', '2015-11-27', 'IT部', '24.0', null, null, '旷工', '黄金龙', '五');
INSERT INTO `sys_attendance` VALUES ('973', '正常班', '2015-11-27', '信息分析', '34.0', null, null, '旷工', '刘洋', '五');
INSERT INTO `sys_attendance` VALUES ('974', '正常班', '2015-11-27', '人事行政部', '25.0', null, null, '旷工', '付微微', '五');
INSERT INTO `sys_attendance` VALUES ('975', '正常班', '2015-11-27', '[默认部门]', '88.0', null, null, '旷工', '公司', '五');
INSERT INTO `sys_attendance` VALUES ('976', '正常班', '2015-11-27', '实验中心部', '1.0', null, null, '旷工', '李映欧', '五');
INSERT INTO `sys_attendance` VALUES ('977', '正常班', '2015-11-27', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '五');
INSERT INTO `sys_attendance` VALUES ('978', '正常班', '2015-11-30', '管理层', '4.0', null, null, '旷工', '吕爱民', '一');
INSERT INTO `sys_attendance` VALUES ('979', '正常班', '2015-11-30', '实验中心部', '1.0', null, null, '旷工', '李映欧', '一');
INSERT INTO `sys_attendance` VALUES ('980', '正常班', '2015-11-30', '技术支持', '35.0', null, null, '旷工', '李雯雯', '一');
INSERT INTO `sys_attendance` VALUES ('981', '正常班', '2015-11-30', '[默认部门]', '88.0', null, null, '旷工', '公司', '一');
INSERT INTO `sys_attendance` VALUES ('982', '正常班', '2015-11-30', '质量部', '26.0', null, null, '旷工,早退', '陈冬雪', '一');
INSERT INTO `sys_attendance` VALUES ('983', '正常班', '2015-11-30', '质量部', '10.0', null, null, '旷工,加班', '姬晓勇', '一');
INSERT INTO `sys_attendance` VALUES ('984', '正常班', '2015-11-30', '人事行政部', '008_1', null, null, '旷工', '1660777.0', '一');
INSERT INTO `sys_attendance` VALUES ('985', '正常班', '2015-11-30', '管理层', '44.0', null, null, '旷工', '周晔', '一');
INSERT INTO `sys_attendance` VALUES ('986', '正常班', '2015-11-30', '管理层', '6.0', null, null, '旷工', '王总', '一');
INSERT INTO `sys_attendance` VALUES ('987', '正常班', '2015-11-30', '[默认部门]', '100.0', null, null, '旷工', '公司门卡', '一');
INSERT INTO `sys_attendance` VALUES ('988', '正常班', '2015-11-30', '质量部', '48.0', null, null, '旷工', '王宏丽', '一');
INSERT INTO `sys_attendance` VALUES ('989', '正常班', '2015-11-30', '市场部', '47.0', null, null, '旷工,早退', '温孝楠', '一');
INSERT INTO `sys_attendance` VALUES ('990', '正常班', '2015-11-30', '市场部', '3.0', null, null, '旷工', '唐宇', '一');
INSERT INTO `sys_attendance` VALUES ('991', '正常班', '2015-11-30', 'IT部', '24.0', null, null, '旷工', '黄金龙', '一');
INSERT INTO `sys_attendance` VALUES ('992', '正常班', '2015-11-30', '信息分析', '34.0', null, null, '旷工', '刘洋', '一');
INSERT INTO `sys_attendance` VALUES ('993', '正常班', '2015-11-30', '人事行政部', '25.0', null, null, '旷工', '付微微', '一');
INSERT INTO `sys_attendance` VALUES ('994', '正常班', '2015-11-30', '人事行政部', '8.0', null, null, '旷工', '钱坤', '一');
INSERT INTO `sys_attendance` VALUES ('995', '正常班', '2015-11-30', '实验中心部', '33.0', null, null, '旷工', '霍旭', '一');
INSERT INTO `sys_attendance` VALUES ('996', '正常班', '2015-11-30', '实验中心部', '12.0', '10:34', '23:19', '旷工,加班', '葛博', '一');

-- ----------------------------
-- Table structure for sys_colume
-- ----------------------------
DROP TABLE IF EXISTS `sys_colume`;
CREATE TABLE `sys_colume` (
  `id` int(11) NOT NULL,
  `columnId` varchar(255) DEFAULT NULL COMMENT 'grid列id',
  `columnState` varchar(255) DEFAULT NULL COMMENT 'grid列状态',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'jsp页面',
  `updateTime` varchar(255) DEFAULT NULL,
  `userId` int(11) NOT NULL COMMENT '用户id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_colume
-- ----------------------------
INSERT INTO `sys_colume` VALUES ('1', '6', 'false', 'usermanage.jsp', '2015-08-19 14:21:50', '1');

-- ----------------------------
-- Table structure for sys_controluser
-- ----------------------------
DROP TABLE IF EXISTS `sys_controluser`;
CREATE TABLE `sys_controluser` (
  `cid` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `loginInfo` varchar(100) DEFAULT NULL,
  `loginstate` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_controluser
-- ----------------------------
INSERT INTO `sys_controluser` VALUES ('1', 'admin', null, null);
INSERT INTO `sys_controluser` VALUES ('2', 'other', '当前无法登陆，预计5分钟后可以正常登陆', '1');
INSERT INTO `sys_controluser` VALUES ('3', 'niemengxiao', null, null);

-- ----------------------------
-- Table structure for sys_copyroleright
-- ----------------------------
DROP TABLE IF EXISTS `sys_copyroleright`;
CREATE TABLE `sys_copyroleright` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rightid` int(11) DEFAULT NULL COMMENT '角色id',
  `roleHaveRight` varchar(255) DEFAULT NULL COMMENT '角色拥有权限',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `updateTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2940 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_copyroleright
-- ----------------------------
INSERT INTO `sys_copyroleright` VALUES ('1', '1', '0', '1', '2015-08-17 12:06:50');
INSERT INTO `sys_copyroleright` VALUES ('2', '2', '0,1,2,3', '1', '2015-08-17 12:06:50');
INSERT INTO `sys_copyroleright` VALUES ('3', '3', '0,1,2,3', '1', '2015-08-17 12:06:50');
INSERT INTO `sys_copyroleright` VALUES ('4', '4', '0,1', '1', '2015-08-17 12:06:50');
INSERT INTO `sys_copyroleright` VALUES ('5', '5', '0', '1', '2015-08-17 12:06:50');
INSERT INTO `sys_copyroleright` VALUES ('6', '6', '0', '1', '2015-08-17 12:06:50');
INSERT INTO `sys_copyroleright` VALUES ('7', '7', '0', '1', '2015-08-17 12:06:50');
INSERT INTO `sys_copyroleright` VALUES ('8', '8', '0,1', '1', '2015-08-19 11:23:06');
INSERT INTO `sys_copyroleright` VALUES ('9', '9', '0', '1', '2015-08-19 11:33:29');
INSERT INTO `sys_copyroleright` VALUES ('27', '13', '0', '2', '2015-10-19 11:19:01');
INSERT INTO `sys_copyroleright` VALUES ('45', '12', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('46', '11', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('47', '10', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('48', '13', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('52', '33', '0,1', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('53', '17', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('54', '18', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('55', '19', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('56', '20', '0,1,2,3,4,5,6,7,8,9', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('57', '21', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('60', '24', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('61', '25', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('62', '26', '0,4,1,5,2,6,3', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('63', '27', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('64', '28', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('65', '29', '0,1,2,3', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('66', '30', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('67', '31', '0', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('68', '32', '0,4,1,2,3', '1', '2015-12-08 14:11:08');
INSERT INTO `sys_copyroleright` VALUES ('69', '34', '0', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('70', '35', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('72', '37', '0', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('73', '38', '0,1,2', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('74', '39', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('75', '40', '0', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('76', '41', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('77', '42', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('78', '43', '0', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('79', '44', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('80', '45', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('81', '46', '0', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('82', '47', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('83', '48', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('84', '49', '0', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('85', '50', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('86', '51', '0,1', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('87', '52', '0,1,2,3,4,5,6,7', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('88', '53', '0,1,2', '1', '2016-02-25 11:52:29');
INSERT INTO `sys_copyroleright` VALUES ('89', '17', '0', '5', '2016-02-25 13:40:09');
INSERT INTO `sys_copyroleright` VALUES ('168', '58', '0,1', '1', '2016-04-18 11:34:02');
INSERT INTO `sys_copyroleright` VALUES ('169', '61', '0', '1', '2016-04-18 11:34:02');
INSERT INTO `sys_copyroleright` VALUES ('170', '62', '0', '1', '2016-04-18 11:34:02');
INSERT INTO `sys_copyroleright` VALUES ('171', '56', '0,1', '1', '2016-04-18 11:34:02');
INSERT INTO `sys_copyroleright` VALUES ('172', '55', '0,1,2', '1', '2016-04-18 11:34:02');
INSERT INTO `sys_copyroleright` VALUES ('173', '59', '0,1', '1', '2016-04-18 11:34:02');
INSERT INTO `sys_copyroleright` VALUES ('174', '54', '0,1', '1', '2016-04-18 11:34:02');
INSERT INTO `sys_copyroleright` VALUES ('268', '17', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('269', '18', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('270', '19', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('271', '20', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('272', '34', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('273', '35', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('274', '36', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('275', '21', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('285', '26', '0,4', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('287', '27', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('288', '28', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('289', '29', '0,1', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('294', '37', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('295', '38', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('296', '39', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('297', '40', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('298', '41', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('299', '42', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('300', '43', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('301', '44', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('302', '45', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('303', '46', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('304', '47', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('305', '48', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('306', '49', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('307', '50', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('308', '51', '0', '15', '2016-05-03 14:10:23');
INSERT INTO `sys_copyroleright` VALUES ('310', '17', '0', '16', '2016-05-03 14:11:16');
INSERT INTO `sys_copyroleright` VALUES ('311', '21', '0', '16', '2016-05-03 14:11:16');
INSERT INTO `sys_copyroleright` VALUES ('347', '17', '0', '20', '2016-05-03 14:14:54');
INSERT INTO `sys_copyroleright` VALUES ('348', '43', '0', '20', '2016-05-03 14:14:54');
INSERT INTO `sys_copyroleright` VALUES ('349', '45', '0,1', '20', '2016-05-03 14:14:54');
INSERT INTO `sys_copyroleright` VALUES ('350', '46', '0', '20', '2016-05-03 14:14:54');
INSERT INTO `sys_copyroleright` VALUES ('351', '48', '0,1', '20', '2016-05-03 14:14:54');
INSERT INTO `sys_copyroleright` VALUES ('352', '49', '0', '20', '2016-05-03 14:14:54');
INSERT INTO `sys_copyroleright` VALUES ('353', '51', '0,1', '20', '2016-05-03 14:14:54');
INSERT INTO `sys_copyroleright` VALUES ('354', '17', '0', '12', '2016-05-03 14:15:45');
INSERT INTO `sys_copyroleright` VALUES ('355', '24', '0', '12', '2016-05-03 14:15:45');
INSERT INTO `sys_copyroleright` VALUES ('357', '26', '0', '12', '2016-05-03 14:15:45');
INSERT INTO `sys_copyroleright` VALUES ('358', '18', '0', '5', '2016-05-03 14:16:11');
INSERT INTO `sys_copyroleright` VALUES ('359', '19', '0', '5', '2016-05-03 14:16:11');
INSERT INTO `sys_copyroleright` VALUES ('360', '20', '0,1,2,3,4,5,7,8', '5', '2016-05-03 14:16:11');
INSERT INTO `sys_copyroleright` VALUES ('361', '34', '0', '5', '2016-05-03 14:16:11');
INSERT INTO `sys_copyroleright` VALUES ('362', '35', '0,1', '5', '2016-05-03 14:16:11');
INSERT INTO `sys_copyroleright` VALUES ('363', '36', '0,1', '5', '2016-05-03 14:16:11');
INSERT INTO `sys_copyroleright` VALUES ('381', '65', '0,1,2,3', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('382', '68', '0,1,2,3,4,5', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('383', '69', '0,1,2,3,4,5,6,7,8,9,10,11,12', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('384', '74', '0', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('385', '75', '0', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('386', '66', '0,1,2,3,4,5', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('387', '76', '0', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('388', '67', '0,1,2,3,4,5', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('389', '71', '0,1,2,3,4', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('390', '72', '0,1,2,3,4,5', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('391', '73', '0,1,2,3,4', '1', '2016-05-19 15:17:20');
INSERT INTO `sys_copyroleright` VALUES ('392', '77', '0,1,2,3,4,5', '1', '2016-05-20 15:15:51');
INSERT INTO `sys_copyroleright` VALUES ('421', '22', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('422', '63', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('423', '27', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('424', '28', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('425', '29', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('427', '37', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('428', '39', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('429', '40', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('430', '42', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('431', '43', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('432', '45', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('433', '46', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('434', '48', '0', '16', '2016-06-06 15:00:14');
INSERT INTO `sys_copyroleright` VALUES ('439', '82', '0,1,2,3', '1', '2016-06-17 18:43:00');
INSERT INTO `sys_copyroleright` VALUES ('440', '80', '0,1', '1', '2016-06-17 18:43:00');
INSERT INTO `sys_copyroleright` VALUES ('441', '81', '0,1,2', '1', '2016-06-17 18:43:00');
INSERT INTO `sys_copyroleright` VALUES ('446', '83', '0', '1', '2016-06-28 16:47:52');
INSERT INTO `sys_copyroleright` VALUES ('447', '84', '0,1,2,3,4,5,6,7,8,9,10,11,12', '1', '2016-06-28 16:47:52');
INSERT INTO `sys_copyroleright` VALUES ('470', '17', '0', '24', '2016-07-05 11:07:48');
INSERT INTO `sys_copyroleright` VALUES ('472', '22', '0', '24', '2016-07-05 11:07:48');
INSERT INTO `sys_copyroleright` VALUES ('473', '64', '0,1,2', '24', '2016-07-05 11:07:48');
INSERT INTO `sys_copyroleright` VALUES ('474', '83', '0', '24', '2016-07-05 11:07:48');
INSERT INTO `sys_copyroleright` VALUES ('475', '82', '0,1,2,3', '24', '2016-07-05 11:07:48');
INSERT INTO `sys_copyroleright` VALUES ('476', '84', '0,1,2,3,4,5,6,7,8,9', '24', '2016-07-05 11:07:48');
INSERT INTO `sys_copyroleright` VALUES ('477', '85', '0,1,2,3,4,5,6,7,8,9', '24', '2016-07-05 11:07:48');
INSERT INTO `sys_copyroleright` VALUES ('484', '87', '0', '25', '2016-07-08 12:25:09');
INSERT INTO `sys_copyroleright` VALUES ('485', '88', '0', '25', '2016-07-08 12:25:09');
INSERT INTO `sys_copyroleright` VALUES ('486', '87', '0', '1', '2016-07-12 14:25:06');
INSERT INTO `sys_copyroleright` VALUES ('487', '88', '0', '1', '2016-07-12 14:25:06');
INSERT INTO `sys_copyroleright` VALUES ('489', '44', '0,1', '20', '2016-07-12 17:35:20');
INSERT INTO `sys_copyroleright` VALUES ('490', '47', '0,1', '20', '2016-07-12 17:35:20');
INSERT INTO `sys_copyroleright` VALUES ('498', '49', '0', '16', '2016-08-18 15:09:44');
INSERT INTO `sys_copyroleright` VALUES ('499', '51', '0', '16', '2016-08-18 15:09:44');
INSERT INTO `sys_copyroleright` VALUES ('507', '83', '0', '16', '2016-08-29 08:28:22');
INSERT INTO `sys_copyroleright` VALUES ('509', '85', '0,3,4,5,6', '16', '2016-08-29 08:28:22');
INSERT INTO `sys_copyroleright` VALUES ('515', '17', '0', '28', '2016-08-30 17:03:59');
INSERT INTO `sys_copyroleright` VALUES ('516', '24', '0', '28', '2016-08-30 17:03:59');
INSERT INTO `sys_copyroleright` VALUES ('518', '26', '0,1,2,3,4,5,6', '28', '2016-08-30 17:03:59');
INSERT INTO `sys_copyroleright` VALUES ('519', '65', '0,1,2', '28', '2016-08-30 17:03:59');
INSERT INTO `sys_copyroleright` VALUES ('521', '83', '0', '15', '2016-09-02 10:57:33');
INSERT INTO `sys_copyroleright` VALUES ('523', '85', '0,3,4,6', '15', '2016-09-02 10:57:33');
INSERT INTO `sys_copyroleright` VALUES ('578', '17', '0', '32', '2016-09-23 17:15:15');
INSERT INTO `sys_copyroleright` VALUES ('579', '24', '0', '32', '2016-09-23 17:15:15');
INSERT INTO `sys_copyroleright` VALUES ('580', '25', '0', '32', '2016-09-23 17:15:15');
INSERT INTO `sys_copyroleright` VALUES ('581', '55', '0,1,2', '32', '2016-09-23 17:15:15');
INSERT INTO `sys_copyroleright` VALUES ('582', '37', '0', '32', '2016-09-23 17:15:15');
INSERT INTO `sys_copyroleright` VALUES ('583', '39', '0,1', '32', '2016-09-23 17:15:15');
INSERT INTO `sys_copyroleright` VALUES ('588', '17', '0', '9', '2016-09-28 13:15:34');
INSERT INTO `sys_copyroleright` VALUES ('592', '74', '0', '9', '2016-09-28 13:15:34');
INSERT INTO `sys_copyroleright` VALUES ('593', '75', '0', '9', '2016-09-28 13:15:34');
INSERT INTO `sys_copyroleright` VALUES ('594', '55', '0', '9', '2016-09-28 13:15:34');
INSERT INTO `sys_copyroleright` VALUES ('595', '18', '0', '9', '2016-09-28 14:53:17');
INSERT INTO `sys_copyroleright` VALUES ('596', '19', '0', '9', '2016-09-28 14:53:17');
INSERT INTO `sys_copyroleright` VALUES ('597', '20', '0', '9', '2016-09-28 14:53:17');
INSERT INTO `sys_copyroleright` VALUES ('598', '37', '0', '9', '2016-09-28 14:53:17');
INSERT INTO `sys_copyroleright` VALUES ('599', '39', '0', '9', '2016-09-28 14:53:17');
INSERT INTO `sys_copyroleright` VALUES ('600', '96', '0,1', '1', '2016-10-09 09:05:15');
INSERT INTO `sys_copyroleright` VALUES ('601', '27', '0', '9', '2016-10-09 15:19:23');
INSERT INTO `sys_copyroleright` VALUES ('602', '28', '0', '9', '2016-10-09 15:19:23');
INSERT INTO `sys_copyroleright` VALUES ('603', '59', '0', '9', '2016-10-09 15:19:23');
INSERT INTO `sys_copyroleright` VALUES ('614', '102', '0,1,2,3', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('616', '106', '0', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('617', '103', '0', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('618', '97', '0', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('619', '98', '0', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('620', '99', '0', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('621', '100', '0', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('622', '101', '0', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('623', '104', '0', '1', '2016-10-18 10:04:23');
INSERT INTO `sys_copyroleright` VALUES ('637', '106', '0', '24', '2016-10-18 10:08:03');
INSERT INTO `sys_copyroleright` VALUES ('639', '102', '0,1,2,3', '16', '2016-10-18 10:09:22');
INSERT INTO `sys_copyroleright` VALUES ('640', '105', '0', '16', '2016-10-19 16:15:10');
INSERT INTO `sys_copyroleright` VALUES ('641', '106', '0', '16', '2016-10-19 16:15:10');
INSERT INTO `sys_copyroleright` VALUES ('646', '107', '0,1,2', '1', '2016-10-27 12:50:25');
INSERT INTO `sys_copyroleright` VALUES ('647', '108', '0,1,2', '1', '2016-10-27 12:50:25');
INSERT INTO `sys_copyroleright` VALUES ('648', '109', '0,1,2', '1', '2016-10-27 12:50:25');
INSERT INTO `sys_copyroleright` VALUES ('649', '110', '0,1,2', '1', '2016-10-27 12:50:25');
INSERT INTO `sys_copyroleright` VALUES ('651', '103', '0', '24', '2016-11-07 13:31:00');
INSERT INTO `sys_copyroleright` VALUES ('652', '111', '0', '24', '2016-11-07 13:31:00');
INSERT INTO `sys_copyroleright` VALUES ('653', '112', '0', '24', '2016-11-07 13:31:00');
INSERT INTO `sys_copyroleright` VALUES ('663', '121', '0', '1', '2016-11-14 18:57:22');
INSERT INTO `sys_copyroleright` VALUES ('664', '122', '0,1,2', '1', '2016-11-14 18:57:22');
INSERT INTO `sys_copyroleright` VALUES ('665', '123', '0,1,2,3,4,5,6,7,8,9,10', '1', '2016-11-14 18:57:22');
INSERT INTO `sys_copyroleright` VALUES ('666', '111', '0', '1', '2016-11-14 18:57:22');
INSERT INTO `sys_copyroleright` VALUES ('667', '112', '0', '1', '2016-11-14 18:57:22');
INSERT INTO `sys_copyroleright` VALUES ('696', '17', '0', '34', '2016-11-16 09:56:56');
INSERT INTO `sys_copyroleright` VALUES ('697', '106', '0', '34', '2016-11-16 09:56:56');
INSERT INTO `sys_copyroleright` VALUES ('698', '121', '0', '34', '2016-11-16 09:56:56');
INSERT INTO `sys_copyroleright` VALUES ('699', '122', '0,1,2', '34', '2016-11-16 09:56:56');
INSERT INTO `sys_copyroleright` VALUES ('700', '123', '0,1,2,3,4,5,6,7', '34', '2016-11-16 09:56:56');
INSERT INTO `sys_copyroleright` VALUES ('701', '103', '0', '28', '2016-11-16 13:26:36');
INSERT INTO `sys_copyroleright` VALUES ('702', '124', '0', '28', '2016-11-16 13:26:36');
INSERT INTO `sys_copyroleright` VALUES ('703', '103', '0', '12', '2016-11-16 13:27:23');
INSERT INTO `sys_copyroleright` VALUES ('704', '124', '0', '12', '2016-11-16 13:27:23');
INSERT INTO `sys_copyroleright` VALUES ('716', '132', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('717', '144', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('718', '133', '0,1', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('719', '137', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('720', '141', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('721', '145', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('722', '134', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('723', '136', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('724', '138', '0,1', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('725', '139', '0,1', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('726', '140', '0,1', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('727', '146', '0,1', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('728', '127', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('729', '128', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('730', '125', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('731', '126', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('732', '129', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('733', '135', '0,1,2', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('734', '124', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('735', '143', '0', '1', '2016-11-21 18:45:40');
INSERT INTO `sys_copyroleright` VALUES ('736', '147', '0', '1', '2016-11-25 08:48:26');
INSERT INTO `sys_copyroleright` VALUES ('737', '147', '0', '24', '2016-11-25 15:42:24');
INSERT INTO `sys_copyroleright` VALUES ('870', '150', '0,1,2,3', '1', '2016-12-16 08:59:12');
INSERT INTO `sys_copyroleright` VALUES ('871', '151', '0,1,2,3,4,5', '1', '2016-12-16 08:59:12');
INSERT INTO `sys_copyroleright` VALUES ('872', '152', '0,1,2,3,4', '1', '2016-12-16 08:59:12');
INSERT INTO `sys_copyroleright` VALUES ('873', '153', '0,1,2,3', '1', '2016-12-16 08:59:12');
INSERT INTO `sys_copyroleright` VALUES ('874', '154', '0,1,2,3', '1', '2016-12-16 08:59:12');
INSERT INTO `sys_copyroleright` VALUES ('875', '148', '0', '1', '2016-12-16 08:59:12');
INSERT INTO `sys_copyroleright` VALUES ('876', '149', '0', '1', '2016-12-16 08:59:12');
INSERT INTO `sys_copyroleright` VALUES ('877', '103', '0', '7', '2016-12-20 09:08:56');
INSERT INTO `sys_copyroleright` VALUES ('878', '148', '0', '7', '2016-12-20 09:08:56');
INSERT INTO `sys_copyroleright` VALUES ('879', '149', '0', '7', '2016-12-20 09:08:56');
INSERT INTO `sys_copyroleright` VALUES ('880', '105', '0', '24', '2016-12-20 09:51:09');
INSERT INTO `sys_copyroleright` VALUES ('919', '155', '0', '1', '2016-12-29 12:54:52');
INSERT INTO `sys_copyroleright` VALUES ('922', '156', '0', '24', '2016-12-30 15:48:26');
INSERT INTO `sys_copyroleright` VALUES ('923', '155', '0', '34', '2017-01-03 16:19:31');
INSERT INTO `sys_copyroleright` VALUES ('924', '90', '0', '16', '2017-01-05 09:53:34');
INSERT INTO `sys_copyroleright` VALUES ('925', '114', '0', '16', '2017-01-05 09:53:34');
INSERT INTO `sys_copyroleright` VALUES ('926', '116', '0', '16', '2017-01-05 09:53:34');
INSERT INTO `sys_copyroleright` VALUES ('927', '118', '0', '16', '2017-01-05 09:53:34');
INSERT INTO `sys_copyroleright` VALUES ('928', '120', '0', '16', '2017-01-05 09:53:34');
INSERT INTO `sys_copyroleright` VALUES ('930', '156', '0', '1', '2017-01-20 14:54:43');
INSERT INTO `sys_copyroleright` VALUES ('935', '132', '0', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('936', '133', '0,1', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('937', '137', '0', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('938', '141', '0', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('939', '144', '0', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('940', '134', '0', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('941', '136', '0', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('942', '138', '0,1', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('943', '139', '0,1', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('944', '140', '0,1', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('945', '146', '0', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('946', '145', '0', '28', '2017-01-22 14:34:18');
INSERT INTO `sys_copyroleright` VALUES ('956', '132', '0', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('957', '133', '0,1', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('958', '137', '0', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('959', '141', '0', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('960', '144', '0', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('961', '134', '0', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('962', '136', '0', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('963', '138', '0,1', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('964', '139', '0,1', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('965', '140', '0', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('966', '146', '0', '12', '2017-01-22 14:40:24');
INSERT INTO `sys_copyroleright` VALUES ('967', '135', '0,1', '20', '2017-01-22 14:41:22');
INSERT INTO `sys_copyroleright` VALUES ('982', '145', '0', '12', '2017-01-23 14:54:18');
INSERT INTO `sys_copyroleright` VALUES ('983', '65', '0,1,2', '12', '2017-01-23 14:54:18');
INSERT INTO `sys_copyroleright` VALUES ('984', '49', '0', '28', '2017-01-23 17:14:22');
INSERT INTO `sys_copyroleright` VALUES ('985', '135', '0', '28', '2017-01-23 17:14:22');
INSERT INTO `sys_copyroleright` VALUES ('1020', '17', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1024', '24', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1025', '132', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1026', '133', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1027', '137', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1028', '141', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1029', '144', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1030', '26', '0,4', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1031', '134', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1032', '136', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1033', '138', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1034', '139', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1035', '140', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1036', '146', '0,1', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1037', '27', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1038', '28', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1039', '29', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1040', '37', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1041', '38', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1042', '39', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1043', '40', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1044', '41', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1045', '42', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1046', '43', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1047', '44', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1048', '45', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1049', '46', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1050', '47', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1051', '48', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1052', '49', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1053', '50', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1054', '51', '0', '38', '2017-02-09 17:21:17');
INSERT INTO `sys_copyroleright` VALUES ('1058', '18', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1059', '19', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1060', '20', '0,1,2,7,8', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1061', '24', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1062', '144', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1063', '26', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1064', '134', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1065', '136', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1066', '138', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1067', '139', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1068', '140', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1069', '38', '0,1', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1070', '41', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1071', '44', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1072', '47', '0', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1073', '50', '0,1', '16', '2017-02-09 17:27:01');
INSERT INTO `sys_copyroleright` VALUES ('1079', '17', '0', '39', '2017-02-09 17:34:02');
INSERT INTO `sys_copyroleright` VALUES ('1080', '18', '0', '39', '2017-02-09 17:34:02');
INSERT INTO `sys_copyroleright` VALUES ('1081', '19', '0', '39', '2017-02-09 17:34:02');
INSERT INTO `sys_copyroleright` VALUES ('1082', '20', '0,1,2,3,4,5,7,8', '39', '2017-02-09 17:34:02');
INSERT INTO `sys_copyroleright` VALUES ('1083', '34', '0', '39', '2017-02-09 17:34:02');
INSERT INTO `sys_copyroleright` VALUES ('1084', '35', '0,1', '39', '2017-02-09 17:34:02');
INSERT INTO `sys_copyroleright` VALUES ('1085', '36', '0,1', '39', '2017-02-09 17:34:02');
INSERT INTO `sys_copyroleright` VALUES ('1092', '17', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1099', '24', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1100', '132', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1101', '133', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1102', '137', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1103', '141', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1104', '144', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1105', '26', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1106', '134', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1107', '136', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1108', '138', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1109', '139', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1110', '140', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1111', '37', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1112', '38', '0,1', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1113', '39', '0,1', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1114', '40', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1115', '41', '0,1', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1116', '42', '0,1', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1117', '43', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1118', '44', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1119', '45', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1120', '46', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1121', '47', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1122', '48', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1123', '49', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1124', '50', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1125', '51', '0', '40', '2017-02-09 17:37:25');
INSERT INTO `sys_copyroleright` VALUES ('1126', '17', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1133', '24', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1134', '132', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1135', '133', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1136', '137', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1137', '141', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1138', '37', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1139', '38', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1140', '39', '0,1', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1141', '40', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1142', '41', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1143', '42', '0,1', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1144', '43', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1145', '44', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1146', '45', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1147', '46', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1148', '47', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1149', '48', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1150', '49', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1151', '50', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1152', '51', '0', '41', '2017-02-09 17:39:04');
INSERT INTO `sys_copyroleright` VALUES ('1153', '17', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1154', '24', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1155', '132', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1156', '133', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1157', '137', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1158', '141', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1159', '144', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1160', '26', '0,3', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1161', '134', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1162', '136', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1163', '138', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1164', '139', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1165', '140', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1166', '37', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1167', '38', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1168', '39', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1169', '40', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1170', '41', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1171', '42', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1172', '43', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1173', '44', '0,1', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1174', '45', '0,1', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1175', '46', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1176', '47', '0,1', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1177', '48', '0,1', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1178', '49', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1179', '50', '0', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1180', '51', '0,1', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1181', '135', '0,1,2', '42', '2017-02-09 17:41:11');
INSERT INTO `sys_copyroleright` VALUES ('1184', '17', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1185', '24', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1186', '132', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1187', '133', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1188', '137', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1189', '141', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1190', '37', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1191', '38', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1192', '39', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1193', '40', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1194', '41', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1195', '42', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1196', '43', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1197', '44', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1198', '45', '0,1', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1199', '46', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1200', '47', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1201', '48', '0,1', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1202', '49', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1203', '50', '0', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1204', '51', '0,1', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1205', '135', '0,1,2', '43', '2017-02-09 17:42:52');
INSERT INTO `sys_copyroleright` VALUES ('1268', '49', '0', '12', '2017-03-07 16:46:05');
INSERT INTO `sys_copyroleright` VALUES ('1269', '135', '0', '12', '2017-03-07 16:46:05');
INSERT INTO `sys_copyroleright` VALUES ('1270', '135', '0', '16', '2017-03-07 16:46:17');
INSERT INTO `sys_copyroleright` VALUES ('1274', '135', '0', '40', '2017-03-07 16:48:09');
INSERT INTO `sys_copyroleright` VALUES ('1302', '161', '0', '24', '2017-03-15 12:55:07');
INSERT INTO `sys_copyroleright` VALUES ('1305', '161', '0', '1', '2017-03-16 15:16:35');
INSERT INTO `sys_copyroleright` VALUES ('1318', '162', '0,1', '1', '2017-03-22 13:00:40');
INSERT INTO `sys_copyroleright` VALUES ('1322', '163', '0,1,2,3', '1', '2017-03-27 13:17:14');
INSERT INTO `sys_copyroleright` VALUES ('1339', '127', '0,1,2,3', '40', '2017-03-28 10:13:09');
INSERT INTO `sys_copyroleright` VALUES ('1340', '128', '0,1,2,3', '40', '2017-03-28 10:13:09');
INSERT INTO `sys_copyroleright` VALUES ('1341', '162', '0', '40', '2017-03-28 10:13:09');
INSERT INTO `sys_copyroleright` VALUES ('1374', '164', '0', '1', '2017-04-02 19:02:32');
INSERT INTO `sys_copyroleright` VALUES ('1388', '17', '0', '61', '2017-04-05 17:05:03');
INSERT INTO `sys_copyroleright` VALUES ('1389', '27', '0', '61', '2017-04-05 17:05:03');
INSERT INTO `sys_copyroleright` VALUES ('1390', '28', '0', '61', '2017-04-05 17:05:03');
INSERT INTO `sys_copyroleright` VALUES ('1391', '29', '0,1', '61', '2017-04-05 17:05:03');
INSERT INTO `sys_copyroleright` VALUES ('1442', '74', '0', '32', '2017-04-18 13:01:07');
INSERT INTO `sys_copyroleright` VALUES ('1443', '75', '0', '32', '2017-04-18 13:01:07');
INSERT INTO `sys_copyroleright` VALUES ('1458', '96', '0,1,2,3', '5', '2017-04-25 16:54:04');
INSERT INTO `sys_copyroleright` VALUES ('1474', '96', '0,1,2,3', '15', '2017-04-25 20:37:45');
INSERT INTO `sys_copyroleright` VALUES ('1475', '102', '0,1', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1476', '127', '0,1,2,3', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1477', '128', '0,1,2,3', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1478', '162', '0,1', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1479', '125', '0,1,2,3', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1480', '126', '0,1,2,3', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1481', '129', '0,1,2,3', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1482', '135', '0,1,2', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1483', '106', '0', '15', '2017-04-25 20:37:46');
INSERT INTO `sys_copyroleright` VALUES ('1484', '34', '0', '16', '2017-04-26 16:12:10');
INSERT INTO `sys_copyroleright` VALUES ('1485', '35', '0', '16', '2017-04-26 16:12:10');
INSERT INTO `sys_copyroleright` VALUES ('1486', '36', '0', '16', '2017-04-26 16:12:10');
INSERT INTO `sys_copyroleright` VALUES ('1487', '96', '0,1,2,3', '16', '2017-04-26 16:12:10');
INSERT INTO `sys_copyroleright` VALUES ('1527', '24', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1528', '132', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1529', '133', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1530', '137', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1531', '141', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1532', '144', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1533', '134', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1534', '136', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1535', '138', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1536', '139', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1537', '140', '0', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1538', '146', '0,1', '15', '2017-04-28 13:12:25');
INSERT INTO `sys_copyroleright` VALUES ('1539', '21', '0', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1540', '102', '0', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1541', '127', '0,1,2,3', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1542', '128', '0,1,2,3', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1543', '162', '0', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1544', '125', '0', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1545', '126', '0,1,2,3', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1546', '129', '0,1,2,3', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1547', '135', '0', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1548', '106', '0', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1549', '83', '0', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1550', '85', '0,3,4,5', '38', '2017-04-28 13:18:21');
INSERT INTO `sys_copyroleright` VALUES ('1553', '17', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1554', '18', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1555', '19', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1556', '20', '0,1,2,3,4,5,6,7,8,9', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1557', '34', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1558', '35', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1559', '36', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1560', '96', '0,1,2,3', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1561', '21', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1562', '102', '0,1', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1563', '24', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1564', '132', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1565', '133', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1566', '137', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1567', '141', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1568', '37', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1569', '38', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1570', '39', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1571', '127', '0,1,2,3', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1572', '40', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1573', '41', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1574', '42', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1575', '128', '0,1,2,3', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1576', '162', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1577', '43', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1578', '44', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1579', '45', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1580', '125', '0,1,2,3', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1581', '46', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1582', '47', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1583', '48', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1584', '126', '0,1,2,3', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1585', '49', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1586', '50', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1587', '51', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1588', '129', '0,1,2,3', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1589', '135', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1590', '106', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1591', '83', '0', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1592', '85', '0,3,4,5', '64', '2017-04-28 13:21:26');
INSERT INTO `sys_copyroleright` VALUES ('1593', '24', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1594', '132', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1595', '133', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1596', '137', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1597', '141', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1598', '144', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1599', '26', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1600', '134', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1601', '136', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1602', '138', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1603', '139', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1604', '140', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1605', '146', '0', '61', '2017-04-28 13:27:24');
INSERT INTO `sys_copyroleright` VALUES ('1606', '132', '0', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1607', '133', '0', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1608', '137', '0', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1609', '141', '0', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1610', '146', '0', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1611', '127', '0,1,2,3', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1612', '128', '0,1,2,3', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1613', '162', '0,1', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1614', '125', '0,1,2,3', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1615', '126', '0,1,2,3', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1616', '159', '0', '16', '2017-04-28 13:33:43');
INSERT INTO `sys_copyroleright` VALUES ('1617', '96', '0,1,2,3', '39', '2017-04-28 13:35:39');
INSERT INTO `sys_copyroleright` VALUES ('1618', '125', '0,1,2,3', '40', '2017-04-28 13:38:04');
INSERT INTO `sys_copyroleright` VALUES ('1619', '126', '0,1,2,3', '40', '2017-04-28 13:38:04');
INSERT INTO `sys_copyroleright` VALUES ('1620', '129', '0,1,2,3', '40', '2017-04-28 13:38:04');
INSERT INTO `sys_copyroleright` VALUES ('1621', '162', '0', '41', '2017-04-28 13:40:42');
INSERT INTO `sys_copyroleright` VALUES ('1622', '135', '0', '41', '2017-04-28 13:40:42');
INSERT INTO `sys_copyroleright` VALUES ('1623', '162', '0', '42', '2017-04-28 13:44:38');
INSERT INTO `sys_copyroleright` VALUES ('1624', '125', '0,1,2,3', '42', '2017-04-28 13:44:38');
INSERT INTO `sys_copyroleright` VALUES ('1625', '126', '0,1,2,3', '42', '2017-04-28 13:44:38');
INSERT INTO `sys_copyroleright` VALUES ('1626', '129', '0,1,2,3', '42', '2017-04-28 13:44:38');
INSERT INTO `sys_copyroleright` VALUES ('1627', '162', '0', '43', '2017-04-28 13:46:44');
INSERT INTO `sys_copyroleright` VALUES ('1628', '125', '0,1,2,3', '43', '2017-04-28 13:46:44');
INSERT INTO `sys_copyroleright` VALUES ('1629', '126', '0,1,2,3', '43', '2017-04-28 13:46:44');
INSERT INTO `sys_copyroleright` VALUES ('1630', '129', '0,1,2,3', '43', '2017-04-28 13:46:44');
INSERT INTO `sys_copyroleright` VALUES ('1631', '17', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1632', '105', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1633', '22', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1634', '57', '0,1,2', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1636', '63', '0,4', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1637', '89', '0,1,2', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1638', '90', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1639', '113', '0,1,2', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1640', '114', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1641', '115', '0,1,2', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1642', '116', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1643', '117', '0,1,2', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1644', '118', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1645', '119', '0,1,2', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1646', '120', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1647', '158', '0,1,2', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1648', '159', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1649', '86', '0,1,2', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1650', '157', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1651', '106', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1652', '83', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1653', '85', '0,3,4', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1654', '121', '0', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1655', '160', '0,3,4', '71', '2017-04-28 14:10:29');
INSERT INTO `sys_copyroleright` VALUES ('1656', '17', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1657', '53', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1658', '105', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1659', '22', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1660', '57', '0,1,2,3,4,5,6,7,8', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1662', '63', '0,1,2,3,4,5,6', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1663', '79', '0,1,2', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1664', '89', '0,1,2,3,4,5,6,7,8', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1665', '90', '0,1,2,3', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1666', '113', '0,1,2,3,4,5,6,7,8', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1667', '114', '0,1,2,3', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1668', '115', '0,1,2,3,4,5,6,7,8', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1669', '116', '0,1,2,3', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1670', '117', '0,1,2,3,4,5,6,7,8', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1671', '118', '0,1,2,3', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1672', '119', '0,1,2,3,4,5,6,7,8', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1673', '120', '0,1,2,3', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1674', '158', '0,1,2,3,4,5,6,7,8', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1675', '159', '0,1,2,3', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1676', '86', '0,1,2,3,4', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1677', '157', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1678', '106', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1679', '83', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1680', '82', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1681', '85', '0,2,3,4,5,6', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1682', '121', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1683', '122', '0', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1684', '160', '0,2,3,4,6', '72', '2017-04-28 14:16:43');
INSERT INTO `sys_copyroleright` VALUES ('1685', '17', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1686', '105', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1687', '22', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1688', '63', '0,4', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1689', '78', '0,1,2,3,4', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1690', '79', '0,1,2', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1691', '90', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1692', '114', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1693', '116', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1694', '118', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1695', '120', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1696', '159', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1697', '157', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1698', '106', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1699', '83', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1700', '82', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1701', '85', '0,3,4', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1702', '121', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1703', '122', '0', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1704', '160', '0,3,4', '73', '2017-04-28 14:19:42');
INSERT INTO `sys_copyroleright` VALUES ('1705', '53', '0', '73', '2017-04-28 14:20:14');
INSERT INTO `sys_copyroleright` VALUES ('1706', '17', '0', '74', '2017-04-28 14:21:30');
INSERT INTO `sys_copyroleright` VALUES ('1707', '106', '0', '74', '2017-04-28 14:21:30');
INSERT INTO `sys_copyroleright` VALUES ('1708', '83', '0', '74', '2017-04-28 14:21:30');
INSERT INTO `sys_copyroleright` VALUES ('1709', '164', '0', '74', '2017-04-28 14:21:30');
INSERT INTO `sys_copyroleright` VALUES ('1710', '17', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1711', '105', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1712', '22', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1713', '63', '0,4', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1714', '90', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1715', '114', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1716', '116', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1717', '118', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1718', '120', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1719', '159', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1720', '91', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1721', '94', '0,2', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1722', '95', '0,2', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1723', '157', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1724', '106', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1725', '83', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1726', '82', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1727', '85', '0,3,4', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1728', '121', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1729', '122', '0', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1730', '160', '0,3,4', '75', '2017-04-28 14:23:55');
INSERT INTO `sys_copyroleright` VALUES ('1731', '17', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1732', '27', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1733', '30', '3', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1734', '53', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1735', '105', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1736', '22', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1737', '63', '0,4', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1738', '90', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1739', '114', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1740', '116', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1741', '118', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1742', '120', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1743', '159', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1744', '91', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1745', '92', '0,3', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1746', '93', '0,2', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1747', '157', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1748', '106', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1749', '83', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1750', '82', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1751', '85', '0,3,4', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1752', '121', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1753', '122', '0', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1754', '160', '0,3,4', '76', '2017-04-28 14:26:13');
INSERT INTO `sys_copyroleright` VALUES ('1755', '17', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1756', '27', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1757', '30', '3', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1758', '105', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1759', '22', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1760', '63', '0,4', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1761', '90', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1762', '114', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1763', '116', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1764', '118', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1765', '120', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1766', '159', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1767', '91', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1768', '92', '0,1,2,3', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1769', '93', '0,1,2', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1770', '94', '0,1,2', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1771', '95', '0,1,2', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1772', '157', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1773', '106', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1774', '83', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1775', '82', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1776', '85', '0,3,4', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1777', '121', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1778', '122', '0', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1779', '160', '0,3,4', '77', '2017-04-28 14:28:58');
INSERT INTO `sys_copyroleright` VALUES ('1780', '17', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1781', '27', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1782', '28', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1783', '29', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1784', '30', '0,1,2,3,4,5,6,7,8,9', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1785', '163', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1786', '53', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1787', '105', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1788', '22', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1789', '63', '0,4', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1790', '90', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1791', '114', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1792', '116', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1793', '118', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1794', '120', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1795', '159', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1796', '157', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1797', '106', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1798', '83', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1799', '82', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1800', '85', '0,3,4', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1801', '121', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1802', '122', '0', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1803', '160', '0,3,4', '78', '2017-04-28 14:35:34');
INSERT INTO `sys_copyroleright` VALUES ('1804', '5', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1805', '77', '0,1,2,3,4,5', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1806', '17', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1807', '27', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1808', '28', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1809', '29', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1810', '30', '0,1,2,3,4,5,6,7,8,9', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1811', '163', '0,1,2,3', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1812', '53', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1813', '105', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1814', '22', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1815', '63', '0,4', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1816', '90', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1817', '114', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1818', '116', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1819', '118', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1820', '120', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1821', '159', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1822', '91', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1823', '92', '0,1,2,3', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1824', '157', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1825', '106', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1826', '83', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1827', '82', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1828', '85', '0,3,4', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1829', '121', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1830', '122', '0', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1831', '160', '0,3,4', '79', '2017-04-28 14:39:25');
INSERT INTO `sys_copyroleright` VALUES ('1832', '17', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1833', '53', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1834', '105', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1835', '22', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1836', '63', '0,4', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1837', '114', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1838', '116', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1839', '118', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1840', '120', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1841', '159', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1842', '106', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1843', '83', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1844', '82', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1845', '85', '0,3,4', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1846', '121', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1847', '122', '0', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1848', '160', '0,3,4', '80', '2017-04-28 14:41:29');
INSERT INTO `sys_copyroleright` VALUES ('1849', '17', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1850', '53', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1851', '105', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1852', '22', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1853', '63', '0,4', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1854', '90', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1855', '114', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1856', '116', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1857', '118', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1858', '120', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1859', '159', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1860', '106', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1861', '83', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1862', '85', '0,3,4', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1863', '121', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1864', '122', '0', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1865', '160', '0,3,4', '81', '2017-04-28 14:43:12');
INSERT INTO `sys_copyroleright` VALUES ('1866', '17', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1867', '27', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1868', '28', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1869', '29', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1870', '30', '0,1,2,3,4,5,6,7,8,9', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1871', '163', '0,1,2,3', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1872', '53', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1873', '105', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1874', '22', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1875', '57', '0,1,2,3,4,5,6,7,8', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1877', '63', '0,1,2,3,4,5,6', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1878', '78', '0,1,2,3,4', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1879', '79', '0,1,2', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1880', '89', '0,1,2,3,4,5,6,7,8', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1881', '90', '0,1,2,3', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1882', '113', '0,1,2,3,4,5,6,7,8', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1883', '114', '0,1,2,3', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1884', '115', '0,1,2,3,4,5,6,7,8', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1885', '116', '0,1,2,3', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1886', '117', '0,1,2,3,4,5,6,7,8', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1887', '118', '0,1,2,3', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1888', '119', '0,1,2,3,4,5,6,7,8', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1889', '120', '0,1,2,3', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1890', '158', '0,1,2,3,4,5,6,7,8', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1891', '159', '0,1,2,3', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1892', '86', '0,1,2,3,4', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1893', '91', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1894', '92', '0,1,2,3', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1895', '93', '0,1,2', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1896', '94', '0,1,2', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1897', '95', '0,1,2', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1898', '157', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1899', '106', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1900', '83', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1901', '82', '0,2', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1902', '85', '0,2,3,4,5,6', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1903', '164', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1904', '121', '0', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1905', '122', '0,2', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1906', '160', '0,2,3,4,5,6', '82', '2017-04-28 14:49:01');
INSERT INTO `sys_copyroleright` VALUES ('1907', '17', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1908', '27', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1909', '28', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1910', '29', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1911', '30', '0,1,2,3,4,5,6,7,8,9', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1912', '163', '0,1,2,3', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1913', '53', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1914', '105', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1915', '22', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1916', '57', '0,1,2,3,4,5,6,7,8', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1918', '63', '0,1,2,3,4,5,6', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1919', '78', '0,1,2,3,4', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1920', '79', '0,1,2', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1921', '89', '0,1,2,3,4,5,6,7,8', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1922', '90', '0,1,2,3', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1923', '113', '0,1,2,3,4,5,6,7,8', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1924', '114', '0,1,2,3', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1925', '115', '0,1,2,3,4,5,6,7,8', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1926', '116', '0,1,2,3', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1927', '117', '0,1,2,3,4,5,6,7,8', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1928', '118', '0,1,2,3', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1929', '119', '0,1,2,3,4,5,6,7,8', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1930', '120', '0,1,2,3', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1931', '158', '0,1,2,3,4,5,6,7,8', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1932', '159', '0,1,2,3', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1933', '86', '0,1,2,3,4', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1934', '91', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1935', '92', '0,1,2,3', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1936', '93', '0,1,2', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1937', '94', '0,1,2', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1938', '95', '0,1,2', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1939', '157', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1940', '106', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1941', '83', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1942', '82', '0,2', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1943', '85', '0,2,3,4,5,6', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1944', '164', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1945', '121', '0', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1946', '122', '0,2', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1947', '160', '0,2,3,4,5,6', '83', '2017-04-28 14:52:29');
INSERT INTO `sys_copyroleright` VALUES ('1948', '121', '0', '64', '2017-04-28 16:20:45');
INSERT INTO `sys_copyroleright` VALUES ('1949', '160', '0,3,4', '64', '2017-04-28 16:20:45');
INSERT INTO `sys_copyroleright` VALUES ('1950', '121', '0', '16', '2017-04-28 16:21:06');
INSERT INTO `sys_copyroleright` VALUES ('1951', '160', '0,3,4,5,6', '16', '2017-04-28 16:21:06');
INSERT INTO `sys_copyroleright` VALUES ('1952', '121', '0', '15', '2017-04-28 16:21:29');
INSERT INTO `sys_copyroleright` VALUES ('1953', '160', '0,3,4,5,6', '15', '2017-04-28 16:21:29');
INSERT INTO `sys_copyroleright` VALUES ('1954', '5', '0', '83', '2017-04-28 18:05:37');
INSERT INTO `sys_copyroleright` VALUES ('1955', '77', '0,1,2,3,4,5', '83', '2017-04-28 18:05:37');
INSERT INTO `sys_copyroleright` VALUES ('1956', '103', '0', '83', '2017-04-28 18:13:03');
INSERT INTO `sys_copyroleright` VALUES ('1957', '111', '0', '83', '2017-04-28 18:13:03');
INSERT INTO `sys_copyroleright` VALUES ('1958', '143', '0', '83', '2017-04-28 18:13:03');
INSERT INTO `sys_copyroleright` VALUES ('1959', '103', '0', '82', '2017-04-28 18:13:13');
INSERT INTO `sys_copyroleright` VALUES ('1960', '111', '0', '82', '2017-04-28 18:13:13');
INSERT INTO `sys_copyroleright` VALUES ('1961', '143', '0', '82', '2017-04-28 18:13:13');
INSERT INTO `sys_copyroleright` VALUES ('1962', '103', '0', '72', '2017-04-28 18:13:30');
INSERT INTO `sys_copyroleright` VALUES ('1963', '111', '0', '72', '2017-04-28 18:13:30');
INSERT INTO `sys_copyroleright` VALUES ('1964', '143', '0', '72', '2017-04-28 18:13:30');
INSERT INTO `sys_copyroleright` VALUES ('1967', '84', '0,2,3,4,5,6', '83', '2017-05-02 10:01:58');
INSERT INTO `sys_copyroleright` VALUES ('1968', '84', '0,2,3,4,5,6', '82', '2017-05-02 10:02:16');
INSERT INTO `sys_copyroleright` VALUES ('1971', '84', '0,2,3,4,5,6', '72', '2017-05-02 10:03:10');
INSERT INTO `sys_copyroleright` VALUES ('1977', '69', '4', '83', '2017-05-02 16:55:09');
INSERT INTO `sys_copyroleright` VALUES ('1978', '69', '4', '82', '2017-05-02 17:03:36');
INSERT INTO `sys_copyroleright` VALUES ('1979', '69', '4', '78', '2017-05-02 17:04:40');
INSERT INTO `sys_copyroleright` VALUES ('1980', '69', '4', '79', '2017-05-02 17:05:03');
INSERT INTO `sys_copyroleright` VALUES ('1981', '103', '0', '84', '2017-05-05 12:01:49');
INSERT INTO `sys_copyroleright` VALUES ('1982', '167', '0', '84', '2017-05-05 12:01:49');
INSERT INTO `sys_copyroleright` VALUES ('1983', '168', '0', '84', '2017-05-05 12:01:49');
INSERT INTO `sys_copyroleright` VALUES ('1984', '103', '0', '86', '2017-05-09 14:22:19');
INSERT INTO `sys_copyroleright` VALUES ('1985', '97', '0', '86', '2017-05-09 14:22:19');
INSERT INTO `sys_copyroleright` VALUES ('1986', '98', '0', '86', '2017-05-09 14:22:19');
INSERT INTO `sys_copyroleright` VALUES ('1987', '99', '0', '86', '2017-05-09 14:22:19');
INSERT INTO `sys_copyroleright` VALUES ('1988', '100', '0', '86', '2017-05-09 14:22:19');
INSERT INTO `sys_copyroleright` VALUES ('1989', '101', '0', '86', '2017-05-09 14:22:19');
INSERT INTO `sys_copyroleright` VALUES ('1990', '104', '0', '86', '2017-05-09 14:22:19');
INSERT INTO `sys_copyroleright` VALUES ('1991', '17', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('1992', '24', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('1993', '132', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('1994', '133', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('1995', '141', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('1996', '144', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('1997', '26', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('1998', '134', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('1999', '136', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2000', '138', '0,1', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2001', '139', '0,1', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2002', '140', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2003', '146', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2004', '49', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2005', '135', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2006', '103', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2007', '124', '0', '85', '2017-05-09 14:30:44');
INSERT INTO `sys_copyroleright` VALUES ('2008', '52', '0', '15', '2017-05-09 14:34:15');
INSERT INTO `sys_copyroleright` VALUES ('2009', '52', '0', '64', '2017-05-09 14:35:33');
INSERT INTO `sys_copyroleright` VALUES ('2010', '52', '0', '16', '2017-05-09 14:36:31');
INSERT INTO `sys_copyroleright` VALUES ('2011', '167', '0', '1', '2017-05-11 13:22:15');
INSERT INTO `sys_copyroleright` VALUES ('2012', '168', '0', '1', '2017-05-11 13:22:15');
INSERT INTO `sys_copyroleright` VALUES ('2013', '17', '0', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2014', '74', '0', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2015', '75', '0', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2016', '66', '0,1,2', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2017', '151', '0,1,2,5', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2018', '76', '0', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2019', '67', '0,1,2,3,4', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2020', '71', '0,1,2,3,4', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2021', '72', '0,1,2,3,4', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2022', '73', '0,1,2,3,4', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2023', '81', '0,1,2', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2024', '152', '0,1,2,3,4,5,6', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2025', '153', '0,1,2,3', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2026', '154', '0,1,2,3', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2027', '105', '0', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2028', '22', '0', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2029', '70', '0', '87', '2017-05-15 11:43:51');
INSERT INTO `sys_copyroleright` VALUES ('2030', '17', '0', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2031', '74', '0', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2032', '75', '0', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2033', '66', '0,1,2', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2034', '151', '0,1,2,5', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2035', '76', '0', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2036', '67', '0,1', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2037', '71', '0,1', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2038', '72', '0,1', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2039', '73', '0,1', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2040', '81', '0,1,2', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2041', '152', '0,1,2', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2042', '153', '0,1,2', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2043', '154', '0,1,2', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2044', '105', '0', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2045', '22', '0', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2046', '70', '0,1,2', '88', '2017-05-15 11:47:14');
INSERT INTO `sys_copyroleright` VALUES ('2047', '17', '0', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2048', '74', '0', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2049', '75', '0', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2050', '66', '0,1,2', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2051', '76', '0', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2052', '67', '0,1', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2053', '71', '0,1', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2054', '72', '0,1', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2055', '73', '0,1', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2056', '81', '0,1,2', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2057', '105', '0', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2058', '22', '0', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2059', '70', '0,1,2', '89', '2017-05-15 11:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2060', '17', '0', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2061', '74', '0', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2062', '75', '0', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2063', '66', '0,1,2', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2064', '76', '0', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2065', '67', '0,1,5', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2066', '71', '0,1', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2067', '72', '0,1,5', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2068', '73', '0,1', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2069', '81', '0,1,2', '90', '2017-05-15 11:51:08');
INSERT INTO `sys_copyroleright` VALUES ('2073', '17', '0', '91', '2017-05-15 11:52:30');
INSERT INTO `sys_copyroleright` VALUES ('2074', '74', '0', '91', '2017-05-15 11:52:30');
INSERT INTO `sys_copyroleright` VALUES ('2075', '75', '0', '91', '2017-05-15 11:52:30');
INSERT INTO `sys_copyroleright` VALUES ('2076', '151', '0,1,2,5', '91', '2017-05-15 11:52:30');
INSERT INTO `sys_copyroleright` VALUES ('2077', '76', '0', '91', '2017-05-15 11:52:30');
INSERT INTO `sys_copyroleright` VALUES ('2078', '152', '0,1,2', '91', '2017-05-15 11:52:30');
INSERT INTO `sys_copyroleright` VALUES ('2079', '153', '0,1,2', '91', '2017-05-15 11:52:30');
INSERT INTO `sys_copyroleright` VALUES ('2080', '154', '0,1,2', '91', '2017-05-15 11:52:30');
INSERT INTO `sys_copyroleright` VALUES ('2081', '17', '0', '92', '2017-05-15 11:53:36');
INSERT INTO `sys_copyroleright` VALUES ('2082', '74', '0', '92', '2017-05-15 11:53:36');
INSERT INTO `sys_copyroleright` VALUES ('2083', '75', '0', '92', '2017-05-15 11:53:36');
INSERT INTO `sys_copyroleright` VALUES ('2084', '151', '0,1,2,5', '92', '2017-05-15 11:53:36');
INSERT INTO `sys_copyroleright` VALUES ('2085', '76', '0', '92', '2017-05-15 11:53:36');
INSERT INTO `sys_copyroleright` VALUES ('2086', '152', '0,1,2', '92', '2017-05-15 11:53:36');
INSERT INTO `sys_copyroleright` VALUES ('2087', '153', '0,1,2', '92', '2017-05-15 11:53:36');
INSERT INTO `sys_copyroleright` VALUES ('2088', '154', '0,1,2', '92', '2017-05-15 11:53:36');
INSERT INTO `sys_copyroleright` VALUES ('2089', '17', '0', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2090', '74', '0', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2091', '75', '0', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2092', '66', '0,1,2', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2093', '76', '0', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2094', '67', '0,1', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2095', '71', '0,1', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2096', '72', '0,1', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2097', '73', '0,1', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2098', '81', '0,1,2', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2099', '105', '0', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2100', '22', '0', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2101', '70', '0,1,2', '93', '2017-05-15 11:55:59');
INSERT INTO `sys_copyroleright` VALUES ('2102', '17', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2103', '24', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2104', '25', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2105', '150', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2106', '132', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2107', '133', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2108', '137', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2109', '141', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2110', '144', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2111', '26', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2112', '134', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2113', '136', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2114', '138', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2115', '139', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2116', '140', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2117', '146', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2118', '145', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2119', '65', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2120', '49', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2121', '135', '0', '94', '2017-05-15 11:57:37');
INSERT INTO `sys_copyroleright` VALUES ('2122', '17', '0', '95', '2017-05-15 11:59:18');
INSERT INTO `sys_copyroleright` VALUES ('2123', '24', '0', '95', '2017-05-15 11:59:18');
INSERT INTO `sys_copyroleright` VALUES ('2124', '132', '0', '95', '2017-05-15 11:59:18');
INSERT INTO `sys_copyroleright` VALUES ('2125', '133', '0', '95', '2017-05-15 11:59:18');
INSERT INTO `sys_copyroleright` VALUES ('2126', '137', '0', '95', '2017-05-15 11:59:18');
INSERT INTO `sys_copyroleright` VALUES ('2127', '141', '0', '95', '2017-05-15 11:59:18');
INSERT INTO `sys_copyroleright` VALUES ('2128', '49', '0', '95', '2017-05-15 11:59:18');
INSERT INTO `sys_copyroleright` VALUES ('2129', '135', '0', '95', '2017-05-15 11:59:18');
INSERT INTO `sys_copyroleright` VALUES ('2130', '17', '0', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2131', '24', '0', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2132', '132', '0', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2133', '133', '0', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2134', '141', '0', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2135', '145', '0', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2136', '65', '0,1,2,3', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2137', '49', '0', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2138', '135', '0', '96', '2017-05-15 12:02:33');
INSERT INTO `sys_copyroleright` VALUES ('2139', '17', '0', '97', '2017-05-15 12:03:42');
INSERT INTO `sys_copyroleright` VALUES ('2140', '24', '0', '97', '2017-05-15 12:03:42');
INSERT INTO `sys_copyroleright` VALUES ('2141', '25', '0', '97', '2017-05-15 12:03:42');
INSERT INTO `sys_copyroleright` VALUES ('2142', '150', '0,1,2,3', '97', '2017-05-15 12:03:42');
INSERT INTO `sys_copyroleright` VALUES ('2143', '132', '0', '97', '2017-05-15 12:03:42');
INSERT INTO `sys_copyroleright` VALUES ('2144', '133', '0', '97', '2017-05-15 12:03:42');
INSERT INTO `sys_copyroleright` VALUES ('2145', '141', '0', '97', '2017-05-15 12:03:42');
INSERT INTO `sys_copyroleright` VALUES ('2146', '49', '0', '97', '2017-05-15 12:04:00');
INSERT INTO `sys_copyroleright` VALUES ('2147', '135', '0', '97', '2017-05-15 12:04:00');
INSERT INTO `sys_copyroleright` VALUES ('2148', '105', '0', '92', '2017-05-15 15:56:57');
INSERT INTO `sys_copyroleright` VALUES ('2149', '22', '0', '92', '2017-05-15 15:56:57');
INSERT INTO `sys_copyroleright` VALUES ('2150', '70', '0,1,2', '92', '2017-05-15 15:56:57');
INSERT INTO `sys_copyroleright` VALUES ('2151', '170', '0', '1', '2017-05-16 13:36:48');
INSERT INTO `sys_copyroleright` VALUES ('2152', '171', '0,1,2', '1', '2017-05-16 13:36:48');
INSERT INTO `sys_copyroleright` VALUES ('2153', '172', '0,1,2,3,4,5,6,7,8,9', '1', '2017-05-16 13:36:48');
INSERT INTO `sys_copyroleright` VALUES ('2154', '173', '0,1,2,3,4,5,6,7,8,9', '1', '2017-05-16 13:36:48');
INSERT INTO `sys_copyroleright` VALUES ('2155', '174', '0,1,2', '1', '2017-05-17 16:54:58');
INSERT INTO `sys_copyroleright` VALUES ('2156', '175', '0,1,2,3', '1', '2017-05-17 16:54:58');
INSERT INTO `sys_copyroleright` VALUES ('2157', '176', '0,1,2', '1', '2017-05-17 16:54:58');
INSERT INTO `sys_copyroleright` VALUES ('2158', '174', '0,1,2', '89', '2017-05-17 16:55:46');
INSERT INTO `sys_copyroleright` VALUES ('2159', '175', '0,1,2,3', '89', '2017-05-17 16:55:46');
INSERT INTO `sys_copyroleright` VALUES ('2160', '176', '0,1,2', '89', '2017-05-17 16:55:46');
INSERT INTO `sys_copyroleright` VALUES ('2161', '17', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2162', '18', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2163', '19', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2164', '20', '0,1,2,7', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2165', '34', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2166', '35', '0,1', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2167', '36', '0,1', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2168', '21', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2169', '61', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2170', '62', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2171', '56', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2172', '24', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2173', '144', '0', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2174', '26', '0,1,2,3,4', '98', '2017-05-19 17:11:35');
INSERT INTO `sys_copyroleright` VALUES ('2175', '177', '0,1,2,3,4', '1', '2017-05-31 16:29:20');
INSERT INTO `sys_copyroleright` VALUES ('2176', '17', '0', '99', '2017-05-31 17:39:37');
INSERT INTO `sys_copyroleright` VALUES ('2177', '27', '0', '99', '2017-05-31 17:39:37');
INSERT INTO `sys_copyroleright` VALUES ('2178', '28', '0', '99', '2017-05-31 17:39:37');
INSERT INTO `sys_copyroleright` VALUES ('2179', '177', '0,1', '99', '2017-05-31 17:39:37');
INSERT INTO `sys_copyroleright` VALUES ('2180', '17', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2181', '18', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2182', '19', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2183', '20', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2184', '34', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2185', '35', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2186', '36', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2187', '96', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2188', '21', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2189', '58', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2190', '61', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2191', '62', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2192', '56', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2193', '102', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2194', '24', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2195', '25', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2196', '150', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2197', '80', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2198', '132', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2199', '133', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2200', '137', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2201', '141', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2202', '144', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2203', '26', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2204', '134', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2205', '136', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2206', '138', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2207', '139', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2208', '140', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2209', '146', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2210', '145', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2211', '65', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2212', '27', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2213', '28', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2214', '29', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2215', '59', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2216', '68', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2217', '177', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2218', '30', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2219', '69', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2220', '163', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2221', '31', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2222', '32', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2223', '37', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2224', '38', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2225', '39', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2226', '127', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2227', '40', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2228', '41', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2229', '42', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2230', '128', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2231', '162', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2232', '43', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2233', '44', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2234', '45', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2235', '125', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2236', '46', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2237', '47', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2238', '48', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2239', '126', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2240', '49', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2241', '50', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2242', '51', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2243', '129', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2244', '135', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2245', '52', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2246', '53', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2247', '54', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2297', '106', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2298', '83', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2302', '147', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2303', '161', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2304', '164', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2305', '121', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2306', '122', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2307', '123', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2308', '155', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2310', '170', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2311', '171', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2312', '172', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2313', '173', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2314', '103', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2315', '97', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2316', '98', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2317', '99', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2318', '100', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2319', '101', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2320', '104', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2321', '111', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2322', '112', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2323', '124', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2324', '143', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2325', '148', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2326', '149', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2327', '156', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2328', '167', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2329', '168', '0', '100', '2017-06-01 13:06:17');
INSERT INTO `sys_copyroleright` VALUES ('2330', '178', '0', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2331', '179', '0,1,2,3,4,5,6,7,8,9,10,11,12,13', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2332', '180', '0,1,2,3,4', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2333', '181', '0,1,2,3', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2334', '182', '0,1,2,3', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2335', '183', '0,1,2', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2336', '184', '0,1,2,3,4', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2337', '185', '0,1,2', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2338', '186', '0,1,2,3', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2339', '187', '0,1,2,3', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2340', '188', '0,1,2,3', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2341', '189', '0,1,2,3', '1', '2017-06-05 15:44:46');
INSERT INTO `sys_copyroleright` VALUES ('2342', '178', '0', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2343', '179', '0,1,2,3,4,5,6,7,8,9,10,11,12', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2344', '180', '0,1,2,3,4', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2345', '181', '0,1,2,3', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2346', '182', '0,1,2,3', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2347', '183', '0,1,2', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2348', '184', '0,1,2,3,4', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2349', '185', '0,1,2', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2350', '186', '0,1,2,3', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2351', '187', '0,1,2,3', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2352', '188', '0,1,2,3', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2353', '189', '0,1,2,3', '101', '2017-06-08 10:34:38');
INSERT INTO `sys_copyroleright` VALUES ('2354', '178', '0', '102', '2017-06-14 09:43:26');
INSERT INTO `sys_copyroleright` VALUES ('2355', '179', '0,13', '102', '2017-06-14 09:43:27');
INSERT INTO `sys_copyroleright` VALUES ('2356', '190', '0', '1', '2017-06-15 11:25:14');
INSERT INTO `sys_copyroleright` VALUES ('2357', '191', '0,1,2,3,4,5,6,7', '1', '2017-06-15 11:25:14');
INSERT INTO `sys_copyroleright` VALUES ('2358', '192', '0,1,2,3', '1', '2017-06-15 11:25:14');
INSERT INTO `sys_copyroleright` VALUES ('2359', '193', '0,1,2,3,4,5,6,7', '1', '2017-06-15 11:25:14');
INSERT INTO `sys_copyroleright` VALUES ('2360', '194', '0,1,2,3', '1', '2017-06-15 11:25:14');
INSERT INTO `sys_copyroleright` VALUES ('2361', '195', '0,1,2', '1', '2017-06-15 11:25:14');
INSERT INTO `sys_copyroleright` VALUES ('2362', '196', '0,1,2', '1', '2017-06-15 11:25:14');
INSERT INTO `sys_copyroleright` VALUES ('2365', '197', '0,1,2', '71', '2017-06-28 09:49:32');
INSERT INTO `sys_copyroleright` VALUES ('2366', '197', '0,3,4,5,6,7,8', '72', '2017-06-28 09:50:18');
INSERT INTO `sys_copyroleright` VALUES ('2367', '198', '0,1,2,4,5,6', '72', '2017-06-28 09:50:18');
INSERT INTO `sys_copyroleright` VALUES ('2368', '199', '0', '1', '2017-06-30 15:24:34');
INSERT INTO `sys_copyroleright` VALUES ('2369', '200', '0,1,2,3,4,5,6,7,8', '1', '2017-06-30 15:24:34');
INSERT INTO `sys_copyroleright` VALUES ('2370', '201', '0,1,2,3,4', '1', '2017-06-30 15:24:34');
INSERT INTO `sys_copyroleright` VALUES ('2371', '202', '0,1,2', '1', '2017-06-30 15:24:34');
INSERT INTO `sys_copyroleright` VALUES ('2372', '203', '0,1,2,3', '1', '2017-07-12 09:34:24');
INSERT INTO `sys_copyroleright` VALUES ('2373', '204', '0,1,2,3,4,5', '1', '2017-07-12 09:34:24');
INSERT INTO `sys_copyroleright` VALUES ('2376', '17', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2377', '18', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2378', '19', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2379', '20', '0,1,2,7,8', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2380', '34', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2381', '35', '0,1', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2382', '36', '0,1', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2383', '96', '0,1,2,3', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2384', '21', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2385', '102', '0,1', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2386', '24', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2387', '144', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2388', '26', '0,1,2,3,4,5,6', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2389', '27', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2390', '28', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2391', '29', '0,1,2', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2392', '30', '0,1,2,4,5,6,7,8,9', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2393', '37', '0', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2394', '38', '0,1,2', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2395', '39', '0,1', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2396', '127', '0,1,2,3', '103', '2017-07-14 14:11:38');
INSERT INTO `sys_copyroleright` VALUES ('2397', '105', '0', '103', '2017-07-14 14:21:00');
INSERT INTO `sys_copyroleright` VALUES ('2398', '22', '0', '103', '2017-07-14 14:21:00');
INSERT INTO `sys_copyroleright` VALUES ('2399', '205', '0,1,2,3,4,5,6,7,8', '103', '2017-07-14 14:21:00');
INSERT INTO `sys_copyroleright` VALUES ('2400', '206', '0,1,2,3,4,5', '103', '2017-07-14 14:21:00');
INSERT INTO `sys_copyroleright` VALUES ('2401', '207', '0,1,2,3', '1', '2017-07-24 09:11:42');
INSERT INTO `sys_copyroleright` VALUES ('2402', '208', '0,1', '1', '2017-07-24 09:11:42');
INSERT INTO `sys_copyroleright` VALUES ('2403', '17', '0', '104', '2017-07-26 17:11:29');
INSERT INTO `sys_copyroleright` VALUES ('2404', '21', '0', '104', '2017-07-26 17:11:29');
INSERT INTO `sys_copyroleright` VALUES ('2405', '199', '0', '104', '2017-07-26 17:11:29');
INSERT INTO `sys_copyroleright` VALUES ('2406', '200', '0,1,2,3,4,5,6,7,8', '104', '2017-07-26 17:11:29');
INSERT INTO `sys_copyroleright` VALUES ('2407', '201', '0,1,2,3,4', '104', '2017-07-26 17:11:29');
INSERT INTO `sys_copyroleright` VALUES ('2408', '17', '0', '105', '2017-07-27 15:38:38');
INSERT INTO `sys_copyroleright` VALUES ('2409', '21', '0', '105', '2017-07-27 15:38:38');
INSERT INTO `sys_copyroleright` VALUES ('2410', '199', '0', '105', '2017-07-27 15:38:38');
INSERT INTO `sys_copyroleright` VALUES ('2411', '200', '0,1,2,3,4,5,6,7,8', '105', '2017-07-27 15:38:38');
INSERT INTO `sys_copyroleright` VALUES ('2412', '17', '0', '106', '2017-07-27 15:38:53');
INSERT INTO `sys_copyroleright` VALUES ('2413', '21', '0', '106', '2017-07-27 15:38:53');
INSERT INTO `sys_copyroleright` VALUES ('2414', '199', '0', '106', '2017-07-27 15:38:53');
INSERT INTO `sys_copyroleright` VALUES ('2415', '201', '0,1,2,3,4', '106', '2017-07-27 15:38:53');
INSERT INTO `sys_copyroleright` VALUES ('2416', '208', '0,1', '88', '2017-07-27 17:01:35');
INSERT INTO `sys_copyroleright` VALUES ('2417', '209', '0', '1', '2017-08-03 14:49:50');
INSERT INTO `sys_copyroleright` VALUES ('2418', '210', '0,1', '1', '2017-08-03 14:49:50');
INSERT INTO `sys_copyroleright` VALUES ('2419', '211', '0', '1', '2017-08-07 09:25:49');
INSERT INTO `sys_copyroleright` VALUES ('2420', '212', '0', '1', '2017-08-07 09:25:49');
INSERT INTO `sys_copyroleright` VALUES ('2421', '213', '0', '1', '2017-08-07 09:25:49');
INSERT INTO `sys_copyroleright` VALUES ('2422', '106', '0', '90', '2017-08-07 12:06:31');
INSERT INTO `sys_copyroleright` VALUES ('2423', '121', '0', '90', '2017-08-07 12:06:31');
INSERT INTO `sys_copyroleright` VALUES ('2424', '123', '0,1,2,3', '90', '2017-08-07 12:06:31');
INSERT INTO `sys_copyroleright` VALUES ('2425', '24', '0', '90', '2017-08-07 15:55:25');
INSERT INTO `sys_copyroleright` VALUES ('2426', '145', '0', '90', '2017-08-07 15:55:25');
INSERT INTO `sys_copyroleright` VALUES ('2427', '65', '0,1,2,3', '90', '2017-08-07 15:55:25');
INSERT INTO `sys_copyroleright` VALUES ('2428', '110', '0,1,2', '90', '2017-08-07 17:27:12');
INSERT INTO `sys_copyroleright` VALUES ('2429', '174', '0', '90', '2017-08-10 15:12:59');
INSERT INTO `sys_copyroleright` VALUES ('2430', '175', '0', '90', '2017-08-10 15:12:59');
INSERT INTO `sys_copyroleright` VALUES ('2431', '176', '0', '90', '2017-08-10 15:12:59');
INSERT INTO `sys_copyroleright` VALUES ('2432', '214', '0,1', '1', '2017-08-15 09:51:02');
INSERT INTO `sys_copyroleright` VALUES ('2436', '17', '0', '107', '2017-08-15 13:15:32');
INSERT INTO `sys_copyroleright` VALUES ('2486', '24', '0', '92', '2017-08-15 14:46:53');
INSERT INTO `sys_copyroleright` VALUES ('2487', '25', '0', '92', '2017-08-15 14:46:53');
INSERT INTO `sys_copyroleright` VALUES ('2488', '150', '0,1,2,3', '92', '2017-08-15 14:46:53');
INSERT INTO `sys_copyroleright` VALUES ('2489', '107', '0', '92', '2017-08-15 14:46:53');
INSERT INTO `sys_copyroleright` VALUES ('2490', '108', '0', '92', '2017-08-15 14:46:53');
INSERT INTO `sys_copyroleright` VALUES ('2491', '109', '0', '92', '2017-08-15 14:46:53');
INSERT INTO `sys_copyroleright` VALUES ('2492', '110', '0', '92', '2017-08-15 14:46:53');
INSERT INTO `sys_copyroleright` VALUES ('2493', '218', '0,1', '1', '2017-08-16 09:49:03');
INSERT INTO `sys_copyroleright` VALUES ('2494', '211', '0,1,2,3', '101', '2017-08-18 14:28:16');
INSERT INTO `sys_copyroleright` VALUES ('2495', '212', '0', '101', '2017-08-18 14:28:16');
INSERT INTO `sys_copyroleright` VALUES ('2496', '213', '0', '101', '2017-08-18 14:28:16');
INSERT INTO `sys_copyroleright` VALUES ('2497', '219', '0,1,2,3', '1', '2017-08-18 15:19:40');
INSERT INTO `sys_copyroleright` VALUES ('2498', '220', '0,1,2,3,4', '1', '2017-08-21 17:59:27');
INSERT INTO `sys_copyroleright` VALUES ('2500', '221', '0,1,2', '1', '2017-08-28 14:47:45');
INSERT INTO `sys_copyroleright` VALUES ('2501', '222', '0,1,2', '1', '2017-08-28 14:47:45');
INSERT INTO `sys_copyroleright` VALUES ('2504', '225', '0,1', '1', '2017-08-29 16:45:51');
INSERT INTO `sys_copyroleright` VALUES ('2505', '226', '0', '108', '2017-08-30 13:34:46');
INSERT INTO `sys_copyroleright` VALUES ('2512', '228', '0', '108', '2017-08-31 17:20:56');
INSERT INTO `sys_copyroleright` VALUES ('2513', '226', '0', '1', '2017-09-01 12:12:21');
INSERT INTO `sys_copyroleright` VALUES ('2514', '227', '0', '1', '2017-09-01 12:12:21');
INSERT INTO `sys_copyroleright` VALUES ('2515', '228', '0', '1', '2017-09-01 12:12:21');
INSERT INTO `sys_copyroleright` VALUES ('2516', '229', '0', '1', '2017-09-01 12:12:21');
INSERT INTO `sys_copyroleright` VALUES ('2517', '229', '0', '108', '2017-09-04 15:15:23');
INSERT INTO `sys_copyroleright` VALUES ('2518', '227', '0', '108', '2017-09-05 18:21:39');
INSERT INTO `sys_copyroleright` VALUES ('2519', '230', '0,1,2,3,4,5', '1', '2017-09-07 17:28:04');
INSERT INTO `sys_copyroleright` VALUES ('2520', '230', '0,1,2,3,4,5,6,7,8', '101', '2017-09-08 12:31:16');
INSERT INTO `sys_copyroleright` VALUES ('2521', '231', '0,1,2', '1', '2017-09-08 15:50:08');
INSERT INTO `sys_copyroleright` VALUES ('2522', '232', '0,1', '1', '2017-09-08 15:50:08');
INSERT INTO `sys_copyroleright` VALUES ('2523', '233', '0,1,2,3', '1', '2017-09-22 17:43:56');
INSERT INTO `sys_copyroleright` VALUES ('2524', '234', '0,1,2', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2525', '235', '0', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2526', '236', '0,1', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2527', '237', '0,1,2', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2528', '238', '0', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2529', '239', '0,1', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2530', '240', '0,1', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2531', '241', '0', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2532', '242', '0,1', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2533', '243', '0,1,2', '1', '2017-09-28 13:14:25');
INSERT INTO `sys_copyroleright` VALUES ('2536', '246', '0', '1', '2017-10-09 17:44:50');
INSERT INTO `sys_copyroleright` VALUES ('2537', '247', '0,1,2', '1', '2017-10-09 17:44:50');
INSERT INTO `sys_copyroleright` VALUES ('2538', '17', '0', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2539', '37', '0', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2540', '235', '0', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2541', '236', '0,1', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2542', '237', '0,1,2', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2543', '40', '0', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2544', '238', '0', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2545', '239', '0,1', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2546', '240', '0,1', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2547', '241', '0', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2548', '242', '0,1', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2549', '243', '0,1,2', '109', '2017-10-10 09:26:01');
INSERT INTO `sys_copyroleright` VALUES ('2550', '234', '0,1', '16', '2017-10-10 09:26:19');
INSERT INTO `sys_copyroleright` VALUES ('2551', '248', '0', '1', '2017-10-11 10:17:56');
INSERT INTO `sys_copyroleright` VALUES ('2552', '24', '0', '88', '2017-10-11 16:02:10');
INSERT INTO `sys_copyroleright` VALUES ('2553', '247', '0,1', '88', '2017-10-11 16:02:10');
INSERT INTO `sys_copyroleright` VALUES ('2554', '247', '0,1', '92', '2017-10-11 16:02:40');
INSERT INTO `sys_copyroleright` VALUES ('2555', '244', '0,1,2,3,4,8', '92', '2017-10-11 16:03:46');
INSERT INTO `sys_copyroleright` VALUES ('2556', '244', '0,1,2,3,4', '88', '2017-10-11 16:04:05');
INSERT INTO `sys_copyroleright` VALUES ('2557', '250', '0,1,2,3,4,5', '1', '2017-10-12 14:02:01');
INSERT INTO `sys_copyroleright` VALUES ('2558', '249', '0,1,2,3', '1', '2017-10-12 14:02:01');
INSERT INTO `sys_copyroleright` VALUES ('2559', '251', '0,1,2,3,4,5,6,7,8,9,10,11', '1', '2017-10-12 14:02:01');
INSERT INTO `sys_copyroleright` VALUES ('2560', '43', '0', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2561', '44', '0,1', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2562', '45', '0,1', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2563', '46', '0', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2564', '47', '0,1', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2565', '48', '0,1', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2566', '49', '0', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2567', '50', '0,1', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2568', '51', '0,1', '109', '2017-10-17 17:48:24');
INSERT INTO `sys_copyroleright` VALUES ('2570', '1', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2571', '2', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2572', '3', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2573', '4', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2574', '8', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2575', '12', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2576', '5', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2577', '9', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2578', '6', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2579', '7', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2580', '77', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2581', '220', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2582', '11', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2583', '10', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2584', '13', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2585', '33', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2586', '199', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2587', '200', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2588', '201', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2589', '234', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2590', '219', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2591', '231', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2592', '232', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2593', '247', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2594', '207', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2595', '250', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2596', '233', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2597', '249', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2598', '251', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2599', '235', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2600', '236', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2601', '237', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2602', '238', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2603', '239', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2604', '240', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2605', '241', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2606', '242', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2607', '243', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2608', '74', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2609', '75', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2610', '55', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2611', '66', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2612', '151', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2613', '208', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2614', '76', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2615', '67', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2616', '71', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2617', '72', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2618', '73', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2619', '81', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2620', '152', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2621', '153', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2622', '154', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2623', '174', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2624', '175', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2625', '176', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2626', '107', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2627', '108', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2628', '109', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2629', '110', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2630', '221', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2631', '222', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2632', '82', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2633', '84', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2634', '203', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2635', '204', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2636', '87', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2637', '88', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2638', '190', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2639', '191', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2640', '192', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2641', '193', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2642', '194', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2643', '195', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2644', '196', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2645', '202', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2646', '226', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2647', '227', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2648', '228', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2649', '229', '0', '100', '2017-10-30 09:39:58');
INSERT INTO `sys_copyroleright` VALUES ('2650', '17', '0', '110', '2017-10-30 10:07:24');
INSERT INTO `sys_copyroleright` VALUES ('2651', '24', '0', '110', '2017-10-30 10:07:24');
INSERT INTO `sys_copyroleright` VALUES ('2652', '144', '0', '110', '2017-10-30 10:07:24');
INSERT INTO `sys_copyroleright` VALUES ('2653', '26', '0,1,2,3,4,5,6', '110', '2017-10-30 10:07:24');
INSERT INTO `sys_copyroleright` VALUES ('2654', '253', '0,1', '1', '2017-10-30 13:06:12');
INSERT INTO `sys_copyroleright` VALUES ('2655', '254', '0,1,2,3,4,5,6', '1', '2017-10-30 13:06:12');
INSERT INTO `sys_copyroleright` VALUES ('2656', '254', '0,1,2,3,4,5,6', '90', '2017-10-30 16:50:27');
INSERT INTO `sys_copyroleright` VALUES ('2657', '253', '0,1', '85', '2017-10-30 16:51:02');
INSERT INTO `sys_copyroleright` VALUES ('2662', '105', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2663', '22', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2664', '23', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2665', '57', '0,1,2,3,4,5,6,7,8', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2666', '60', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2667', '63', '0,1,2,3,4,5,6', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2668', '64', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2669', '70', '0,1,2,3', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2670', '78', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2671', '79', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2672', '89', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2673', '90', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2674', '113', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2675', '114', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2676', '115', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2677', '116', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2678', '117', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2679', '118', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2680', '119', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2681', '120', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2682', '158', '0,1,2,3,4,5,6,7,8', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2683', '159', '0,1,2,3,4,5,6', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2684', '197', '0,1,2,3,4,5,6,7,8', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2685', '198', '0,1,2,3,4,5,6', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2686', '205', '0,1,2,3,4,5,6,7,8', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2687', '206', '0,1,2,3,4,5', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2688', '244', '0,1,2,3,4,5,6,7,8', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2689', '245', '0,1,2,3,4,5', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2690', '252', '0,1,2,3,4,5,6', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2691', '85', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2692', '91', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2693', '92', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2694', '93', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2695', '94', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2696', '95', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2697', '157', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2698', '160', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2699', '224', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2700', '86', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2701', '223', '0', '1', '2017-11-02 14:12:17');
INSERT INTO `sys_copyroleright` VALUES ('2702', '256', '0,1', '1', '2017-11-08 19:02:40');
INSERT INTO `sys_copyroleright` VALUES ('2703', '257', '0,1,2', '1', '2017-11-08 19:02:40');
INSERT INTO `sys_copyroleright` VALUES ('2705', '260', '0', '1', '2017-11-10 10:07:22');
INSERT INTO `sys_copyroleright` VALUES ('2706', '17', '0', '111', '2017-11-10 10:08:09');
INSERT INTO `sys_copyroleright` VALUES ('2707', '260', '0', '111', '2017-11-10 10:08:09');
INSERT INTO `sys_copyroleright` VALUES ('2708', '256', '0,1', '111', '2017-11-10 10:08:09');
INSERT INTO `sys_copyroleright` VALUES ('2709', '257', '0,1,2', '111', '2017-11-10 10:08:09');
INSERT INTO `sys_copyroleright` VALUES ('2710', '261', '0', '108', '2017-11-10 13:47:20');
INSERT INTO `sys_copyroleright` VALUES ('2711', '106', '0', '109', '2017-11-10 15:13:53');
INSERT INTO `sys_copyroleright` VALUES ('2712', '121', '0', '109', '2017-11-10 15:13:53');
INSERT INTO `sys_copyroleright` VALUES ('2713', '123', '0,1', '109', '2017-11-10 15:13:53');
INSERT INTO `sys_copyroleright` VALUES ('2714', '262', '0', '1', '2017-11-13 11:23:30');
INSERT INTO `sys_copyroleright` VALUES ('2715', '261', '0', '1', '2017-11-13 11:23:30');
INSERT INTO `sys_copyroleright` VALUES ('2716', '264', '0,1,2,3', '1', '2017-11-20 11:48:07');
INSERT INTO `sys_copyroleright` VALUES ('2717', '263', '0,1,2,3', '1', '2017-11-20 11:48:07');
INSERT INTO `sys_copyroleright` VALUES ('2718', '5', '0', '112', '2017-11-21 15:56:12');
INSERT INTO `sys_copyroleright` VALUES ('2719', '262', '0', '112', '2017-11-21 15:56:12');
INSERT INTO `sys_copyroleright` VALUES ('2720', '265', '0,1', '1', '2017-11-28 10:26:48');
INSERT INTO `sys_copyroleright` VALUES ('2721', '17', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2722', '18', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2723', '19', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2724', '20', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2725', '24', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2726', '219', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2727', '27', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2728', '28', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2729', '250', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2730', '251', '2', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2731', '105', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2732', '22', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2733', '206', '0', '113', '2017-11-30 14:51:54');
INSERT INTO `sys_copyroleright` VALUES ('2734', '266', '0', '1', '2017-12-08 17:31:44');
INSERT INTO `sys_copyroleright` VALUES ('2735', '36', '0,1', '1', '2017-12-08 17:31:44');
INSERT INTO `sys_copyroleright` VALUES ('2736', '267', '0,1,2,3', '1', '2017-12-11 09:35:01');
INSERT INTO `sys_copyroleright` VALUES ('2737', '268', '0,1,2,3', '1', '2017-12-26 15:24:15');
INSERT INTO `sys_copyroleright` VALUES ('2738', '269', '0', '1', '2018-01-03 10:46:39');
INSERT INTO `sys_copyroleright` VALUES ('2739', '270', '0', '1', '2018-01-03 10:46:39');
INSERT INTO `sys_copyroleright` VALUES ('2740', '272', '0', '1', '2018-01-03 10:46:39');
INSERT INTO `sys_copyroleright` VALUES ('2741', '273', '0', '1', '2018-01-03 10:46:39');
INSERT INTO `sys_copyroleright` VALUES ('2742', '271', '0', '1', '2018-01-03 10:46:39');
INSERT INTO `sys_copyroleright` VALUES ('2743', '274', '0', '1', '2018-01-03 10:46:39');
INSERT INTO `sys_copyroleright` VALUES ('2744', '275', '0', '1', '2018-01-03 10:46:39');
INSERT INTO `sys_copyroleright` VALUES ('2745', '276', '0', '1', '2018-01-03 10:46:39');
INSERT INTO `sys_copyroleright` VALUES ('2746', '277', '0,1,2', '1', '2018-01-11 10:00:44');
INSERT INTO `sys_copyroleright` VALUES ('2747', '278', '0,1,2', '1', '2018-01-17 11:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2748', '247', '0,1', '90', '2018-01-30 15:14:36');
INSERT INTO `sys_copyroleright` VALUES ('2749', '27', '0', '107', '2018-02-09 16:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2750', '28', '0', '107', '2018-02-09 16:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2751', '68', '2,3,4', '107', '2018-02-09 16:49:34');
INSERT INTO `sys_copyroleright` VALUES ('2752', '281', '0,1,2,3,4,5', '1', '2018-02-24 10:16:17');
INSERT INTO `sys_copyroleright` VALUES ('2753', '279', '0', '1', '2018-02-24 10:16:17');
INSERT INTO `sys_copyroleright` VALUES ('2754', '280', '0', '1', '2018-02-24 10:16:17');
INSERT INTO `sys_copyroleright` VALUES ('2755', '21', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2756', '234', '0,1,2', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2757', '277', '0,1,2', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2758', '278', '0,1,2', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2759', '37', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2760', '38', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2761', '39', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2762', '127', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2763', '235', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2764', '236', '0,1', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2765', '237', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2766', '40', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2767', '41', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2768', '42', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2769', '128', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2770', '162', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2771', '238', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2772', '239', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2773', '240', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2774', '241', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2775', '242', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2776', '243', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2777', '43', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2778', '44', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2779', '45', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2780', '125', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2781', '46', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2782', '47', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2783', '48', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2784', '126', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2785', '49', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2786', '50', '0,1', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2787', '51', '0', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2788', '129', '0,1,2,3', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2789', '135', '0,1,2', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2790', '52', '0,1,2,3,4,5,6,7', '5', '2018-02-24 10:26:52');
INSERT INTO `sys_copyroleright` VALUES ('2791', '282', '0,1,2', '1', '2018-03-12 09:17:53');
INSERT INTO `sys_copyroleright` VALUES ('2792', '281', '0,1,2,3,4,5', '64', '2018-03-12 14:24:14');
INSERT INTO `sys_copyroleright` VALUES ('2793', '1', '0', '114', '2018-03-16 16:00:46');
INSERT INTO `sys_copyroleright` VALUES ('2794', '2', '0,1,2,3', '114', '2018-03-16 16:00:46');
INSERT INTO `sys_copyroleright` VALUES ('2795', '3', '0,1,2,3', '114', '2018-03-16 16:00:46');
INSERT INTO `sys_copyroleright` VALUES ('2796', '17', '0', '114', '2018-03-16 16:02:00');
INSERT INTO `sys_copyroleright` VALUES ('2797', '18', '0', '114', '2018-03-16 16:02:00');
INSERT INTO `sys_copyroleright` VALUES ('2798', '19', '0', '114', '2018-03-16 16:02:00');
INSERT INTO `sys_copyroleright` VALUES ('2799', '20', '0,1,2,3,4,5,6,7,8', '114', '2018-03-16 16:02:00');
INSERT INTO `sys_copyroleright` VALUES ('2800', '34', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2801', '35', '0,1', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2802', '36', '0,1', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2803', '96', '0,1,2,3', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2804', '21', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2805', '102', '0,1,2,3', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2806', '234', '0,1,2', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2807', '24', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2808', '25', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2809', '150', '0,1,2,3', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2810', '132', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2811', '133', '0,1', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2812', '137', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2813', '141', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2814', '144', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2815', '26', '0,1,2,3,4,5,6', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2816', '134', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2817', '136', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2818', '138', '0,1', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2819', '139', '0,1', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2820', '140', '0,1,2,3', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2821', '146', '0,1', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2822', '246', '0', '114', '2018-03-16 16:04:55');
INSERT INTO `sys_copyroleright` VALUES ('2823', '145', '0', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2824', '65', '0,1,2,3', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2825', '219', '0,1', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2826', '231', '0,1,2', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2827', '232', '0,1', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2828', '247', '0,1,2', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2829', '253', '0,1,2', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2830', '27', '0', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2831', '28', '0', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2832', '29', '0,1,2,3', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2833', '68', '0,1,2,3,4,5', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2834', '30', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2835', '69', '0,1,2,3,4,5,6,7,8,9,10,11,12,13', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2836', '163', '0,1,2,3', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2837', '233', '0,1,2,3', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2838', '249', '0,1,2,3', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2839', '251', '0,1,2,3,4,5,6,7,8,9,10,11,12', '114', '2018-03-16 16:09:42');
INSERT INTO `sys_copyroleright` VALUES ('2840', '37', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2841', '38', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2842', '39', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2843', '127', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2844', '235', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2845', '236', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2846', '237', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2847', '40', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2848', '41', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2849', '42', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2850', '128', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2851', '162', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2852', '238', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2853', '239', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2854', '240', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2855', '241', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2856', '242', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2857', '243', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2858', '43', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2859', '44', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2860', '45', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2861', '125', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2862', '46', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2863', '47', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2864', '48', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2865', '126', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2866', '49', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2867', '50', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2868', '51', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2869', '129', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2870', '135', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2871', '52', '0,1,2,3,4,5,6,7', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2872', '74', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2873', '75', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2874', '55', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2875', '66', '0,1,2,3,4,5', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2876', '151', '0,1,2,3,4,5', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2877', '208', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2878', '254', '0,1,2,3,4,5,6', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2879', '76', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2880', '67', '0,1,2,3,4,5,6', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2881', '71', '0,1,2,3,4', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2882', '72', '0,1,2,3,4,5', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2883', '73', '0,1,2,3,4', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2884', '81', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2885', '152', '0,1,2,3,4,5,6', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2886', '153', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2887', '154', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2888', '174', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2889', '175', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2890', '176', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2891', '107', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2892', '108', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2893', '109', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2894', '110', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2895', '105', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2896', '22', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2897', '57', '0,1,2,3,4,5,6,7,8', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2898', '63', '0,1,2,3,4,5,6', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2899', '64', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2900', '70', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2901', '158', '0,1,2,3,4,5,6,7,8', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2902', '159', '0,1,2,3,4,5,6', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2903', '197', '0,1,2,3,4,5,6,7,8', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2904', '198', '0,1,2,3,4,5,6', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2905', '205', '0,1,2,3,4,5,6,7,8', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2906', '206', '0,1,2,3,4,5', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2907', '244', '0,1,2,3,4,5,6,7,8', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2908', '245', '0,1,2,3,4,5', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2909', '268', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2910', '157', '0,1', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2911', '106', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2912', '83', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2913', '82', '0,1,2,3', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2914', '84', '0,1,2,3,4,5,6,7,8,9,10,11,12', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2915', '147', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2916', '156', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2917', '161', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2918', '164', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2919', '121', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2920', '122', '0,1,2', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2921', '123', '0,1,2,3,4,5,6,7,8,9,10', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2922', '155', '0', '114', '2018-03-16 16:30:04');
INSERT INTO `sys_copyroleright` VALUES ('2923', '4', '0,1', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2924', '8', '0,1', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2925', '278', '0,1,2', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2926', '250', '0,1,2,3,4,5', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2927', '103', '0', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2928', '248', '0', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2929', '178', '0', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2930', '230', '0,1,2,3,4,5,6,7,8', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2931', '190', '0', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2932', '191', '0,1,2,3,4,5,6,7', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2933', '193', '0,1,2,3,4,5,6,7,8', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2934', '194', '0,1,2,3', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2935', '202', '0,1,2', '114', '2018-03-16 16:33:33');
INSERT INTO `sys_copyroleright` VALUES ('2936', '224', '0', '114', '2018-03-16 16:34:33');
INSERT INTO `sys_copyroleright` VALUES ('2937', '86', '0,1,2,3,4,5', '114', '2018-03-16 16:34:34');
INSERT INTO `sys_copyroleright` VALUES ('2938', '192', '0,1,2,3', '114', '2018-03-20 19:23:17');
INSERT INTO `sys_copyroleright` VALUES ('2939', '195', '0,1,2', '114', '2018-03-20 19:23:17');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(20) NOT NULL COMMENT '部门名称',
  `description` varchar(45) DEFAULT NULL COMMENT '描述',
  `updateTime` varchar(30) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deptName` (`deptName`),
  KEY `FK1AC98804AC23DF20` (`parentid`),
  CONSTRAINT `FK1AC98804AC23DF20` FOREIGN KEY (`parentid`) REFERENCES `sys_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES ('6', 'IT', '软件与运维', '2015-08-30 16:32:19', '15');
INSERT INTO `sys_department` VALUES ('9', '股东会', '', '2015-08-30 16:25:54', null);
INSERT INTO `sys_department` VALUES ('10', '监事会', '', '2015-08-30 16:26:11', null);
INSERT INTO `sys_department` VALUES ('11', '董事会', '', '2015-08-30 16:26:29', null);
INSERT INTO `sys_department` VALUES ('12', '总裁办公室', '', '2015-09-06 18:00:33', null);
INSERT INTO `sys_department` VALUES ('13', '人事部（总部）', '', '2015-08-30 16:32:10', null);
INSERT INTO `sys_department` VALUES ('14', '财务部（总部）', '', '2015-08-30 16:31:59', null);
INSERT INTO `sys_department` VALUES ('15', '北京优迅医学检验所有限公司', '', '2015-08-30 16:27:46', null);
INSERT INTO `sys_department` VALUES ('16', '客服部', '', '2015-08-30 16:28:37', '15');
INSERT INTO `sys_department` VALUES ('17', '技术支持', '', '2015-08-30 16:28:58', '15');
INSERT INTO `sys_department` VALUES ('18', '实验中心', '', '2015-08-30 16:29:09', '15');
INSERT INTO `sys_department` VALUES ('19', '质量部', '', '2015-08-30 16:29:22', '15');
INSERT INTO `sys_department` VALUES ('20', '生物信息部', '', '2015-08-30 16:29:38', '15');
INSERT INTO `sys_department` VALUES ('21', '市场部', '', '2015-08-30 16:29:52', '15');
INSERT INTO `sys_department` VALUES ('23', '财务部', '', '2015-09-06 17:46:07', '15');
INSERT INTO `sys_department` VALUES ('24', '采购部', '', '2015-08-30 16:31:05', '15');
INSERT INTO `sys_department` VALUES ('25', '行政部', '', '2015-08-30 16:31:18', '15');
INSERT INTO `sys_department` VALUES ('26', '人力资源部', '', '2015-09-06 17:45:48', '15');
INSERT INTO `sys_department` VALUES ('27', '商务部', '', '2016-07-05 11:09:17', '15');
INSERT INTO `sys_department` VALUES ('28', '天津胸科', '天津胸科', '2016-07-08 12:24:12', null);
INSERT INTO `sys_department` VALUES ('29', '科学技术体系', '', '2017-02-24 13:26:44', '15');

-- ----------------------------
-- Table structure for sys_evection
-- ----------------------------
DROP TABLE IF EXISTS `sys_evection`;
CREATE TABLE `sys_evection` (
  `evectionId` int(11) NOT NULL AUTO_INCREMENT,
  `bossContent` varchar(20) DEFAULT NULL,
  `bossSignDate` varchar(20) DEFAULT NULL,
  `bossSignName` varchar(20) DEFAULT NULL,
  `evectionAddress` varchar(50) NOT NULL,
  `evectionContent` varchar(100) DEFAULT NULL,
  `evectionDate` varchar(20) NOT NULL,
  `evectionDeptId` varchar(7) DEFAULT NULL,
  `evectionDeptName` varchar(20) DEFAULT NULL,
  `evectionEndDate` varchar(20) NOT NULL,
  `evectionEndDateTime` varchar(30) NOT NULL,
  `evectionEndTime` varchar(20) NOT NULL,
  `evectionEntourage` varchar(255) DEFAULT NULL,
  `evectionInstanceId` varchar(30) NOT NULL,
  `evectionLongDay` varchar(20) NOT NULL,
  `evectionLongDayTime` varchar(20) NOT NULL,
  `evectionLongTime` varchar(20) NOT NULL,
  `evectionName` varchar(30) NOT NULL,
  `evectionStartDate` varchar(20) NOT NULL,
  `evectionStartDateTime` varchar(30) NOT NULL,
  `evectionStartTime` varchar(20) NOT NULL,
  `evectionState` varchar(20) NOT NULL,
  `evectionTaskId` varchar(30) NOT NULL,
  `evectionVehicle` varchar(50) NOT NULL,
  `managerContent` varchar(200) DEFAULT NULL,
  `managerSignDate` varchar(20) DEFAULT NULL,
  `managerSignName` varchar(20) DEFAULT NULL,
  `manpowerContent` varchar(200) DEFAULT NULL,
  `manpowerSignDate` varchar(20) DEFAULT NULL,
  `manpowerSignName` varchar(20) DEFAULT NULL,
  `nextass` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`evectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_evection
-- ----------------------------
INSERT INTO `sys_evection` VALUES ('3', '总经理', '2015-10-28 13:31:29', '王建伟', '北京', '出差测试', '2015-10-28 13:30:13', '6', 'IT', '2015-10-01', '2015-10-01 00:00', '00:00', '人员1，人员2', 'uscievection.190029', '1', '1 天3时', '3', '聂梦肖', '2015-10-28', '2015-10-28 00:00', '00:00', '[结束]', '200016', '地铁', '部门', '2015-10-28 13:31:08', '黄龙', '', '2015-10-28 13:32:20', '钱坤', '钱坤');
INSERT INTO `sys_evection` VALUES ('4', '', null, null, '达内培训机构', '达内招聘', '2015-11-10 16:22:20', '6', 'IT', '2015-11-10', '2015-11-10 16:00', '16:00', '于晓蕊', 'uscievection.230001', '0', '0 天3时', '3', '黄龙', '2015-11-10', '2015-11-10 13:00', '13:00', '[总经理审批]', '240002', '出租车', '正式申请，通过', '2015-11-10 16:22:40', '黄龙', '', null, null, '王建伟');

-- ----------------------------
-- Table structure for sys_evercookies
-- ----------------------------
DROP TABLE IF EXISTS `sys_evercookies`;
CREATE TABLE `sys_evercookies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cookieContent` varchar(200) NOT NULL COMMENT 'cookie内容',
  `cookieName` varchar(20) NOT NULL COMMENT 'cookie名称',
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_evercookies
-- ----------------------------
INSERT INTO `sys_evercookies` VALUES ('9', '[{\'id\' : 45,\'col\' : 0}]', 'schedulesortcookie', '1');
INSERT INTO `sys_evercookies` VALUES ('10', '[{\'id\' : 46,\'col\' : 0}]', 'schedulesortcookie', '5');
INSERT INTO `sys_evercookies` VALUES ('11', '[{\"id\":50,\"col\":0},{\"id\":51,\"col\":0},{\"id\":49,\"col\":1},{\"id\":52,\"col\":1},{\"id\":48,\"col\":2},{\"id\":47,\"col\":2}]', 'schedulesortcookie', '6');
INSERT INTO `sys_evercookies` VALUES ('12', '[{\'id\' : 53,\'col\' : 0}]', 'schedulesortcookie', '15');
INSERT INTO `sys_evercookies` VALUES ('13', '[{\'id\' : 54,\'col\' : 0}]', 'schedulesortcookie', '17');
INSERT INTO `sys_evercookies` VALUES ('14', '[{\'id\' : 55,\'col\' : 0}]', 'schedulesortcookie', '26');
INSERT INTO `sys_evercookies` VALUES ('15', '[{\"id\":56,\"col\":0}]', 'schedulesortcookie', '20');
INSERT INTO `sys_evercookies` VALUES ('16', '[{\'id\' : 59,\'col\' : 0}]', 'schedulesortcookie', '30');
INSERT INTO `sys_evercookies` VALUES ('17', '[{\'id\' : 60,\'col\' : 0}]', 'schedulesortcookie', '21');
INSERT INTO `sys_evercookies` VALUES ('18', '[{\'id\' : 61,\'col\' : 0}]', 'schedulesortcookie', '14');
INSERT INTO `sys_evercookies` VALUES ('19', '[{\'id\' : 62,\'col\' : 0}]', 'schedulesortcookie', '6');
INSERT INTO `sys_evercookies` VALUES ('20', '[{\'id\' : 63,\'col\' : 0}]', 'schedulesortcookie', '5');
INSERT INTO `sys_evercookies` VALUES ('21', '[{\'id\' : 64,\'col\' : 0}]', 'schedulesortcookie', '8');
INSERT INTO `sys_evercookies` VALUES ('22', '[{\'id\' : 65,\'col\' : 0}]', 'schedulesortcookie', '10');
INSERT INTO `sys_evercookies` VALUES ('23', '[{\'id\' : 66,\'col\' : 0}]', 'schedulesortcookie', '18');

-- ----------------------------
-- Table structure for sys_informs
-- ----------------------------
DROP TABLE IF EXISTS `sys_informs`;
CREATE TABLE `sys_informs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informsContent` longtext COMMENT '消息内容',
  `informsLink` varchar(45) DEFAULT NULL COMMENT '消息链接',
  `informsSender` varchar(20) NOT NULL COMMENT '发送人',
  `informsSenderDate` varchar(20) NOT NULL COMMENT '发送时间',
  `informsStatus` varchar(1) NOT NULL COMMENT '状态',
  `informsTitle` varchar(40) NOT NULL COMMENT '消息标题',
  `informsReceiver` varchar(20) NOT NULL COMMENT '消息接收人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_informs
-- ----------------------------
INSERT INTO `sys_informs` VALUES ('39', '', 'leave!modulepage.action', '聂海峰', '2015-11-10 16:09:28', '0', '(完成)申请请假（部门驳回）', '黄龙');
INSERT INTO `sys_informs` VALUES ('40', '', 'leave!modulepage.action', '聂海峰', '2015-11-13 09:34:33', '0', '(完成)申请请假（部门驳回）', '黄龙');
INSERT INTO `sys_informs` VALUES ('41', '服务器有问题，你来这时在讨论，记的驳回', 'leave!modulepage.action', '黄龙', '2015-11-16 15:38:30', '0', '(拒绝)申请请假（重新填写）', '聂海峰');
INSERT INTO `sys_informs` VALUES ('42', '请假', 'leave!modulepage.action', '黄龙', '2015-11-16 15:38:45', '0', '(完成)申请请假（重新填写）', '聂海峰');
INSERT INTO `sys_informs` VALUES ('43', '', 'leave!modulepage.action', '聂海峰', '2015-11-18 12:06:58', '1', '(完成)申请请假（部门驳回）', '黄龙');
INSERT INTO `sys_informs` VALUES ('44', '', 'leave!modulepage.action', '聂海峰', '2015-11-18 12:07:00', '1', '(完成)申请请假（部门驳回）', '黄龙');
INSERT INTO `sys_informs` VALUES ('45', '服务器有问题，你来这时在讨论，记的驳回', 'leave!modulepage.action', '黄龙', '2016-02-29 10:11:17', '1', '(完成)申请请假（重新填写）', '聂海峰');
INSERT INTO `sys_informs` VALUES ('46', '请假', 'leave!modulepage.action', '黄龙', '2016-04-07 14:10:00', '1', '(完成)申请请假', '聂海峰');

-- ----------------------------
-- Table structure for sys_jbpmdept
-- ----------------------------
DROP TABLE IF EXISTS `sys_jbpmdept`;
CREATE TABLE `sys_jbpmdept` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `deptId` int(11) DEFAULT NULL,
  `flowName` varchar(255) DEFAULT NULL,
  `posId` int(11) DEFAULT NULL,
  `flowNext` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_jbpmdept
-- ----------------------------
INSERT INTO `sys_jbpmdept` VALUES ('3', '6', '请假', '4', '');
INSERT INTO `sys_jbpmdept` VALUES ('4', '12', '请假', '38', '办公室审批');
INSERT INTO `sys_jbpmdept` VALUES ('5', '26', '请假', '8', '');
INSERT INTO `sys_jbpmdept` VALUES ('6', '18', '请假', '18', '');
INSERT INTO `sys_jbpmdept` VALUES ('7', '21', '请假', '32', '');
INSERT INTO `sys_jbpmdept` VALUES ('8', '17', '请假', '15', '');
INSERT INTO `sys_jbpmdept` VALUES ('9', '20', '请假', '27', '');
INSERT INTO `sys_jbpmdept` VALUES ('10', '23', '请假', '10', '');
INSERT INTO `sys_jbpmdept` VALUES ('11', '19', '请假', '24', '');
INSERT INTO `sys_jbpmdept` VALUES ('12', '24', '请假', '37', '');

-- ----------------------------
-- Table structure for sys_leave
-- ----------------------------
DROP TABLE IF EXISTS `sys_leave`;
CREATE TABLE `sys_leave` (
  `leaveId` int(11) NOT NULL AUTO_INCREMENT,
  `bossContent` varchar(20) DEFAULT NULL,
  `bossSignDate` varchar(20) DEFAULT NULL,
  `bossSignName` varchar(20) DEFAULT NULL,
  `jobDelegation` varchar(20) DEFAULT NULL,
  `leaveContact` varchar(20) DEFAULT NULL,
  `leaveContent` varchar(100) DEFAULT NULL,
  `leaveDeptId` int(11) NOT NULL,
  `leaveDeptName` varchar(20) DEFAULT NULL,
  `leaveEndTime` varchar(20) NOT NULL,
  `leaveInstanceId` varchar(30) NOT NULL,
  `leaveLong` varchar(7) NOT NULL,
  `leaveName` varchar(30) NOT NULL,
  `leavePosId` int(11) NOT NULL,
  `leavePosName` varchar(20) DEFAULT NULL,
  `leaveSignDate` varchar(20) NOT NULL,
  `leaveSignName` varchar(10) NOT NULL,
  `leaveStartTime` varchar(20) NOT NULL,
  `leaveState` varchar(20) NOT NULL,
  `leaveTaskId` varchar(30) NOT NULL,
  `leaveType` varchar(40) NOT NULL,
  `managerContent` varchar(200) DEFAULT NULL,
  `managerSignDate` varchar(20) DEFAULT NULL,
  `managerSignName` varchar(20) DEFAULT NULL,
  `manpowerContent` varchar(200) DEFAULT NULL,
  `manpowerSignDate` varchar(20) DEFAULT NULL,
  `manpowerSignName` varchar(20) DEFAULT NULL,
  `nextass` varchar(30) DEFAULT NULL,
  `processInstanceId` varchar(30) NOT NULL,
  PRIMARY KEY (`leaveId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_leave
-- ----------------------------
INSERT INTO `sys_leave` VALUES ('12', '', '', '', '20个字符', '20个字符', '服务器有问题，你来这时在讨论，记的驳回', '6', 'IT', '2015-11-10 00:45', 'uscileave.210007', '1', '聂海峰', '1', 'java工程师', '2015-11-26 15:52:53', '聂海峰', '2015-11-18 00:30', '[办公室审批]', '330001', '事假', '啦', '2015-11-26 16:16:32', '黄龙', '', '', '', '钱坤', 'uscileave-1');
INSERT INTO `sys_leave` VALUES ('13', null, null, null, 'VPN远程', '公司邮箱', '1.去医院看病 2.养病。事后会补上病历和相关单据', '20', '生物信息部', '2015-11-18 18:00', 'uscileave.270012', '2.5', '徐寒黎', '27', '总监', '2015-11-16 10:28:05', '徐寒黎', '2015-11-16 12:00', '[办公室审批]', '290002', '病假', '恩准了', '2015-11-16 10:33:16', '徐寒黎', null, null, null, '钱坤', 'uscileave-1');

-- ----------------------------
-- Table structure for sys_mobilerandom
-- ----------------------------
DROP TABLE IF EXISTS `sys_mobilerandom`;
CREATE TABLE `sys_mobilerandom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobileRandom` varchar(50) DEFAULT NULL,
  `moduleId` int(11) DEFAULT NULL,
  `moduleName` varchar(30) DEFAULT NULL,
  `moduleState` varchar(20) DEFAULT NULL,
  `userName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_mobilerandom
-- ----------------------------
INSERT INTO `sys_mobilerandom` VALUES ('25', '201510281321233kJZlucS9q', '10', '请假', '[办公室审批]', '钱坤');
INSERT INTO `sys_mobilerandom` VALUES ('26', '20151028132308E4WxD79gJe', '10', '请假', '[总经理审批]', '王建伟');
INSERT INTO `sys_mobilerandom` VALUES ('27', '20151028132806DcKHcbpr59', '11', '请假', '[部门管理审批]', '黄龙');
INSERT INTO `sys_mobilerandom` VALUES ('30', '20151116102806sY0Dj7OxzO', '13', '请假', '[部门管理审批]', '徐寒黎');
INSERT INTO `sys_mobilerandom` VALUES ('31', '2015111610313665qU5JihFR', '12', '请假', '[部门管理审批]', '黄龙');
INSERT INTO `sys_mobilerandom` VALUES ('32', '20151116103317ZJnriRk4pO', '13', '请假', '[办公室审批]', '钱坤');
INSERT INTO `sys_mobilerandom` VALUES ('34', '201511261616320srSMwnvNQ', '12', '请假', '[办公室审批]', '钱坤');

-- ----------------------------
-- Table structure for sys_mobile_rights
-- ----------------------------
DROP TABLE IF EXISTS `sys_mobile_rights`;
CREATE TABLE `sys_mobile_rights` (
  `id` int(11) NOT NULL,
  `isLeaf` bit(1) NOT NULL COMMENT '是否为叶子',
  `jspPage` varchar(30) DEFAULT NULL,
  `moduleName` varchar(20) NOT NULL COMMENT '模块名称',
  `moduleUrl` varchar(45) DEFAULT NULL COMMENT '模块URL',
  `rights` varchar(255) DEFAULT NULL COMMENT '拥有哪些权限',
  `updateTime` varchar(30) DEFAULT NULL COMMENT '更新时间',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点ID',
  `rightSort` int(11) DEFAULT NULL,
  UNIQUE KEY `moduleName` (`moduleName`),
  UNIQUE KEY `jspPage` (`jspPage`),
  UNIQUE KEY `moduleUrl` (`moduleUrl`),
  KEY `FK202CD62A755178C3` (`parent_id`),
  CONSTRAINT `sys_mobile_rights_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `sys_right` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_mobile_rights
-- ----------------------------
INSERT INTO `sys_mobile_rights` VALUES ('30', '', 'reportissue.jsp', '产前报告发放', 'reportissue!modulepage', '打印,发短信,快递,查看,批量快递,导出快递,下载,导出客户信息,检索,更改状态,更改打印状态,删除,仅下载,发送邮件,更改邮件状态', '', '27', null);
INSERT INTO `sys_mobile_rights` VALUES ('68', '', 'tumourreportreview.jsp', '肿瘤审核', 'tumourreportreview!modulepage', '查看,客服部审核,质量部审核,错误记录,导出错误记录,无权限', '', '28', null);
INSERT INTO `sys_mobile_rights` VALUES ('69', '', 'tumourreportissue.jsp', '肿瘤报告发放', 'tumourreportissue!modulepage', '检索,打印标签,导出客户信息,打印,查看,批量快递,导出快递,下载,更改打印状态,仅下载,删除,推送回访,发送邮件,更改邮件状态', '', '27', null);

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL COMMENT '描述',
  `posName` varchar(30) DEFAULT NULL COMMENT '职位名称',
  `updateTime` varchar(30) DEFAULT NULL,
  `departmentId` int(11) NOT NULL COMMENT '部门ID',
  `deptId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC3DB625B2E230FC8` (`departmentId`),
  CONSTRAINT `FKC3DB625B2E230FC8` FOREIGN KEY (`departmentId`) REFERENCES `sys_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_position
-- ----------------------------
INSERT INTO `sys_position` VALUES ('1', 'java', 'java工程师', '2015-08-19 13:55:15', '6', '6');
INSERT INTO `sys_position` VALUES ('2', 'php', 'php工程师', '2015-08-19 13:55:15', '6', '6');
INSERT INTO `sys_position` VALUES ('3', 'android00', 'android工程师', '2015-08-30 16:38:55', '6', '6');
INSERT INTO `sys_position` VALUES ('4', '', 'IT总监', '2015-09-01 11:04:16', '6', '6');
INSERT INTO `sys_position` VALUES ('5', '', '副总裁', '2015-09-06 17:40:56', '12', '12');
INSERT INTO `sys_position` VALUES ('6', '\n', 'COO', '2015-09-06 17:41:15', '12', '12');
INSERT INTO `sys_position` VALUES ('7', '', '行政助理', '2015-09-06 17:41:44', '12', '12');
INSERT INTO `sys_position` VALUES ('8', '', '总监', '2015-09-06 17:46:28', '26', '26');
INSERT INTO `sys_position` VALUES ('9', '', '人事专员', '2015-09-06 17:46:50', '26', '26');
INSERT INTO `sys_position` VALUES ('10', '', '经理', '2015-09-06 17:47:03', '23', '23');
INSERT INTO `sys_position` VALUES ('11', '', '出纳', '2015-09-06 17:47:14', '23', '23');
INSERT INTO `sys_position` VALUES ('12', '', '主管', '2015-09-06 17:47:55', '16', '16');
INSERT INTO `sys_position` VALUES ('13', '', '客服', '2015-09-06 17:48:09', '16', '16');
INSERT INTO `sys_position` VALUES ('14', '', '总监', '2015-09-06 17:48:21', '17', '17');
INSERT INTO `sys_position` VALUES ('15', '', '产品经理', '2015-09-06 17:48:39', '17', '17');
INSERT INTO `sys_position` VALUES ('16', '', '助理', '2015-09-06 17:48:52', '17', '17');
INSERT INTO `sys_position` VALUES ('17', '', '主任', '2015-09-06 17:49:04', '18', '18');
INSERT INTO `sys_position` VALUES ('18', '', '总监', '2015-09-06 17:49:20', '18', '18');
INSERT INTO `sys_position` VALUES ('19', '', '研发', '2015-09-06 17:49:39', '18', '18');
INSERT INTO `sys_position` VALUES ('20', '', '上机主管', '2015-09-06 17:50:05', '18', '18');
INSERT INTO `sys_position` VALUES ('21', '', '项目主管', '2015-09-06 17:50:22', '18', '18');
INSERT INTO `sys_position` VALUES ('22', '', '上机工程师', '2015-09-06 17:50:40', '18', '18');
INSERT INTO `sys_position` VALUES ('23', '', '实验员', '2015-09-06 17:50:52', '18', '18');
INSERT INTO `sys_position` VALUES ('24', '', '总监', '2015-09-06 17:51:03', '19', '19');
INSERT INTO `sys_position` VALUES ('25', '', 'QA', '2015-09-06 17:51:21', '19', '19');
INSERT INTO `sys_position` VALUES ('26', '', 'QC', '2015-09-06 17:52:11', '19', '19');
INSERT INTO `sys_position` VALUES ('27', '', '总监', '2015-09-06 17:52:35', '20', '20');
INSERT INTO `sys_position` VALUES ('28', '', '生物信息工程师', '2015-09-06 17:52:53', '20', '20');
INSERT INTO `sys_position` VALUES ('29', '', '统计建模工程师', '2015-09-06 17:53:32', '20', '20');
INSERT INTO `sys_position` VALUES ('30', '', '运维工程师', '2015-09-06 17:53:55', '20', '20');
INSERT INTO `sys_position` VALUES ('31', '', '测试', '2015-09-06 17:54:27', '6', '6');
INSERT INTO `sys_position` VALUES ('32', '', '经理', '2015-09-06 17:54:43', '21', '21');
INSERT INTO `sys_position` VALUES ('33', '', '市场专员', '2015-09-06 17:55:01', '21', '21');
INSERT INTO `sys_position` VALUES ('34', '', '平面设计', '2015-09-06 17:55:21', '21', '21');
INSERT INTO `sys_position` VALUES ('35', '', '网页设计', '2015-09-06 17:55:36', '21', '21');
INSERT INTO `sys_position` VALUES ('36', '', '会计', '2015-09-06 17:55:49', '23', '23');
INSERT INTO `sys_position` VALUES ('37', '', '采购', '2015-09-06 17:56:01', '24', '24');
INSERT INTO `sys_position` VALUES ('38', '', '主任', '2015-09-06 18:00:12', '12', '12');
INSERT INTO `sys_position` VALUES ('39', '', '董事长', '2015-09-07 08:37:12', '11', '11');
INSERT INTO `sys_position` VALUES ('40', '', '总裁', '2015-09-18 17:35:02', '12', '12');
INSERT INTO `sys_position` VALUES ('41', '', '商务经理', '2016-07-05 11:09:48', '27', '27');
INSERT INTO `sys_position` VALUES ('42', '天津胸科', '天津胸科', '2016-07-08 12:24:32', '28', '28');
INSERT INTO `sys_position` VALUES ('43', '', '商务专员', '2016-07-13 10:27:09', '27', '27');
INSERT INTO `sys_position` VALUES ('44', '', 'CTO', '2017-02-24 13:27:06', '29', '29');

-- ----------------------------
-- Table structure for sys_right
-- ----------------------------
DROP TABLE IF EXISTS `sys_right`;
CREATE TABLE `sys_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isLeaf` bit(1) NOT NULL COMMENT '是否为叶子',
  `jspPage` varchar(30) DEFAULT NULL,
  `moduleName` varchar(20) NOT NULL COMMENT '模块名称',
  `moduleUrl` varchar(45) DEFAULT NULL COMMENT '模块URL',
  `rights` varchar(255) DEFAULT NULL COMMENT '拥有哪些权限',
  `updateTime` varchar(30) DEFAULT NULL COMMENT '更新时间',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点ID',
  `rightSort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `moduleName` (`moduleName`),
  UNIQUE KEY `jspPage` (`jspPage`),
  UNIQUE KEY `moduleUrl` (`moduleUrl`),
  KEY `FK202CD62A755178C3` (`parent_id`),
  CONSTRAINT `FK202CD62A755178C3` FOREIGN KEY (`parent_id`) REFERENCES `sys_right` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_right
-- ----------------------------
INSERT INTO `sys_right` VALUES ('1', '\0', null, '系统管理', null, null, '2015-08-17 11:58:50', null, '5');
INSERT INTO `sys_right` VALUES ('2', '', 'usermanage.jsp', '用户管理', 'user!modulepage', '查看,添加,修改,删除', '2015-08-17 11:58:51', '1', null);
INSERT INTO `sys_right` VALUES ('3', '', 'rolemanage.jsp', '角色管理', 'role!modulepage', '查看,添加,修改,删除', '2015-08-17 11:58:51', '1', null);
INSERT INTO `sys_right` VALUES ('4', '', 'deparment.jsp', '部门管理', 'department!modulepage', '添加,修改', '2015-08-17 11:58:51', '1', null);
INSERT INTO `sys_right` VALUES ('5', '\0', null, '个人工具', null, null, '2015-08-17 11:58:51', null, '6');
INSERT INTO `sys_right` VALUES ('6', '', 'schedule.jsp', '待办任务', 'schedule!modulepage', null, '2015-08-17 11:58:51', '9', null);
INSERT INTO `sys_right` VALUES ('7', '', 'scheduleread.jsp', '已办任务', 'schedule!scheduleread', null, '2015-08-17 11:58:51', '9', null);
INSERT INTO `sys_right` VALUES ('8', '', 'positionmanage.jsp', '职位管理', 'position!modulepage', '添加,修改', null, '1', null);
INSERT INTO `sys_right` VALUES ('9', '\0', null, '待办事项', null, null, null, '5', null);
INSERT INTO `sys_right` VALUES ('10', '', 'addressbook.jsp', '通讯录', 'user!addressbook', null, null, '11', null);
INSERT INTO `sys_right` VALUES ('11', '\0', null, '通讯录管理', null, null, null, null, '7');
INSERT INTO `sys_right` VALUES ('12', '', 'departmentuser.jsp', '组织机构', 'department!deptuser', null, null, '1', null);
INSERT INTO `sys_right` VALUES ('13', '\0', null, '日常办公', null, null, null, null, '8');
INSERT INTO `sys_right` VALUES ('14', '\0', null, '单据管理', null, null, null, '13', null);
INSERT INTO `sys_right` VALUES ('15', '', 'uscileave.jsp', '请假单', 'leave!modulepage', null, null, '14', null);
INSERT INTO `sys_right` VALUES ('16', '', null, '出差单', 'evection!modulepage', null, null, '14', null);
INSERT INTO `sys_right` VALUES ('17', '\0', null, '生产管理系统', null, null, null, null, '1');
INSERT INTO `sys_right` VALUES ('18', '\0', null, '样本中心', null, null, null, '17', '1');
INSERT INTO `sys_right` VALUES ('19', '\0', null, '样本入库', null, null, null, '18', null);
INSERT INTO `sys_right` VALUES ('20', '', 'outsample.jsp', '外来入库', 'outsample!modulepage', '查看,添加,修改,批量添加,导出Excel,手动推送,推送产前报告,高级搜索,导出信息,添加异常', null, '19', null);
INSERT INTO `sys_right` VALUES ('21', '\0', null, '项目管理', null, null, null, '17', '2');
INSERT INTO `sys_right` VALUES ('22', '\0', null, '客服补录', null, null, null, '105', null);
INSERT INTO `sys_right` VALUES ('23', '', 'customerinforms.jsp', '临床信息补录', 'customerinforms!modulepage', '查看,添加,修改,上传,导出EXCEL,高级搜索', null, '22', null);
INSERT INTO `sys_right` VALUES ('24', '\0', null, '信息中心', null, null, null, '17', '10');
INSERT INTO `sys_right` VALUES ('25', '\0', null, '分析结果反馈', null, null, null, '24', null);
INSERT INTO `sys_right` VALUES ('26', '', 'analysisresult.jsp', 'NIPT结果反馈', 'analysisresult!modulepage', '查看,添加,修改,批量添加,生成报告,批量修改,导出Excel', null, '144', null);
INSERT INTO `sys_right` VALUES ('27', '\0', null, '报告管理', null, null, null, '17', '12');
INSERT INTO `sys_right` VALUES ('28', '\0', null, '报告审核', null, null, null, '27', null);
INSERT INTO `sys_right` VALUES ('29', '', 'reportreview.jsp', '产前审核', 'reportreview!modulepage', '查看,审核,错误记录,导出错误记录,中山二院邮件提醒', null, '28', null);
INSERT INTO `sys_right` VALUES ('30', '', 'reportissue.jsp', '产前报告发放', 'reportissue!modulepage', '打印,发短信,快递,查看,批量快递,导出快递,下载,导出客户信息,检索,更改状态,更改打印状态,删除,仅下载,发送邮件,更改邮件状态', null, '27', null);
INSERT INTO `sys_right` VALUES ('31', '\0', null, '库房', null, null, null, '17', '14');
INSERT INTO `sys_right` VALUES ('32', '', 'roomreagent.jsp', '试剂管理', 'roomreagent!modulepage', '查看,添加试剂,修改试剂,增量,用量', null, '31', null);
INSERT INTO `sys_right` VALUES ('33', '', 'attendance.jsp', '考勤', 'attendance!modulepage', '查看,上传', null, '13', null);
INSERT INTO `sys_right` VALUES ('34', '\0', null, '预处理', null, null, null, '18', null);
INSERT INTO `sys_right` VALUES ('35', '', 'pretreatment.jsp', '预处理任务单', 'pretreatment!modulepage', '查看,下单', null, '34', null);
INSERT INTO `sys_right` VALUES ('36', '', 'pretreatment_feedback.jsp', '预处理反馈', 'pretreatmentfeedback!modulepage', '查看,反馈', null, '34', null);
INSERT INTO `sys_right` VALUES ('37', '\0', null, '核酸', null, null, null, '17', '4');
INSERT INTO `sys_right` VALUES ('38', '', 'nucleicacids.jsp', '核酸任务单', 'nucleicacids!modulepage', '查看,下单,撤销', null, '37', null);
INSERT INTO `sys_right` VALUES ('39', '', 'nucleicacids_feedback.jsp', '核酸反馈', 'nucleicacidsdetails!modulepage', '查看,反馈', null, '37', null);
INSERT INTO `sys_right` VALUES ('40', '\0', null, '建库', null, null, null, '17', '5');
INSERT INTO `sys_right` VALUES ('41', '', 'buildlibraries.jsp', '建库任务单', 'buildlibraries!modulepage', '查看,下单', null, '40', null);
INSERT INTO `sys_right` VALUES ('42', '', 'buildlibraries_feedback.jsp', '建库反馈', 'buildlibrariesdetails!modulepage', '查看,反馈', null, '40', null);
INSERT INTO `sys_right` VALUES ('43', '\0', null, '2100', null, null, null, '17', '6');
INSERT INTO `sys_right` VALUES ('44', '', 'biologicalanalyzer.jsp', '2100任务单', 'biologicalanalyzer!modulepage', '查看,下单', null, '43', null);
INSERT INTO `sys_right` VALUES ('45', '', 'biologyanalyzer_feedback.jsp', '2100反馈', 'biologicalanalyzerdetails!modulepage', '查看,反馈', null, '43', null);
INSERT INTO `sys_right` VALUES ('46', '\0', null, 'QPCR', null, null, null, '17', '7');
INSERT INTO `sys_right` VALUES ('47', '', 'qpcr.jsp', 'QPCR任务单', 'qpcr!modulepage', '查看,下单', null, '46', null);
INSERT INTO `sys_right` VALUES ('48', '', 'qpcr_feedback.jsp', 'QPCR反馈', 'qpcrdetails!modulepage', '查看,反馈', null, '46', null);
INSERT INTO `sys_right` VALUES ('49', '\0', null, '上机', null, null, null, '17', '8');
INSERT INTO `sys_right` VALUES ('50', '', 'biologicalcomputer.jsp', '上机任务单', 'biologicalcomputer!modulepage', '查看,下单', null, '49', null);
INSERT INTO `sys_right` VALUES ('51', '', 'biologycomputer_feedback.jsp', '上机反馈', 'biologicalcomputerdetails!modulepage', '查看,反馈', null, '49', null);
INSERT INTO `sys_right` VALUES ('52', '', 'experimentalabnormal.jsp', '实验异常处理', 'experimentalabnormal!modulepage', '产前处理,删除,补数据,肿瘤处理,上传照片,高级搜索,导出EXCEL,延期通知', null, '17', '9');
INSERT INTO `sys_right` VALUES ('53', '', 'sampletrack.jsp', '产前样本进度查询', 'sampletrack!modulepage', '查看,查看报告及快递,高级搜索', null, '17', '15');
INSERT INTO `sys_right` VALUES ('54', '', 'sampletracksimplify.jsp', '产前样本阶段查询', 'sampletrack!modulepagesample', '查看,高级搜索', null, '17', '16');
INSERT INTO `sys_right` VALUES ('55', '', 'alzheimerdisease.jsp', 'AD分析结果反馈', 'alzheimerdisease!modulepage', '查看,添加,修改', null, '75', null);
INSERT INTO `sys_right` VALUES ('56', '', 'projectinfomation.jsp', '任务下单', 'projectinfomation!modulepage', '查看,下单', null, '62', null);
INSERT INTO `sys_right` VALUES ('57', '', 'check.jsp', '产前客服信息补录', 'samplechild!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部', null, '22', '1');
INSERT INTO `sys_right` VALUES ('58', '', 'loadnum.jsp', '订单号录入', 'samplejd!loadnum', '查看,录入', null, '21', null);
INSERT INTO `sys_right` VALUES ('59', '', 'alzheimer.jsp', 'AD审核', 'alzheimer!modulepage', '查看,审核', null, '28', null);
INSERT INTO `sys_right` VALUES ('60', '', 'aezcheck.jsp', 'AD客服信息补录', 'sampleaezchild!modulepage', '查看,上传图片,一录,二录,一审,二审', null, '22', '23');
INSERT INTO `sys_right` VALUES ('61', '\0', null, '项目立项', null, null, null, '21', null);
INSERT INTO `sys_right` VALUES ('62', '\0', null, '项目立子项', null, null, null, '61', null);
INSERT INTO `sys_right` VALUES ('63', '', 'newcheck.jsp', '产前客服补录管理', 'samplechild!newcheck', '查看,修改,导出Excel,下载日志,高级搜索,NIPT信息下载,修改图片', null, '22', '2');
INSERT INTO `sys_right` VALUES ('64', '', 'checkhospital.jsp', '送检医院', 'checkhospital!modulepage', '查看,添加,修改', null, '22', '25');
INSERT INTO `sys_right` VALUES ('65', '', 'tumourana.jsp', '肿瘤60基因结果反馈', 'tumourana!modulepage', '查看,反馈,批量添加,修改状态', null, '145', null);
INSERT INTO `sys_right` VALUES ('66', '', 'tumourread.jsp', '肿瘤60基因解读', 'tumourread!modulepage', '查看,解读,下载word,上传PDF,发送邮件,数据过滤', null, '75', null);
INSERT INTO `sys_right` VALUES ('67', '', 'tumouranamultiannolib.jsp', '靶药解读库', 'multiannolib!multiannolib', '添加,修改,批量添加,导出EXCEL,删除,检索,克隆', null, '76', null);
INSERT INTO `sys_right` VALUES ('68', '', 'tumourreportreview.jsp', '肿瘤审核', 'tumourreportreview!modulepage', '查看,客服部审核,质量部审核,错误记录,导出错误记录,无权限', null, '28', null);
INSERT INTO `sys_right` VALUES ('69', '', 'tumourreportissue.jsp', '肿瘤报告发放', 'tumourreportissue!modulepage', '检索,打印标签,导出客户信息,打印,查看,批量快递,导出快递,下载,更改打印状态,仅下载,删除,推送回访,发送邮件,更改邮件状态', null, '27', null);
INSERT INTO `sys_right` VALUES ('70', '', 'tumourtemporary.jsp', '肿瘤60基因临时补录', 'tumourtemporary!modulepage', '查看,添加,修改,删除', null, '22', '24');
INSERT INTO `sys_right` VALUES ('71', '', 'tumouranachemicaldruglib.jsp', '化药解读库', 'chemicaldruglib!chemicaldruglib', '添加,修改,批量添加,导出EXCEL,删除', null, '76', null);
INSERT INTO `sys_right` VALUES ('72', '', 'tumouranafusionfinallib.jsp', '靶药融合解读库', 'fusionfinallib!fusionfinallib', '添加,修改,批量添加,导出EXCEL,删除,检索', null, '76', null);
INSERT INTO `sys_right` VALUES ('73', '', 'tumouranageneandtumourlib.jsp', '基因肿瘤解读库', 'genedetectionresultprompt!geneandtumour', '添加,修改,批量添加,导出EXCEL,删除', null, '76', null);
INSERT INTO `sys_right` VALUES ('74', '\0', null, '遗传解读', null, null, null, '17', '11');
INSERT INTO `sys_right` VALUES ('75', '\0', null, '报告解读', null, null, null, '74', null);
INSERT INTO `sys_right` VALUES ('76', '\0', null, '解读库管理', null, null, null, '74', null);
INSERT INTO `sys_right` VALUES ('77', '', 'codeprint.jsp', '条码下载', 'codeprint!modulepage', '批量下载,添加,修改,批量添加,导出EXCEL,删除', null, '5', null);
INSERT INTO `sys_right` VALUES ('78', '', 'resamplingnotice.jsp', '重取样通知', 'resamplingnotice!modulepage', '查看,客服Excel,客服批量,重取样通知,更新,项目管理Excel,项目管理批量', null, '22', '22');
INSERT INTO `sys_right` VALUES ('79', '', 'samplingmakeup.jsp', '产前重取样补录', 'samplingmakeup!modulepage', '查看,添加,导出EXCEL,修改', null, '22', '21');
INSERT INTO `sys_right` VALUES ('80', '', 'meetingdiscuss.jsp', '信息中心开会讨论', 'meetingdiscuss!modulepage', '查看,开会讨论', null, '24', null);
INSERT INTO `sys_right` VALUES ('81', '', 'multianmedicinelib.jsp', '靶药药物介绍库', 'multianmedicinelib!modulepage', '查看,添加,修改', null, '76', null);
INSERT INTO `sys_right` VALUES ('82', '', 'salescontacts.jsp', '产前销售通讯录', 'salescontacts!modulepage', '查看,添加,修改,省市县', null, '83', null);
INSERT INTO `sys_right` VALUES ('83', '\0', null, '产前', null, null, null, '106', null);
INSERT INTO `sys_right` VALUES ('84', '', 'sendsample.jsp', '寄送样(内部)', 'sendsample!modulepage', '查看,添加,修改,全部,检索,今寄,导出,代理商结算,医院结算,修改结算,补发票,退款,补款', null, '83', null);
INSERT INTO `sys_right` VALUES ('85', '', 'sendsamplewai.jsp', '产前寄送样(客服部)', 'sendsample!waibu', '查看,添加,修改,全部,检索,今寄,导出,代理商结算,医院结算,修改结算,补发票,退款', null, '105', null);
INSERT INTO `sys_right` VALUES ('86', '', 'safecheck.jsp', '保险单管理', 'samplesafejd!modulepage', '上传图片,录入数据,编辑,删除图片,下载Excel,修改图片', null, '224', null);
INSERT INTO `sys_right` VALUES ('87', '\0', null, '天津胸科医院病理科', null, null, null, null, '9');
INSERT INTO `sys_right` VALUES ('88', '', 'tjxkcheck.jsp', '受检者信息', 'sampletjxkjd!modulepage', '天津胸科医院病理科', null, '87', null);
INSERT INTO `sys_right` VALUES ('89', '', 'ytcheck.jsp', '优替补录', 'sampleytjd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部,删除记录', null, '22', '5');
INSERT INTO `sys_right` VALUES ('90', '', 'newytcheck.jsp', '优替补录管理', 'sampleytchild!newcheck', '查看,修改,导出EXCEL,下载日志', null, '22', '6');
INSERT INTO `sys_right` VALUES ('91', '\0', null, '客服回访', null, null, null, '105', null);
INSERT INTO `sys_right` VALUES ('92', '', 'partonezhu.jsp', '预产期回访未完成', 'partonezhu!modulepage', '回访,批量线下报告,补充报告,高级搜索', null, '91', null);
INSERT INTO `sys_right` VALUES ('93', '', 'partoneoverzhu.jsp', '预产期回访已完成', 'partonezhu!wanchengzhu', '查看,导出Excel,高级搜索', null, '91', null);
INSERT INTO `sys_right` VALUES ('94', '', 'parttwozhu.jsp', '高风险回访未完成', 'parttwozhu!modulepage', '回访,导出Excel,高级搜索', null, '91', null);
INSERT INTO `sys_right` VALUES ('95', '', 'parttwooverzhu.jsp', '高风险回访已完成', 'parttwozhu!wanchengzhu', '查看,导出Excel,高级搜索', null, '91', null);
INSERT INTO `sys_right` VALUES ('96', '', 'pretreatment_manage.jsp', '预处理管理', 'pretreatmentmanage!modulepage', '查看,导出excel,搜索,高级搜索', null, '34', null);
INSERT INTO `sys_right` VALUES ('97', '', 'outsamplecount.jsp', '入库统计', 'countsample!modulepage', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('98', '', 'nucleicacidscount.jsp', '提取统计', 'countsample!nuclecount', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('99', '', 'buildlibrariescount.jsp', '建库统计', 'countsample!buildcount', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('100', '', 'reportissuecount.jsp', '报告发放统计', 'countsample!reportcount', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('101', '', 'deferredsample.jsp', '延期样本', 'deferredsample!modulepage', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('102', '', 'pmorder.jsp', '项目管理下单', 'pmorder!modulepage', '查看,下单,下载BGI,导出客户信息', null, '21', null);
INSERT INTO `sys_right` VALUES ('103', '\0', null, '查询与统计', null, null, null, null, '4');
INSERT INTO `sys_right` VALUES ('104', '', 'pmmain.jsp', '项目管理主页2', 'pmmain!modulepage', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('105', '\0', null, '客服', null, null, null, '17', '3');
INSERT INTO `sys_right` VALUES ('106', '\0', null, '销售管理', null, null, null, '17', '13');
INSERT INTO `sys_right` VALUES ('107', '', 'personmanagerofxxgl.jsp', '信息分析人员管理', 'personmanagerofxxgl!modulepage', '查看,添加,修改,删除', null, '74', null);
INSERT INTO `sys_right` VALUES ('108', '', 'personmanagerofycjd.jsp', '遗传解读人员管理', 'personmanagerofycjd!modulepage', '查看,添加,修改,删除', null, '74', null);
INSERT INTO `sys_right` VALUES ('109', '', 'tumproduct.jsp', '产品管理', 'tumproduct!modulepage', '查看,添加,修改', null, '74', null);
INSERT INTO `sys_right` VALUES ('110', '', 'tumpackage.jsp', '套餐和模板', 'tumpackage!modulepage', '查看,添加,修改', null, '74', null);
INSERT INTO `sys_right` VALUES ('111', '', 'sendcqcount.jsp', '产前未添寄样', 'salesstatistics!sendcqcount', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('112', '', 'sendzscount.jsp', '寄样日期不同统计', 'salesstatistics!sendzscount', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('113', '', '21list.jsp', '21基因补录', 'heredity21jd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部', null, '22', '11');
INSERT INTO `sys_right` VALUES ('114', '', '21manage.jsp', '21基因补录管理', 'heredity21child!jy21manage', '查看,修改,导出Excel,下载日志', null, '22', '12');
INSERT INTO `sys_right` VALUES ('115', '', 'msilist.jsp', 'MSI补录', 'hereditymsijd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部', null, '22', '13');
INSERT INTO `sys_right` VALUES ('116', '', 'msimanage.jsp', 'MSI补录管理', 'hereditymsichild!msimanage', '查看,修改,导出Excel,下载日志', null, '22', '14');
INSERT INTO `sys_right` VALUES ('117', '', 'yxlist.jsp', '优旭补录', 'heredityyxjd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部,删除记录', null, '22', '9');
INSERT INTO `sys_right` VALUES ('118', '', 'yxmanage.jsp', '优旭补录管理', 'heredityyxchild!yxmanage', '查看,修改,导出Excel,下载日志', null, '22', '10');
INSERT INTO `sys_right` VALUES ('119', '', 'yylist.jsp', '优逸补录', 'heredityyyjd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部', null, '22', '7');
INSERT INTO `sys_right` VALUES ('120', '', 'yymanage.jsp', '优逸补录管理', 'heredityyychild!yymanage', '查看,修改,导出Excel,下载日志', null, '22', '8');
INSERT INTO `sys_right` VALUES ('121', '\0', null, '肿瘤', null, null, null, '106', null);
INSERT INTO `sys_right` VALUES ('122', '', 'tumoursalescontacts.jsp', '肿瘤销售通讯录', 'tumoursalescontacts!modulepage', '查看,添加,修改', null, '121', null);
INSERT INTO `sys_right` VALUES ('123', '', 'tumoursendsample.jsp', '肿瘤寄送样(内部)', 'tumoursendsample!modulepage', '查看,添加,修改,查看全部,检索,今日寄样,导出,宁莎导出,结算,补发票,退款', null, '121', null);
INSERT INTO `sys_right` VALUES ('124', '', 'prenatalcustomer.jsp', '优馨安临床信息', 'prenatalcustomer!modulepage', '高级搜索,导出excel', null, '103', null);
INSERT INTO `sys_right` VALUES ('125', '', 'biologicalanalyzer_manage.jsp', '2100管理', 'biologicalanalyzermanage!modulepage', '查看,导出excel,搜索,高级搜索', null, '43', null);
INSERT INTO `sys_right` VALUES ('126', '', 'qpcr_manage.jsp', 'QPCR管理', 'qpcrmanage!modulepage', '查看,导出excel,搜索,高级搜索', null, '46', null);
INSERT INTO `sys_right` VALUES ('127', '', 'nucleicacids_manage.jsp', '核酸管理', 'nucleicacidsmanage!modulepage', '查看,导出excel,搜索,高级搜索', null, '37', null);
INSERT INTO `sys_right` VALUES ('128', '', 'buildlibraries_manage.jsp', '建库管理', 'buildlibrariesmanage!modulepage', '查看,导出excel,搜索,高级搜索', null, '40', null);
INSERT INTO `sys_right` VALUES ('129', '', 'biologycomputer_manage.jsp', '上机管理', 'biologicalcomputermanage!modulepage', '查看,导出excel,搜索,高级搜索', null, '49', null);
INSERT INTO `sys_right` VALUES ('132', '\0', null, '数据拆分', null, null, null, '24', null);
INSERT INTO `sys_right` VALUES ('133', '', 'abnormalrecording.jsp', '数据拆分质控异常记录', 'abnormalrecording!modulepage', '查看,反馈', null, '132', null);
INSERT INTO `sys_right` VALUES ('134', '', 'analyticalqualityzhu.jsp', 'NIPT分析质控', 'analyticalqualitycontrolzhu!modulepage', '查看', null, '144', null);
INSERT INTO `sys_right` VALUES ('135', '', 'biologicalcomputerinfozhu.jsp', '上机信息单', 'biologicalcomputerinfozhu!modulepage', '查看,核查,上传信息单', null, '49', null);
INSERT INTO `sys_right` VALUES ('136', '', 'chromosomeofzzhu.jsp', '全部染色体Z值', 'chromosomeofzzhu!modulepage', '查看', null, '144', null);
INSERT INTO `sys_right` VALUES ('137', '', 'datasplitproject.jsp', '数据拆分整体记录', 'datasplitproject!modulepage', '查看', null, '132', null);
INSERT INTO `sys_right` VALUES ('138', '', 'nitpabnormalzhu.jsp', 'NIPT质控异常记录', 'nitpabnormalzhu!modulepage', '查看,处理', null, '144', null);
INSERT INTO `sys_right` VALUES ('139', '', 'nitpofpositivezhu.jsp', 'NIPT所有阳性记录', 'nitpofpositivezhu!modulepage', '查看,生信处理', null, '144', null);
INSERT INTO `sys_right` VALUES ('140', '', 'nitpproject.jsp', 'NIPT整体记录', 'nitpproject!modulepage', '查看,修改,高级搜索,导出Excel', null, '144', null);
INSERT INTO `sys_right` VALUES ('141', '', 'statisticssplitzhu.jsp', '数据拆分质控', 'statisticssplitzhu!modulepage', '查看', null, '132', null);
INSERT INTO `sys_right` VALUES ('143', '', 'gslist1.jsp', '产前信息对比', 'generalsql!gssql1', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('144', '\0', null, 'NIPT', null, null, null, '24', null);
INSERT INTO `sys_right` VALUES ('145', '\0', null, 'TD_V2', null, null, null, '24', null);
INSERT INTO `sys_right` VALUES ('146', '', 'reverificationzhu.jsp', 'NIPTQC批次重复验证', 'reverificationzhu!modulepage', '查看,质控', null, '144', null);
INSERT INTO `sys_right` VALUES ('147', '', 'hospitalclassify.jsp', '医院归类', 'hospitalclassify!modulepage', '医院归类', null, '83', null);
INSERT INTO `sys_right` VALUES ('148', '', 'msiinfocount.jsp', 'MSI信息统计', 'hereditymsichild!infocount', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('149', '', 'jy21infocount.jsp', '21基因信息统计', 'heredity21child!infocount', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('150', '', 'analyse.jsp', '优逸分析结果反馈', 'analyse!modulepage', '查看,反馈,批量添加,撤销', null, '25', null);
INSERT INTO `sys_right` VALUES ('151', '', 'analyseread.jsp', '优逸解读', 'analyseread!modulepage', '查看,解读,下载word,上传pdf,发送邮件,数据过滤', null, '75', null);
INSERT INTO `sys_right` VALUES ('152', '', 'analyselib.jsp', '优逸解读库', 'analyselib!modulepage', '查看,添加,修改,批量添加,导出EXCEL,删除,复制', null, '76', null);
INSERT INTO `sys_right` VALUES ('153', '', 'diseaselib.jsp', '优逸疾病库', 'disease!modulepage', '查看,添加,修改,删除', null, '76', null);
INSERT INTO `sys_right` VALUES ('154', '', 'genelib.jsp', '优逸基因库', 'gene!modulepage', '查看,添加,修改,删除', null, '76', null);
INSERT INTO `sys_right` VALUES ('155', '', 'tongji.jsp', '肿瘤寄送样统计', 'tumoursendsample!tongji', null, null, '121', null);
INSERT INTO `sys_right` VALUES ('156', '', 'procreateline.jsp', '生育线总体概况', 'countsample!procreate', null, null, '83', null);
INSERT INTO `sys_right` VALUES ('157', '', 'waitcheck.jsp', '客服主页', 'sampleytjd!waitcheck', '查看详情,导出Excel', null, '105', null);
INSERT INTO `sys_right` VALUES ('158', '', 'list.jsp', '肿瘤补录', 'knubjd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部', null, '22', '3');
INSERT INTO `sys_right` VALUES ('159', '', 'manage.jsp', '肿瘤补录管理', 'knubchild!manage', '查看,修改,导出Excel,下载日志,高级搜索,修改图片,上传病理报告', null, '22', '4');
INSERT INTO `sys_right` VALUES ('160', '', 'tumoursendsamplewai.jsp', '肿瘤寄送样(客服部)', 'tumoursendsample!waibu', '查看,添加,修改,查看全部,检索,今日寄样,导出,宁莎导出,结算,补发票,退款', null, '105', null);
INSERT INTO `sys_right` VALUES ('161', '', 'youxinanSalersStatus.jsp', '优馨安销售状态统计', 'countsample!youxinanSalersStatus', null, null, '83', null);
INSERT INTO `sys_right` VALUES ('162', '', 'indexmanager.jsp', 'index管理', 'indexmanager!modulepage', '查看,修改', null, '40', null);
INSERT INTO `sys_right` VALUES ('163', '', 'reportpersonalization.jsp', '报告个性化', 'reportpersonalization!modulepage', '查看,添加,修改,删除', null, '27', null);
INSERT INTO `sys_right` VALUES ('164', '', 'youxinanxsrb.jsp', '优馨安销售日报', 'countsample!youxinanxsrb', null, null, '83', null);
INSERT INTO `sys_right` VALUES ('167', '', 'jyctcinfocount.jsp', 'CTC寄送样信息', 'heredityctcchild!modulepage', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('168', '', 'khctcinfocount.jsp', 'CTC客户信息', 'hereditykhctcchild!modulepage', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('170', '\0', null, '体检', null, null, null, '106', null);
INSERT INTO `sys_right` VALUES ('171', '', 'tijiansalescontacts.jsp', '体检销售通讯录', 'tijiansalescontacts!modulepage', '查看,添加,修改', null, '170', null);
INSERT INTO `sys_right` VALUES ('172', '', 'tijiansendsample.jsp', '体检寄送样(内部)', 'tijiansendsample!modulepage', '查看,添加,修改,查看全部,高级搜索,今日寄样,导出Excel,补开发票,退款申请,二次付款', null, '170', null);
INSERT INTO `sys_right` VALUES ('173', '', 'tijiansendsamplewai.jsp', '体检寄送样(外部)', 'tijiansendsample!waibu', '查看,添加,修改,查看全部,高级搜索,今日寄样,导出Excel,补开发票,退款申请,二次付款', null, '170', null);
INSERT INTO `sys_right` VALUES ('174', '', 'accessdesclib.jsp', '通路描述库', 'accessdesclib!modulepage', '添加,修改,删除', null, '76', null);
INSERT INTO `sys_right` VALUES ('175', '', 'accessmedicinelib.jsp', '通路药物库', 'accessmedicinelib!modulepage', '添加,修改,删除,上传图片', null, '76', null);
INSERT INTO `sys_right` VALUES ('176', '', 'chemicaldruglib549.jsp', '549化药解读库', 'chemicaldruglib549!modulepage', '添加,修改,删除', null, '76', null);
INSERT INTO `sys_right` VALUES ('177', '', 'zsyy.jsp', '中山二院审核', 'reportreview!zsyy', '查看,审核,导出excel,审核完毕,数据审核', null, '28', null);
INSERT INTO `sys_right` VALUES ('178', '\0', null, '库房管理', null, null, null, null, '2');
INSERT INTO `sys_right` VALUES ('179', '', 'storagemain.jsp', '库房主页', 'storagemain!modulepage', '查看,入库,审核,出库,调拨,返库,未使用回收,高级搜索,报损,报废,损坏回收利用,库存预警,到期预警,滞留预警', null, '178', null);
INSERT INTO `sys_right` VALUES ('180', '', 'outgoapply.jsp', '出库申请', 'outgoapply!modulepage', '查看,申请,修改,撤回,发货表明细,高级搜索', null, '178', null);
INSERT INTO `sys_right` VALUES ('181', '', 'exuserecord.jsp', '实验使用登记', 'exuserecord!modulepage', '查看,添加,修改,删除', null, '178', null);
INSERT INTO `sys_right` VALUES ('182', '', 'checkstorage.jsp', '库房盘点', 'checkstorage!modulepage', '查看,新建库房盘点,新建人员盘点,反馈盘库结果', null, '178', null);
INSERT INTO `sys_right` VALUES ('183', '', 'classify.jsp', '分类管理', 'classify!modulepage', '查看,添加,修改', null, '178', null);
INSERT INTO `sys_right` VALUES ('184', '', 'stockRecord.jsp', '存货档案', 'stockrecord!modulepage', '查看,添加,修改,归类,高级搜索', null, '178', null);
INSERT INTO `sys_right` VALUES ('185', '', 'storageroom.jsp', '库房设置', 'storageroom!modulepage', '查看,添加,修改', null, '178', null);
INSERT INTO `sys_right` VALUES ('186', '', 'storageperson.jsp', '库管人员设置', 'storageperson!modulepage', '查看,添加,修改,删除', null, '178', null);
INSERT INTO `sys_right` VALUES ('187', '', 'batchmanage.jsp', '批次管理', 'batchmanage!modulepage', '查看,添加,修改,删除', null, '178', null);
INSERT INTO `sys_right` VALUES ('188', '', 'applypersonright.jsp', '申请人权限设置', 'applypersonright!modulepage', '查看,添加,修改,删除', null, '178', null);
INSERT INTO `sys_right` VALUES ('189', '', 'warndifference.jsp', '物品警戒值差异设置', 'warndifference!modulepage', '查看,添加,修改,删除', null, '178', null);
INSERT INTO `sys_right` VALUES ('190', '\0', null, '财务系统', null, null, null, null, '3');
INSERT INTO `sys_right` VALUES ('191', '', 'transfer.jsp', '财审', 'financetransfer!modulepage', '查看,审核,修改,本次财审结束,导出,批量更新,未审核,高级搜索', null, '190', '1');
INSERT INTO `sys_right` VALUES ('192', '', 'settlement.jsp', '结算', 'financesettlement!modulepage', '查看,上传,结算,高级搜索', null, '190', '2');
INSERT INTO `sys_right` VALUES ('193', '', 'invoice.jsp', '开发票', 'financeinvoice!modulepage', '查看,审核,开票,重开,批量更新,修改,发票信息,高级搜索,开票信息', null, '190', '3');
INSERT INTO `sys_right` VALUES ('194', '', 'refund.jsp', '部门确认退款', 'financerefund!modulepage', '查看,项目管理确认,实验领导确认,高级搜索', null, '190', '4');
INSERT INTO `sys_right` VALUES ('195', '', 'finance_refund.jsp', '退款', 'financerefund!pagelist', '查看,审核,高级搜索', null, '190', '6');
INSERT INTO `sys_right` VALUES ('196', '', 'report.jsp', '报表', 'financereport!modulepage', '查看,导出,高级搜索', null, '190', '7');
INSERT INTO `sys_right` VALUES ('197', '', 'yxylist.jsp', '染色体异常补录', 'sampleyxyjd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部', null, '22', '15');
INSERT INTO `sys_right` VALUES ('198', '', 'yxymanage.jsp', '染色体异常补录管理', 'sampleyxychild!manage', '查看,修改,导出Excel,下载日志,高级搜索,NIPT信息下载,修改图片', null, '22', '16');
INSERT INTO `sys_right` VALUES ('199', '\0', null, '重大项目管理', null, null, null, '21', null);
INSERT INTO `sys_right` VALUES ('200', '', 'projectmanagerzhu.jsp', '重大项目管理主页', 'projectmanagerzhu!modulepage', '查看详情,立项,变更,结项,更新立项书,延期未交付,变更审核,延期审批,完工交付确认', null, '199', null);
INSERT INTO `sys_right` VALUES ('201', '', 'projectstagedetailzhu.jsp', '阶段详情', 'projectstagedetailzhu!modulepage', '启动项目,查看详情,阶段成果汇报,延期申请,阶段完工交付', null, '199', null);
INSERT INTO `sys_right` VALUES ('202', '', 'xd_refund.jsp', '事业部审核退款', 'financerefund!xdpage', '查看,审核,高级搜索', null, '190', '5');
INSERT INTO `sys_right` VALUES ('203', '', 'giftcardcompanyinfo.jsp', '工会信息', 'giftcardcompanyinfo!modulepage', '查看,添加,修改', null, '170', null);
INSERT INTO `sys_right` VALUES ('204', '', 'giftcardpackge.jsp', '样本信息', 'giftcardpackge!modulepage', '查看,添加,修改,上传报告,高级搜索,导出,导出2', null, '170', null);
INSERT INTO `sys_right` VALUES ('205', '', 'thlist.jsp', '地贫补录', 'samplethjd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部', null, '22', '17');
INSERT INTO `sys_right` VALUES ('206', '', 'thmanage.jsp', '地贫补录管理', 'samplethchild!manage', '查看,修改,导出Excel,下载日志,高级搜索,修改图片', null, '22', '18');
INSERT INTO `sys_right` VALUES ('207', '', 'tumourreportreview_show.jsp', '肿瘤审核-查看', 'tumourreportreview!onlyshow', '查看,全部,上传报告,过滤', null, '28', null);
INSERT INTO `sys_right` VALUES ('208', '', 'inheriteddiseases.jsp', '新生儿遗传代谢病48项检测报告', 'inheriteddiseases!modulepage', '上传Excel,下载word', null, '75', null);
INSERT INTO `sys_right` VALUES ('209', '', 'reportissuecyclecount.jsp', '报告发放周期统计', 'countreportcycle!procreate', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('210', '', 'courier.jsp', '快递到件预警', 'courier!modulepage', '修改,隐藏,查看', null, '103', null);
INSERT INTO `sys_right` VALUES ('211', '', 'suit.jsp', '套装管理', 'storagesuit!modulepage', '查看,添加,修改,删除', null, '178', null);
INSERT INTO `sys_right` VALUES ('212', '', 'rukurecord.jsp', '入库记录', 'storagemain!rukurecord', '查看', null, '178', null);
INSERT INTO `sys_right` VALUES ('213', '', 'fankurecord.jsp', '返库记录', 'storagemain!fankurecord', '查看', null, '178', null);
INSERT INTO `sys_right` VALUES ('214', '', 'yxacount.jsp', '产前项目管理对接查询', 'projoint!procreate', '高级搜索,导出excel', null, '103', null);
INSERT INTO `sys_right` VALUES ('218', '', 'ytcount.jsp', '肿瘤线项目管理对接查询', 'tumorytjoint!procreate', '高级搜索,导出excel', null, '103', null);
INSERT INTO `sys_right` VALUES ('219', '', 'thamaresult.jsp', '地贫结果反馈', 'thamaresult!modulepage', '导入EXCEL,生成报告,上传报告,上传pdf报告', null, '24', null);
INSERT INTO `sys_right` VALUES ('220', '', 'operate.jsp', '更新日志', 'operate!modulepage', '查看,添加,修改,高级搜索,批量添加', null, '5', null);
INSERT INTO `sys_right` VALUES ('221', '', 'ytyxinterpretation.jsp', '优替优旭解读优先级', 'ytyxinterpretation!modulepage', '修改,导出EXCEL,高级搜索,项目管理修改', null, '74', null);
INSERT INTO `sys_right` VALUES ('222', '', 'yyinterpretation.jsp', '优逸解读优先级', 'yyinterpretation!modulepage', '修改,导出EXCEL,高级搜索,项目管理修改', null, '74', null);
INSERT INTO `sys_right` VALUES ('223', '', 'newsafecheck.jsp', '新保险单管理', 'newsamplesafe!modulepage', '上传图片,录入数据,编辑,删除图片,下载Excel,修改图片', null, '224', null);
INSERT INTO `sys_right` VALUES ('224', '\0', null, '保险单', null, null, null, '105', null);
INSERT INTO `sys_right` VALUES ('225', '', 'ytcountns.jsp', '肿瘤线项目管理对接查询-宁莎', 'tumorytjoint!procreatens', '高级搜索,导出excel', null, '103', null);
INSERT INTO `sys_right` VALUES ('226', '\0', 'managementcockpit.jsp', '管理驾驶舱', null, null, null, null, '10');
INSERT INTO `sys_right` VALUES ('227', '', 'youxun.jsp', '优迅航母', '1', null, null, '226', null);
INSERT INTO `sys_right` VALUES ('228', '', 'zhongliu.jsp', '肿瘤一号', '2', null, null, '226', null);
INSERT INTO `sys_right` VALUES ('229', '', 'shengyu.jsp', '生育一号', '3', null, null, '226', null);
INSERT INTO `sys_right` VALUES ('230', '', 'unboxing.jsp', '开箱检验', 'unboxingexpress!modulepage', '查看,开箱,修改,删除,内控表明细,物料表明细,高级搜索,样本统计,今日样本统计', null, '178', null);
INSERT INTO `sys_right` VALUES ('231', '', 'twooneresult.jsp', '21基因结果反馈', 'twooneresult!modulepage', '批量添加,生成报告,上传图片', null, '24', null);
INSERT INTO `sys_right` VALUES ('232', '', 'msiresult.jsp', 'MSI基因结果反馈', 'msiresult!modulepage', '上传文件,下载word', null, '24', null);
INSERT INTO `sys_right` VALUES ('233', '', 'tumorpersonalization.jsp', '肿瘤报告个性化', 'tumorpersonalization!modulepage', '查看,添加,修改,删除', null, '27', null);
INSERT INTO `sys_right` VALUES ('234', '', 'tumourpmorder.jsp', '肿瘤项目管理下单', 'tumourpmorder!modulepage', '查看,下单,高级搜索', null, '21', null);
INSERT INTO `sys_right` VALUES ('235', '\0', null, '肿瘤提取', null, null, null, '37', null);
INSERT INTO `sys_right` VALUES ('236', '', 'tumourextraction.jsp', '提取下单', 'tumourextraction!modulepage', '查看,下单', null, '235', null);
INSERT INTO `sys_right` VALUES ('237', '', 'tumourextraction_feedback.jsp', '提取反馈', 'tumourextractiondetails!modulepage', '查看,反馈,审核', null, '235', null);
INSERT INTO `sys_right` VALUES ('238', '\0', null, '肿瘤建库', null, null, null, '40', null);
INSERT INTO `sys_right` VALUES ('239', '', 'tumourbuild.jsp', '肿瘤建库下单', 'tumourbuild!modulepage', '查看,下单', null, '238', null);
INSERT INTO `sys_right` VALUES ('240', '', 'tumourbuild_feedback.jsp', '肿瘤建库反馈', 'tumourbuilddetails!modulepage', '查看,反馈', null, '238', null);
INSERT INTO `sys_right` VALUES ('241', '\0', null, '肿瘤杂交', null, null, null, '40', null);
INSERT INTO `sys_right` VALUES ('242', '', 'tumourhybrid.jsp', '杂交下单', 'tumourhybrid!modulepage', '查看,下单', null, '241', null);
INSERT INTO `sys_right` VALUES ('243', '', 'tumourhybrid_feedback.jsp', '杂交反馈', 'tumourhybriddetails!modulepage', '查看,反馈,审核', null, '241', null);
INSERT INTO `sys_right` VALUES ('244', '', 'pregnant.jsp', '孕产期信息补录', 'pregnantjd!modulepage', '上传图片,一录,二录,一审,二审,删除,查看一审,查看二审,全部', null, '22', '19');
INSERT INTO `sys_right` VALUES ('245', '', 'pmanage.jsp', '孕产期补录管理', 'pregnantchild!manage', '查看,修改,导出Excel,下载日志,高级搜索,修改图片', null, '22', '20');
INSERT INTO `sys_right` VALUES ('246', '', 'nitpdateselect.jsp', 'NIPT信息分析查询', 'chromosomeofz!nitpselect', null, null, '144', null);
INSERT INTO `sys_right` VALUES ('247', '', 'yesuanresult.jsp', '叶酸检测结果反馈', 'yesuanresult!modulepage', '上传文件,下载word,上传pdf', null, '24', null);
INSERT INTO `sys_right` VALUES ('248', '', 'projectAntenatal.jsp', '项目管理-产前', 'countsample!projectAntenatal', null, null, '103', null);
INSERT INTO `sys_right` VALUES ('249', '', 'yxyreportpersonalization.jsp', '生育线报告个性化', 'yxyreportpersonalization!modulepage', '查看,添加,修改,删除', null, '27', null);
INSERT INTO `sys_right` VALUES ('250', '', 'yxyreportreview.jsp', '生育线报告审核', 'yxyreportreview!modulepage', '查看,客服部审核,质量部审核,删除,错误记录,导出错误记录', null, '28', null);
INSERT INTO `sys_right` VALUES ('251', '', 'yxyreportissue.jsp', '生育线报告发放', 'yxyreportissue!modulepage', '打印,快递补录,查看,批量快递,导出快递,下载,导出客户信息,检索,更改打印状态,删除,仅下载,发送邮件,更改邮件状态', null, '27', null);
INSERT INTO `sys_right` VALUES ('252', '', 'bgilist.jsp', 'BGI合作项目信息补录', 'samplebgijd!modulepage', '上传送检单,送检单补录,上传报告,报告补录,高级搜索,删除,统计', null, '22', null);
INSERT INTO `sys_right` VALUES ('253', '', 'yxyanalyse.jsp', '优馨益分析结果反馈', 'yxyanalyse!modulepage', '查看,批量添加,反馈', null, '24', null);
INSERT INTO `sys_right` VALUES ('254', '', 'yxyresult.jsp', '优馨益解读', 'yxyresult!modulepage', '查看,解读,下载word,上传pdf,发送邮件,数据过滤,撤销', null, '75', null);
INSERT INTO `sys_right` VALUES ('255', '', 'unboxing_sample.jsp', '开箱样本统计', '', '查看,高级搜索', null, '177', null);
INSERT INTO `sys_right` VALUES ('256', '', 'yyzhu.jsp', '优逸随访未完成', 'yyhf!modulepage', '随访,高级搜索', null, '260', null);
INSERT INTO `sys_right` VALUES ('257', '', 'yyoverzhu.jsp', '优逸随访已完成', 'yyhf!wanchengzhu', '查看,高级搜索,更改随访状态', null, '260', null);
INSERT INTO `sys_right` VALUES ('258', '', 'utilizationRate.jsp', '物料使用率', 'unboxingexpress!utilization', null, null, '177', null);
INSERT INTO `sys_right` VALUES ('259', '', 'code2province.jsp', '地区代码归类', 'codetoprovince!modulepage', '查看,归类,修改,全部', null, '177', null);
INSERT INTO `sys_right` VALUES ('260', '\0', null, '客户随访', null, null, null, '17', '17');
INSERT INTO `sys_right` VALUES ('261', '', 'yourui.jsp', '优睿一号', '4', null, null, '226', null);
INSERT INTO `sys_right` VALUES ('262', '', 'piliang.jsp', '优逸批量添加', 'piliang!modulepage', null, null, '5', null);
INSERT INTO `sys_right` VALUES ('263', '', 'yxyinterpretation.jsp', '优馨益解读优先级', 'yxyinterpretation!modulepage', '修改,导出EXCEL,高级搜索,项目管理修改', null, '74', null);
INSERT INTO `sys_right` VALUES ('264', '', 'yxyreportreview_show.jsp', '生育线审核-查看', 'yxyreportreview!onlyshow', '查看,全部,上传报告,过滤', null, '28', null);
INSERT INTO `sys_right` VALUES ('265', '', 'samplefailure.jsp', '失败样本推送', 'samplefailure!modulepage', '推送,删除', null, '19', null);
INSERT INTO `sys_right` VALUES ('266', '', 'cqpiliang.jsp', '优馨安批量添加', 'cqpiliang!modulepage', null, null, '5', null);
INSERT INTO `sys_right` VALUES ('267', '', 'bindingDetails.jsp', '优逸小癌种', 'bindingdetails!modulepage', '查看,上传报告,高级搜索,导出', null, '170', null);
INSERT INTO `sys_right` VALUES ('268', '', 'tumsamplingmakeup.jsp', '肿瘤重送样补录', 'tumsamplingmakeup!modulepage', '查看,添加,导出EXCEL,修改', null, '22', '26');
INSERT INTO `sys_right` VALUES ('269', '\0', null, 'lims报告结果汇总', null, null, null, '103', null);
INSERT INTO `sys_right` VALUES ('270', '\0', null, '肿瘤线报告', null, null, null, '269', null);
INSERT INTO `sys_right` VALUES ('271', '\0', null, '生育线报告', null, null, null, '269', null);
INSERT INTO `sys_right` VALUES ('272', '', 'countmsi.jsp', 'MSI报告', 'countmsi!modulepage', '高级搜索,导出Excel', null, '270', null);
INSERT INTO `sys_right` VALUES ('273', '', 'counttwoone.jsp', '21基因报告', 'counttwoone!modulepage', '高级搜索,导出Excel', null, '270', null);
INSERT INTO `sys_right` VALUES ('274', '', 'countyesuan.jsp', '叶酸代谢报告', 'countyesuan!modulepage', '高级搜索,导出Excel', null, '271', null);
INSERT INTO `sys_right` VALUES ('275', '', 'countyxy.jsp', '染色体异常报告', 'countyxy!modulepage', '高级搜索,导出Excel', null, '271', null);
INSERT INTO `sys_right` VALUES ('276', '', 'countthama.jsp', '地中海贫血报告', 'countthama!modulepage', '高级搜索,导出Excel', null, '271', null);
INSERT INTO `sys_right` VALUES ('277', '', 'tjpmorder.jsp', '体检线项目管理下单', 'tjpmorder!modulepage', '查看,下单,高级搜索', null, '21', null);
INSERT INTO `sys_right` VALUES ('278', '', 'sypmorder.jsp', '生育线项目管理下单', 'sypmorder!modulepage', '查看,下单,高级搜索', null, '21', null);
INSERT INTO `sys_right` VALUES ('279', '', 'countyt.jsp', '优替/优旭报告', 'countyt!modulepage', '高级搜索,导出Excel,反馈', null, '270', null);
INSERT INTO `sys_right` VALUES ('280', '', 'countyy.jsp', '优逸报告', 'countyy!modulepage', '高级搜索,导出Excel', null, '270', null);
INSERT INTO `sys_right` VALUES ('281', '', 'abnormalsample.jsp', '异常样本', 'abnormalsample!modulepage', '查看,修改,项目管理处理,样本中心确认,高级搜索,导出', null, '19', null);
INSERT INTO `sys_right` VALUES ('282', '', 'ledger.jsp', '报告台账', 'financeledger!modulepage', '查看,高级搜索,导出', null, '190', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(80) NOT NULL COMMENT '描述',
  `isSysNeeded` bit(1) NOT NULL COMMENT '是否为系统必须',
  `roleName` varchar(30) NOT NULL COMMENT '角色名称',
  `updateTime` varchar(30) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roleName` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'LIMS系统最高权限管理者', '', '超级管理员', '2015-08-17 11:59:08');
INSERT INTO `sys_role` VALUES ('2', '失效用户', '', '失效用户', '2017-03-17');
INSERT INTO `sys_role` VALUES ('5', 'excel', '', '实验—样本组长', '2017-04-28');
INSERT INTO `sys_role` VALUES ('7', '查询与统计', '', 'MSI21基因统计', '2016-12-20');
INSERT INTO `sys_role` VALUES ('9', 'ad产品经理', '', '市场部——AD产品经理', '2017-04-25');
INSERT INTO `sys_role` VALUES ('12', '包含（批量添加，修改，导出excel）', '', '生信——产前分析专员', '2016-05-04');
INSERT INTO `sys_role` VALUES ('15', 'excel', '', '质量总监&生产总监', '2017-04-28');
INSERT INTO `sys_role` VALUES ('16', 'excel', '', '实验—项目管理', '2017-04-28');
INSERT INTO `sys_role` VALUES ('20', '2100、QPCR所有权限，上机的反馈功能', '', '实验中心——测序工程师', '2016-07-12');
INSERT INTO `sys_role` VALUES ('24', '拥有送检医院、销售通讯录、寄样（内部）、寄样（外部），部分统计，查询与统计——生育线\n', '', '生育事业部', '2017-04-25');
INSERT INTO `sys_role` VALUES ('25', '天津胸科', '', '天津胸科', '2016-07-08 12:24:59');
INSERT INTO `sys_role` VALUES ('28', '', '', '生信—总监', '2016-08-30 17:03:10');
INSERT INTO `sys_role` VALUES ('32', 'ad核酸反馈，ad分析', '', '实验中心——AD分析专员', '2017-04-25');
INSERT INTO `sys_role` VALUES ('34', '', '', '肿瘤事业部——肿瘤寄样', '2017-04-25');
INSERT INTO `sys_role` VALUES ('38', 'excel', '', '质量部——质量专员', '2017-04-28');
INSERT INTO `sys_role` VALUES ('39', 'excel', '', '实验—样本组员', '2017-04-28');
INSERT INTO `sys_role` VALUES ('40', 'excel', '', '实验—生育—提取建库组长', '2017-04-28');
INSERT INTO `sys_role` VALUES ('41', 'excel\n', '', '实验—生育—提取建库组员', '2017-04-28');
INSERT INTO `sys_role` VALUES ('42', 'excel', '', '实验—库检上机组长', '2017-04-28');
INSERT INTO `sys_role` VALUES ('43', 'excel', '', '实验—库检上机组员', '2017-04-28');
INSERT INTO `sys_role` VALUES ('61', 'excel', '', '实验—报告审核员', '2017-04-28');
INSERT INTO `sys_role` VALUES ('64', 'excel', '', '实验—生产经理', '2017-04-28');
INSERT INTO `sys_role` VALUES ('71', '客服excel', '', '客服—录入专员', '2017-04-28 14:07:11');
INSERT INTO `sys_role` VALUES ('72', '客服excel', '', '客服—录入组长', '2017-04-28 14:10:54');
INSERT INTO `sys_role` VALUES ('73', '客服excel', '', '客服—异常处理', '2017-04-28 14:17:26');
INSERT INTO `sys_role` VALUES ('74', '客服excel', '', '客服—销售日报', '2017-04-28 14:20:52');
INSERT INTO `sys_role` VALUES ('75', '客服excel', '', '客服—高风险回访', '2017-04-28 14:21:49');
INSERT INTO `sys_role` VALUES ('76', '客服excel', '', '客服—客户咨询', '2017-04-28 14:24:08');
INSERT INTO `sys_role` VALUES ('77', '客服excel', '', '客服—咨询主管', '2017-04-28 14:26:51');
INSERT INTO `sys_role` VALUES ('78', '客服excel', '', '客服—报告发放', '2017-04-28 14:32:03');
INSERT INTO `sys_role` VALUES ('79', '客服excel', '', '客服—报告组长', '2017-04-28 14:36:08');
INSERT INTO `sys_role` VALUES ('80', '客服excel', '', '客服—物流专员', '2017-04-28 14:39:41');
INSERT INTO `sys_role` VALUES ('81', '客服excel', '', '客服—物流主管', '2017-04-28 14:42:00');
INSERT INTO `sys_role` VALUES ('82', '客服excel', '', '客服—客服经理', '2017-04-28 14:43:27');
INSERT INTO `sys_role` VALUES ('83', '客服excel', '', '客服—客服总监', '2017-04-28 14:49:17');
INSERT INTO `sys_role` VALUES ('84', '', '', '钟夏角色', '2017-05-05 12:01:36');
INSERT INTO `sys_role` VALUES ('85', 'excel', '', '生信工程师-生产-生育', '2017-05-09 14:21:32');
INSERT INTO `sys_role` VALUES ('86', '实验相关的查询与统计权限\n', '', '临时添加', '2017-05-09 14:21:46');
INSERT INTO `sys_role` VALUES ('87', 'excel', '', '遗传咨询总监', '2017-05-15 11:37:46');
INSERT INTO `sys_role` VALUES ('88', 'excel\n', '', '遗传咨询高级主管', '2017-05-15 11:44:07');
INSERT INTO `sys_role` VALUES ('89', 'excel\n', '', '遗传咨询主管-肿瘤', '2017-05-15 11:47:29');
INSERT INTO `sys_role` VALUES ('90', 'excel\n', '', '遗传咨询师-肿瘤', '2017-05-15 11:50:12');
INSERT INTO `sys_role` VALUES ('91', 'excel\n', '', '遗传咨询主管-遗传易感', '2017-05-15 11:51:26');
INSERT INTO `sys_role` VALUES ('92', 'excel\n', '', '遗传咨询师-遗传易感', '2017-05-15 11:52:44');
INSERT INTO `sys_role` VALUES ('93', 'excel\n', '', '遗传咨询师-科研', '2017-05-15 11:53:48');
INSERT INTO `sys_role` VALUES ('94', 'excel', '', '生物信息总监', '2017-05-15 11:56:10');
INSERT INTO `sys_role` VALUES ('95', 'excel', '', '生信工程师-生产-拆分', '2017-05-15 11:57:59');
INSERT INTO `sys_role` VALUES ('96', 'excel', '', '生信工程师-生产-肿瘤', '2017-05-15 12:00:57');
INSERT INTO `sys_role` VALUES ('97', 'excel', '', '生信工程师-生产-遗传易感', '2017-05-15 12:02:48');
INSERT INTO `sys_role` VALUES ('98', '', '', '三标认证临时需要', '2017-05-19 17:09:29');
INSERT INTO `sys_role` VALUES ('99', '', '', '中山二院', '2017-05-31 17:39:08');
INSERT INTO `sys_role` VALUES ('100', '系统管理除外的所有权限', '', '伪超级管理员', '2017-06-01 13:05:50');
INSERT INTO `sys_role` VALUES ('101', '库房的所有权限', '', '库房管理', '2017-06-08 10:33:25');
INSERT INTO `sys_role` VALUES ('102', '', '', '生育线库房滞留预警', '2017-06-14 09:42:58');
INSERT INTO `sys_role` VALUES ('103', '卫计委检查', '', '卫计委检查', '2017-07-14 13:58:37');
INSERT INTO `sys_role` VALUES ('104', '', '', '研发—总监', '2017-07-26 17:10:28');
INSERT INTO `sys_role` VALUES ('105', '', '', '研发—项目管理', '2017-07-27 15:37:28');
INSERT INTO `sys_role` VALUES ('106', '', '', '研发—阶段负责人', '2017-07-27 15:37:44');
INSERT INTO `sys_role` VALUES ('107', '寄样到出报告', '', '测试', '2017-08-15 13:13:40');
INSERT INTO `sys_role` VALUES ('108', '', '', '手机端', '2017-08-30 13:34:29');
INSERT INTO `sys_role` VALUES ('109', '', '', '实验—肿瘤—提取建库', '2017-10-10 09:24:52');
INSERT INTO `sys_role` VALUES ('110', '', '', 'NIPT结果反馈', '2017-10-30 10:06:35');
INSERT INTO `sys_role` VALUES ('111', '', '', '优逸回访', '2017-11-10 10:07:53');
INSERT INTO `sys_role` VALUES ('112', '', '', '优逸批量添加', '2017-11-21 15:55:56');
INSERT INTO `sys_role` VALUES ('113', '', '', '地贫年审', '2017-11-30 14:50:18');
INSERT INTO `sys_role` VALUES ('114', '标准版模块', '', '演示系统', '2018-03-16 15:59:39');

-- ----------------------------
-- Table structure for sys_role_sys_right
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_sys_right`;
CREATE TABLE `sys_role_sys_right` (
  `sys_role_id` int(11) NOT NULL COMMENT '角色ID',
  `rights_id` int(11) NOT NULL COMMENT '权限ID',
  KEY `FKDEF351539C71D476` (`rights_id`),
  KEY `FKDEF3515356C0C1D1` (`sys_role_id`),
  CONSTRAINT `FKDEF3515356C0C1D1` FOREIGN KEY (`sys_role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FKDEF351539C71D476` FOREIGN KEY (`rights_id`) REFERENCES `sys_right` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_sys_right
-- ----------------------------
INSERT INTO `sys_role_sys_right` VALUES ('25', '87');
INSERT INTO `sys_role_sys_right` VALUES ('25', '88');
INSERT INTO `sys_role_sys_right` VALUES ('9', '17');
INSERT INTO `sys_role_sys_right` VALUES ('9', '18');
INSERT INTO `sys_role_sys_right` VALUES ('9', '19');
INSERT INTO `sys_role_sys_right` VALUES ('9', '20');
INSERT INTO `sys_role_sys_right` VALUES ('9', '27');
INSERT INTO `sys_role_sys_right` VALUES ('9', '28');
INSERT INTO `sys_role_sys_right` VALUES ('9', '37');
INSERT INTO `sys_role_sys_right` VALUES ('9', '39');
INSERT INTO `sys_role_sys_right` VALUES ('9', '55');
INSERT INTO `sys_role_sys_right` VALUES ('9', '59');
INSERT INTO `sys_role_sys_right` VALUES ('9', '74');
INSERT INTO `sys_role_sys_right` VALUES ('9', '75');
INSERT INTO `sys_role_sys_right` VALUES ('7', '103');
INSERT INTO `sys_role_sys_right` VALUES ('7', '148');
INSERT INTO `sys_role_sys_right` VALUES ('7', '149');
INSERT INTO `sys_role_sys_right` VALUES ('34', '17');
INSERT INTO `sys_role_sys_right` VALUES ('34', '106');
INSERT INTO `sys_role_sys_right` VALUES ('34', '121');
INSERT INTO `sys_role_sys_right` VALUES ('34', '122');
INSERT INTO `sys_role_sys_right` VALUES ('34', '123');
INSERT INTO `sys_role_sys_right` VALUES ('34', '155');
INSERT INTO `sys_role_sys_right` VALUES ('20', '17');
INSERT INTO `sys_role_sys_right` VALUES ('20', '43');
INSERT INTO `sys_role_sys_right` VALUES ('20', '44');
INSERT INTO `sys_role_sys_right` VALUES ('20', '45');
INSERT INTO `sys_role_sys_right` VALUES ('20', '46');
INSERT INTO `sys_role_sys_right` VALUES ('20', '47');
INSERT INTO `sys_role_sys_right` VALUES ('20', '48');
INSERT INTO `sys_role_sys_right` VALUES ('20', '49');
INSERT INTO `sys_role_sys_right` VALUES ('20', '51');
INSERT INTO `sys_role_sys_right` VALUES ('20', '135');
INSERT INTO `sys_role_sys_right` VALUES ('28', '17');
INSERT INTO `sys_role_sys_right` VALUES ('28', '24');
INSERT INTO `sys_role_sys_right` VALUES ('28', '26');
INSERT INTO `sys_role_sys_right` VALUES ('28', '49');
INSERT INTO `sys_role_sys_right` VALUES ('28', '65');
INSERT INTO `sys_role_sys_right` VALUES ('28', '103');
INSERT INTO `sys_role_sys_right` VALUES ('28', '124');
INSERT INTO `sys_role_sys_right` VALUES ('28', '132');
INSERT INTO `sys_role_sys_right` VALUES ('28', '133');
INSERT INTO `sys_role_sys_right` VALUES ('28', '134');
INSERT INTO `sys_role_sys_right` VALUES ('28', '135');
INSERT INTO `sys_role_sys_right` VALUES ('28', '136');
INSERT INTO `sys_role_sys_right` VALUES ('28', '137');
INSERT INTO `sys_role_sys_right` VALUES ('28', '138');
INSERT INTO `sys_role_sys_right` VALUES ('28', '139');
INSERT INTO `sys_role_sys_right` VALUES ('28', '140');
INSERT INTO `sys_role_sys_right` VALUES ('28', '141');
INSERT INTO `sys_role_sys_right` VALUES ('28', '144');
INSERT INTO `sys_role_sys_right` VALUES ('28', '145');
INSERT INTO `sys_role_sys_right` VALUES ('28', '146');
INSERT INTO `sys_role_sys_right` VALUES ('12', '17');
INSERT INTO `sys_role_sys_right` VALUES ('12', '24');
INSERT INTO `sys_role_sys_right` VALUES ('12', '26');
INSERT INTO `sys_role_sys_right` VALUES ('12', '49');
INSERT INTO `sys_role_sys_right` VALUES ('12', '65');
INSERT INTO `sys_role_sys_right` VALUES ('12', '103');
INSERT INTO `sys_role_sys_right` VALUES ('12', '124');
INSERT INTO `sys_role_sys_right` VALUES ('12', '132');
INSERT INTO `sys_role_sys_right` VALUES ('12', '133');
INSERT INTO `sys_role_sys_right` VALUES ('12', '134');
INSERT INTO `sys_role_sys_right` VALUES ('12', '135');
INSERT INTO `sys_role_sys_right` VALUES ('12', '136');
INSERT INTO `sys_role_sys_right` VALUES ('12', '137');
INSERT INTO `sys_role_sys_right` VALUES ('12', '138');
INSERT INTO `sys_role_sys_right` VALUES ('12', '139');
INSERT INTO `sys_role_sys_right` VALUES ('12', '140');
INSERT INTO `sys_role_sys_right` VALUES ('12', '141');
INSERT INTO `sys_role_sys_right` VALUES ('12', '144');
INSERT INTO `sys_role_sys_right` VALUES ('12', '145');
INSERT INTO `sys_role_sys_right` VALUES ('12', '146');
INSERT INTO `sys_role_sys_right` VALUES ('24', '17');
INSERT INTO `sys_role_sys_right` VALUES ('24', '22');
INSERT INTO `sys_role_sys_right` VALUES ('24', '64');
INSERT INTO `sys_role_sys_right` VALUES ('24', '82');
INSERT INTO `sys_role_sys_right` VALUES ('24', '83');
INSERT INTO `sys_role_sys_right` VALUES ('24', '84');
INSERT INTO `sys_role_sys_right` VALUES ('24', '85');
INSERT INTO `sys_role_sys_right` VALUES ('24', '103');
INSERT INTO `sys_role_sys_right` VALUES ('24', '105');
INSERT INTO `sys_role_sys_right` VALUES ('24', '106');
INSERT INTO `sys_role_sys_right` VALUES ('24', '111');
INSERT INTO `sys_role_sys_right` VALUES ('24', '112');
INSERT INTO `sys_role_sys_right` VALUES ('24', '147');
INSERT INTO `sys_role_sys_right` VALUES ('24', '156');
INSERT INTO `sys_role_sys_right` VALUES ('24', '161');
INSERT INTO `sys_role_sys_right` VALUES ('2', '13');
INSERT INTO `sys_role_sys_right` VALUES ('32', '17');
INSERT INTO `sys_role_sys_right` VALUES ('32', '24');
INSERT INTO `sys_role_sys_right` VALUES ('32', '25');
INSERT INTO `sys_role_sys_right` VALUES ('32', '37');
INSERT INTO `sys_role_sys_right` VALUES ('32', '39');
INSERT INTO `sys_role_sys_right` VALUES ('32', '55');
INSERT INTO `sys_role_sys_right` VALUES ('32', '74');
INSERT INTO `sys_role_sys_right` VALUES ('32', '75');
INSERT INTO `sys_role_sys_right` VALUES ('38', '17');
INSERT INTO `sys_role_sys_right` VALUES ('38', '21');
INSERT INTO `sys_role_sys_right` VALUES ('38', '24');
INSERT INTO `sys_role_sys_right` VALUES ('38', '26');
INSERT INTO `sys_role_sys_right` VALUES ('38', '27');
INSERT INTO `sys_role_sys_right` VALUES ('38', '28');
INSERT INTO `sys_role_sys_right` VALUES ('38', '29');
INSERT INTO `sys_role_sys_right` VALUES ('38', '37');
INSERT INTO `sys_role_sys_right` VALUES ('38', '38');
INSERT INTO `sys_role_sys_right` VALUES ('38', '39');
INSERT INTO `sys_role_sys_right` VALUES ('38', '40');
INSERT INTO `sys_role_sys_right` VALUES ('38', '41');
INSERT INTO `sys_role_sys_right` VALUES ('38', '42');
INSERT INTO `sys_role_sys_right` VALUES ('38', '43');
INSERT INTO `sys_role_sys_right` VALUES ('38', '44');
INSERT INTO `sys_role_sys_right` VALUES ('38', '45');
INSERT INTO `sys_role_sys_right` VALUES ('38', '46');
INSERT INTO `sys_role_sys_right` VALUES ('38', '47');
INSERT INTO `sys_role_sys_right` VALUES ('38', '48');
INSERT INTO `sys_role_sys_right` VALUES ('38', '49');
INSERT INTO `sys_role_sys_right` VALUES ('38', '50');
INSERT INTO `sys_role_sys_right` VALUES ('38', '51');
INSERT INTO `sys_role_sys_right` VALUES ('38', '83');
INSERT INTO `sys_role_sys_right` VALUES ('38', '85');
INSERT INTO `sys_role_sys_right` VALUES ('38', '102');
INSERT INTO `sys_role_sys_right` VALUES ('38', '106');
INSERT INTO `sys_role_sys_right` VALUES ('38', '125');
INSERT INTO `sys_role_sys_right` VALUES ('38', '126');
INSERT INTO `sys_role_sys_right` VALUES ('38', '127');
INSERT INTO `sys_role_sys_right` VALUES ('38', '128');
INSERT INTO `sys_role_sys_right` VALUES ('38', '129');
INSERT INTO `sys_role_sys_right` VALUES ('38', '132');
INSERT INTO `sys_role_sys_right` VALUES ('38', '133');
INSERT INTO `sys_role_sys_right` VALUES ('38', '134');
INSERT INTO `sys_role_sys_right` VALUES ('38', '135');
INSERT INTO `sys_role_sys_right` VALUES ('38', '136');
INSERT INTO `sys_role_sys_right` VALUES ('38', '137');
INSERT INTO `sys_role_sys_right` VALUES ('38', '138');
INSERT INTO `sys_role_sys_right` VALUES ('38', '139');
INSERT INTO `sys_role_sys_right` VALUES ('38', '140');
INSERT INTO `sys_role_sys_right` VALUES ('38', '141');
INSERT INTO `sys_role_sys_right` VALUES ('38', '144');
INSERT INTO `sys_role_sys_right` VALUES ('38', '146');
INSERT INTO `sys_role_sys_right` VALUES ('38', '162');
INSERT INTO `sys_role_sys_right` VALUES ('61', '17');
INSERT INTO `sys_role_sys_right` VALUES ('61', '24');
INSERT INTO `sys_role_sys_right` VALUES ('61', '26');
INSERT INTO `sys_role_sys_right` VALUES ('61', '27');
INSERT INTO `sys_role_sys_right` VALUES ('61', '28');
INSERT INTO `sys_role_sys_right` VALUES ('61', '29');
INSERT INTO `sys_role_sys_right` VALUES ('61', '132');
INSERT INTO `sys_role_sys_right` VALUES ('61', '133');
INSERT INTO `sys_role_sys_right` VALUES ('61', '134');
INSERT INTO `sys_role_sys_right` VALUES ('61', '136');
INSERT INTO `sys_role_sys_right` VALUES ('61', '137');
INSERT INTO `sys_role_sys_right` VALUES ('61', '138');
INSERT INTO `sys_role_sys_right` VALUES ('61', '139');
INSERT INTO `sys_role_sys_right` VALUES ('61', '140');
INSERT INTO `sys_role_sys_right` VALUES ('61', '141');
INSERT INTO `sys_role_sys_right` VALUES ('61', '144');
INSERT INTO `sys_role_sys_right` VALUES ('61', '146');
INSERT INTO `sys_role_sys_right` VALUES ('39', '17');
INSERT INTO `sys_role_sys_right` VALUES ('39', '18');
INSERT INTO `sys_role_sys_right` VALUES ('39', '19');
INSERT INTO `sys_role_sys_right` VALUES ('39', '20');
INSERT INTO `sys_role_sys_right` VALUES ('39', '34');
INSERT INTO `sys_role_sys_right` VALUES ('39', '35');
INSERT INTO `sys_role_sys_right` VALUES ('39', '36');
INSERT INTO `sys_role_sys_right` VALUES ('39', '96');
INSERT INTO `sys_role_sys_right` VALUES ('40', '17');
INSERT INTO `sys_role_sys_right` VALUES ('40', '24');
INSERT INTO `sys_role_sys_right` VALUES ('40', '26');
INSERT INTO `sys_role_sys_right` VALUES ('40', '37');
INSERT INTO `sys_role_sys_right` VALUES ('40', '38');
INSERT INTO `sys_role_sys_right` VALUES ('40', '39');
INSERT INTO `sys_role_sys_right` VALUES ('40', '40');
INSERT INTO `sys_role_sys_right` VALUES ('40', '41');
INSERT INTO `sys_role_sys_right` VALUES ('40', '42');
INSERT INTO `sys_role_sys_right` VALUES ('40', '43');
INSERT INTO `sys_role_sys_right` VALUES ('40', '44');
INSERT INTO `sys_role_sys_right` VALUES ('40', '45');
INSERT INTO `sys_role_sys_right` VALUES ('40', '46');
INSERT INTO `sys_role_sys_right` VALUES ('40', '47');
INSERT INTO `sys_role_sys_right` VALUES ('40', '48');
INSERT INTO `sys_role_sys_right` VALUES ('40', '49');
INSERT INTO `sys_role_sys_right` VALUES ('40', '50');
INSERT INTO `sys_role_sys_right` VALUES ('40', '51');
INSERT INTO `sys_role_sys_right` VALUES ('40', '125');
INSERT INTO `sys_role_sys_right` VALUES ('40', '126');
INSERT INTO `sys_role_sys_right` VALUES ('40', '127');
INSERT INTO `sys_role_sys_right` VALUES ('40', '128');
INSERT INTO `sys_role_sys_right` VALUES ('40', '129');
INSERT INTO `sys_role_sys_right` VALUES ('40', '132');
INSERT INTO `sys_role_sys_right` VALUES ('40', '133');
INSERT INTO `sys_role_sys_right` VALUES ('40', '134');
INSERT INTO `sys_role_sys_right` VALUES ('40', '135');
INSERT INTO `sys_role_sys_right` VALUES ('40', '136');
INSERT INTO `sys_role_sys_right` VALUES ('40', '137');
INSERT INTO `sys_role_sys_right` VALUES ('40', '138');
INSERT INTO `sys_role_sys_right` VALUES ('40', '139');
INSERT INTO `sys_role_sys_right` VALUES ('40', '140');
INSERT INTO `sys_role_sys_right` VALUES ('40', '141');
INSERT INTO `sys_role_sys_right` VALUES ('40', '144');
INSERT INTO `sys_role_sys_right` VALUES ('40', '162');
INSERT INTO `sys_role_sys_right` VALUES ('41', '17');
INSERT INTO `sys_role_sys_right` VALUES ('41', '24');
INSERT INTO `sys_role_sys_right` VALUES ('41', '37');
INSERT INTO `sys_role_sys_right` VALUES ('41', '38');
INSERT INTO `sys_role_sys_right` VALUES ('41', '39');
INSERT INTO `sys_role_sys_right` VALUES ('41', '40');
INSERT INTO `sys_role_sys_right` VALUES ('41', '41');
INSERT INTO `sys_role_sys_right` VALUES ('41', '42');
INSERT INTO `sys_role_sys_right` VALUES ('41', '43');
INSERT INTO `sys_role_sys_right` VALUES ('41', '44');
INSERT INTO `sys_role_sys_right` VALUES ('41', '45');
INSERT INTO `sys_role_sys_right` VALUES ('41', '46');
INSERT INTO `sys_role_sys_right` VALUES ('41', '47');
INSERT INTO `sys_role_sys_right` VALUES ('41', '48');
INSERT INTO `sys_role_sys_right` VALUES ('41', '49');
INSERT INTO `sys_role_sys_right` VALUES ('41', '50');
INSERT INTO `sys_role_sys_right` VALUES ('41', '51');
INSERT INTO `sys_role_sys_right` VALUES ('41', '132');
INSERT INTO `sys_role_sys_right` VALUES ('41', '133');
INSERT INTO `sys_role_sys_right` VALUES ('41', '135');
INSERT INTO `sys_role_sys_right` VALUES ('41', '137');
INSERT INTO `sys_role_sys_right` VALUES ('41', '141');
INSERT INTO `sys_role_sys_right` VALUES ('41', '162');
INSERT INTO `sys_role_sys_right` VALUES ('43', '17');
INSERT INTO `sys_role_sys_right` VALUES ('43', '24');
INSERT INTO `sys_role_sys_right` VALUES ('43', '37');
INSERT INTO `sys_role_sys_right` VALUES ('43', '38');
INSERT INTO `sys_role_sys_right` VALUES ('43', '39');
INSERT INTO `sys_role_sys_right` VALUES ('43', '40');
INSERT INTO `sys_role_sys_right` VALUES ('43', '41');
INSERT INTO `sys_role_sys_right` VALUES ('43', '42');
INSERT INTO `sys_role_sys_right` VALUES ('43', '43');
INSERT INTO `sys_role_sys_right` VALUES ('43', '44');
INSERT INTO `sys_role_sys_right` VALUES ('43', '45');
INSERT INTO `sys_role_sys_right` VALUES ('43', '46');
INSERT INTO `sys_role_sys_right` VALUES ('43', '47');
INSERT INTO `sys_role_sys_right` VALUES ('43', '48');
INSERT INTO `sys_role_sys_right` VALUES ('43', '49');
INSERT INTO `sys_role_sys_right` VALUES ('43', '50');
INSERT INTO `sys_role_sys_right` VALUES ('43', '51');
INSERT INTO `sys_role_sys_right` VALUES ('43', '125');
INSERT INTO `sys_role_sys_right` VALUES ('43', '126');
INSERT INTO `sys_role_sys_right` VALUES ('43', '129');
INSERT INTO `sys_role_sys_right` VALUES ('43', '132');
INSERT INTO `sys_role_sys_right` VALUES ('43', '133');
INSERT INTO `sys_role_sys_right` VALUES ('43', '135');
INSERT INTO `sys_role_sys_right` VALUES ('43', '137');
INSERT INTO `sys_role_sys_right` VALUES ('43', '141');
INSERT INTO `sys_role_sys_right` VALUES ('43', '162');
INSERT INTO `sys_role_sys_right` VALUES ('74', '17');
INSERT INTO `sys_role_sys_right` VALUES ('74', '83');
INSERT INTO `sys_role_sys_right` VALUES ('74', '106');
INSERT INTO `sys_role_sys_right` VALUES ('74', '164');
INSERT INTO `sys_role_sys_right` VALUES ('77', '17');
INSERT INTO `sys_role_sys_right` VALUES ('77', '22');
INSERT INTO `sys_role_sys_right` VALUES ('77', '27');
INSERT INTO `sys_role_sys_right` VALUES ('77', '30');
INSERT INTO `sys_role_sys_right` VALUES ('77', '63');
INSERT INTO `sys_role_sys_right` VALUES ('77', '82');
INSERT INTO `sys_role_sys_right` VALUES ('77', '83');
INSERT INTO `sys_role_sys_right` VALUES ('77', '85');
INSERT INTO `sys_role_sys_right` VALUES ('77', '90');
INSERT INTO `sys_role_sys_right` VALUES ('77', '91');
INSERT INTO `sys_role_sys_right` VALUES ('77', '92');
INSERT INTO `sys_role_sys_right` VALUES ('77', '93');
INSERT INTO `sys_role_sys_right` VALUES ('77', '94');
INSERT INTO `sys_role_sys_right` VALUES ('77', '95');
INSERT INTO `sys_role_sys_right` VALUES ('77', '105');
INSERT INTO `sys_role_sys_right` VALUES ('77', '106');
INSERT INTO `sys_role_sys_right` VALUES ('77', '114');
INSERT INTO `sys_role_sys_right` VALUES ('77', '116');
INSERT INTO `sys_role_sys_right` VALUES ('77', '118');
INSERT INTO `sys_role_sys_right` VALUES ('77', '120');
INSERT INTO `sys_role_sys_right` VALUES ('77', '121');
INSERT INTO `sys_role_sys_right` VALUES ('77', '122');
INSERT INTO `sys_role_sys_right` VALUES ('77', '157');
INSERT INTO `sys_role_sys_right` VALUES ('77', '159');
INSERT INTO `sys_role_sys_right` VALUES ('77', '160');
INSERT INTO `sys_role_sys_right` VALUES ('76', '17');
INSERT INTO `sys_role_sys_right` VALUES ('76', '22');
INSERT INTO `sys_role_sys_right` VALUES ('76', '27');
INSERT INTO `sys_role_sys_right` VALUES ('76', '30');
INSERT INTO `sys_role_sys_right` VALUES ('76', '53');
INSERT INTO `sys_role_sys_right` VALUES ('76', '63');
INSERT INTO `sys_role_sys_right` VALUES ('76', '82');
INSERT INTO `sys_role_sys_right` VALUES ('76', '83');
INSERT INTO `sys_role_sys_right` VALUES ('76', '85');
INSERT INTO `sys_role_sys_right` VALUES ('76', '90');
INSERT INTO `sys_role_sys_right` VALUES ('76', '91');
INSERT INTO `sys_role_sys_right` VALUES ('76', '92');
INSERT INTO `sys_role_sys_right` VALUES ('76', '93');
INSERT INTO `sys_role_sys_right` VALUES ('76', '105');
INSERT INTO `sys_role_sys_right` VALUES ('76', '106');
INSERT INTO `sys_role_sys_right` VALUES ('76', '114');
INSERT INTO `sys_role_sys_right` VALUES ('76', '116');
INSERT INTO `sys_role_sys_right` VALUES ('76', '118');
INSERT INTO `sys_role_sys_right` VALUES ('76', '120');
INSERT INTO `sys_role_sys_right` VALUES ('76', '121');
INSERT INTO `sys_role_sys_right` VALUES ('76', '122');
INSERT INTO `sys_role_sys_right` VALUES ('76', '157');
INSERT INTO `sys_role_sys_right` VALUES ('76', '159');
INSERT INTO `sys_role_sys_right` VALUES ('76', '160');
INSERT INTO `sys_role_sys_right` VALUES ('73', '17');
INSERT INTO `sys_role_sys_right` VALUES ('73', '22');
INSERT INTO `sys_role_sys_right` VALUES ('73', '53');
INSERT INTO `sys_role_sys_right` VALUES ('73', '63');
INSERT INTO `sys_role_sys_right` VALUES ('73', '78');
INSERT INTO `sys_role_sys_right` VALUES ('73', '79');
INSERT INTO `sys_role_sys_right` VALUES ('73', '82');
INSERT INTO `sys_role_sys_right` VALUES ('73', '83');
INSERT INTO `sys_role_sys_right` VALUES ('73', '85');
INSERT INTO `sys_role_sys_right` VALUES ('73', '90');
INSERT INTO `sys_role_sys_right` VALUES ('73', '105');
INSERT INTO `sys_role_sys_right` VALUES ('73', '106');
INSERT INTO `sys_role_sys_right` VALUES ('73', '114');
INSERT INTO `sys_role_sys_right` VALUES ('73', '116');
INSERT INTO `sys_role_sys_right` VALUES ('73', '118');
INSERT INTO `sys_role_sys_right` VALUES ('73', '120');
INSERT INTO `sys_role_sys_right` VALUES ('73', '121');
INSERT INTO `sys_role_sys_right` VALUES ('73', '122');
INSERT INTO `sys_role_sys_right` VALUES ('73', '157');
INSERT INTO `sys_role_sys_right` VALUES ('73', '159');
INSERT INTO `sys_role_sys_right` VALUES ('73', '160');
INSERT INTO `sys_role_sys_right` VALUES ('80', '17');
INSERT INTO `sys_role_sys_right` VALUES ('80', '22');
INSERT INTO `sys_role_sys_right` VALUES ('80', '53');
INSERT INTO `sys_role_sys_right` VALUES ('80', '63');
INSERT INTO `sys_role_sys_right` VALUES ('80', '82');
INSERT INTO `sys_role_sys_right` VALUES ('80', '83');
INSERT INTO `sys_role_sys_right` VALUES ('80', '85');
INSERT INTO `sys_role_sys_right` VALUES ('80', '105');
INSERT INTO `sys_role_sys_right` VALUES ('80', '106');
INSERT INTO `sys_role_sys_right` VALUES ('80', '114');
INSERT INTO `sys_role_sys_right` VALUES ('80', '116');
INSERT INTO `sys_role_sys_right` VALUES ('80', '118');
INSERT INTO `sys_role_sys_right` VALUES ('80', '120');
INSERT INTO `sys_role_sys_right` VALUES ('80', '121');
INSERT INTO `sys_role_sys_right` VALUES ('80', '122');
INSERT INTO `sys_role_sys_right` VALUES ('80', '159');
INSERT INTO `sys_role_sys_right` VALUES ('80', '160');
INSERT INTO `sys_role_sys_right` VALUES ('81', '17');
INSERT INTO `sys_role_sys_right` VALUES ('81', '22');
INSERT INTO `sys_role_sys_right` VALUES ('81', '53');
INSERT INTO `sys_role_sys_right` VALUES ('81', '63');
INSERT INTO `sys_role_sys_right` VALUES ('81', '83');
INSERT INTO `sys_role_sys_right` VALUES ('81', '85');
INSERT INTO `sys_role_sys_right` VALUES ('81', '90');
INSERT INTO `sys_role_sys_right` VALUES ('81', '105');
INSERT INTO `sys_role_sys_right` VALUES ('81', '106');
INSERT INTO `sys_role_sys_right` VALUES ('81', '114');
INSERT INTO `sys_role_sys_right` VALUES ('81', '116');
INSERT INTO `sys_role_sys_right` VALUES ('81', '118');
INSERT INTO `sys_role_sys_right` VALUES ('81', '120');
INSERT INTO `sys_role_sys_right` VALUES ('81', '121');
INSERT INTO `sys_role_sys_right` VALUES ('81', '122');
INSERT INTO `sys_role_sys_right` VALUES ('81', '159');
INSERT INTO `sys_role_sys_right` VALUES ('81', '160');
INSERT INTO `sys_role_sys_right` VALUES ('75', '17');
INSERT INTO `sys_role_sys_right` VALUES ('75', '22');
INSERT INTO `sys_role_sys_right` VALUES ('75', '63');
INSERT INTO `sys_role_sys_right` VALUES ('75', '82');
INSERT INTO `sys_role_sys_right` VALUES ('75', '83');
INSERT INTO `sys_role_sys_right` VALUES ('75', '85');
INSERT INTO `sys_role_sys_right` VALUES ('75', '90');
INSERT INTO `sys_role_sys_right` VALUES ('75', '91');
INSERT INTO `sys_role_sys_right` VALUES ('75', '94');
INSERT INTO `sys_role_sys_right` VALUES ('75', '95');
INSERT INTO `sys_role_sys_right` VALUES ('75', '105');
INSERT INTO `sys_role_sys_right` VALUES ('75', '106');
INSERT INTO `sys_role_sys_right` VALUES ('75', '114');
INSERT INTO `sys_role_sys_right` VALUES ('75', '116');
INSERT INTO `sys_role_sys_right` VALUES ('75', '118');
INSERT INTO `sys_role_sys_right` VALUES ('75', '120');
INSERT INTO `sys_role_sys_right` VALUES ('75', '121');
INSERT INTO `sys_role_sys_right` VALUES ('75', '122');
INSERT INTO `sys_role_sys_right` VALUES ('75', '157');
INSERT INTO `sys_role_sys_right` VALUES ('75', '159');
INSERT INTO `sys_role_sys_right` VALUES ('75', '160');
INSERT INTO `sys_role_sys_right` VALUES ('83', '5');
INSERT INTO `sys_role_sys_right` VALUES ('83', '17');
INSERT INTO `sys_role_sys_right` VALUES ('83', '22');
INSERT INTO `sys_role_sys_right` VALUES ('83', '27');
INSERT INTO `sys_role_sys_right` VALUES ('83', '28');
INSERT INTO `sys_role_sys_right` VALUES ('83', '29');
INSERT INTO `sys_role_sys_right` VALUES ('83', '30');
INSERT INTO `sys_role_sys_right` VALUES ('83', '53');
INSERT INTO `sys_role_sys_right` VALUES ('83', '57');
INSERT INTO `sys_role_sys_right` VALUES ('83', '63');
INSERT INTO `sys_role_sys_right` VALUES ('83', '69');
INSERT INTO `sys_role_sys_right` VALUES ('83', '77');
INSERT INTO `sys_role_sys_right` VALUES ('83', '78');
INSERT INTO `sys_role_sys_right` VALUES ('83', '79');
INSERT INTO `sys_role_sys_right` VALUES ('83', '82');
INSERT INTO `sys_role_sys_right` VALUES ('83', '83');
INSERT INTO `sys_role_sys_right` VALUES ('83', '84');
INSERT INTO `sys_role_sys_right` VALUES ('83', '85');
INSERT INTO `sys_role_sys_right` VALUES ('83', '86');
INSERT INTO `sys_role_sys_right` VALUES ('83', '89');
INSERT INTO `sys_role_sys_right` VALUES ('83', '90');
INSERT INTO `sys_role_sys_right` VALUES ('83', '91');
INSERT INTO `sys_role_sys_right` VALUES ('83', '92');
INSERT INTO `sys_role_sys_right` VALUES ('83', '93');
INSERT INTO `sys_role_sys_right` VALUES ('83', '94');
INSERT INTO `sys_role_sys_right` VALUES ('83', '95');
INSERT INTO `sys_role_sys_right` VALUES ('83', '103');
INSERT INTO `sys_role_sys_right` VALUES ('83', '105');
INSERT INTO `sys_role_sys_right` VALUES ('83', '106');
INSERT INTO `sys_role_sys_right` VALUES ('83', '111');
INSERT INTO `sys_role_sys_right` VALUES ('83', '113');
INSERT INTO `sys_role_sys_right` VALUES ('83', '114');
INSERT INTO `sys_role_sys_right` VALUES ('83', '115');
INSERT INTO `sys_role_sys_right` VALUES ('83', '116');
INSERT INTO `sys_role_sys_right` VALUES ('83', '117');
INSERT INTO `sys_role_sys_right` VALUES ('83', '118');
INSERT INTO `sys_role_sys_right` VALUES ('83', '119');
INSERT INTO `sys_role_sys_right` VALUES ('83', '120');
INSERT INTO `sys_role_sys_right` VALUES ('83', '121');
INSERT INTO `sys_role_sys_right` VALUES ('83', '122');
INSERT INTO `sys_role_sys_right` VALUES ('83', '143');
INSERT INTO `sys_role_sys_right` VALUES ('83', '157');
INSERT INTO `sys_role_sys_right` VALUES ('83', '158');
INSERT INTO `sys_role_sys_right` VALUES ('83', '159');
INSERT INTO `sys_role_sys_right` VALUES ('83', '160');
INSERT INTO `sys_role_sys_right` VALUES ('83', '163');
INSERT INTO `sys_role_sys_right` VALUES ('83', '164');
INSERT INTO `sys_role_sys_right` VALUES ('82', '17');
INSERT INTO `sys_role_sys_right` VALUES ('82', '22');
INSERT INTO `sys_role_sys_right` VALUES ('82', '27');
INSERT INTO `sys_role_sys_right` VALUES ('82', '28');
INSERT INTO `sys_role_sys_right` VALUES ('82', '29');
INSERT INTO `sys_role_sys_right` VALUES ('82', '30');
INSERT INTO `sys_role_sys_right` VALUES ('82', '53');
INSERT INTO `sys_role_sys_right` VALUES ('82', '57');
INSERT INTO `sys_role_sys_right` VALUES ('82', '63');
INSERT INTO `sys_role_sys_right` VALUES ('82', '69');
INSERT INTO `sys_role_sys_right` VALUES ('82', '78');
INSERT INTO `sys_role_sys_right` VALUES ('82', '79');
INSERT INTO `sys_role_sys_right` VALUES ('82', '82');
INSERT INTO `sys_role_sys_right` VALUES ('82', '83');
INSERT INTO `sys_role_sys_right` VALUES ('82', '84');
INSERT INTO `sys_role_sys_right` VALUES ('82', '85');
INSERT INTO `sys_role_sys_right` VALUES ('82', '86');
INSERT INTO `sys_role_sys_right` VALUES ('82', '89');
INSERT INTO `sys_role_sys_right` VALUES ('82', '90');
INSERT INTO `sys_role_sys_right` VALUES ('82', '91');
INSERT INTO `sys_role_sys_right` VALUES ('82', '92');
INSERT INTO `sys_role_sys_right` VALUES ('82', '93');
INSERT INTO `sys_role_sys_right` VALUES ('82', '94');
INSERT INTO `sys_role_sys_right` VALUES ('82', '95');
INSERT INTO `sys_role_sys_right` VALUES ('82', '103');
INSERT INTO `sys_role_sys_right` VALUES ('82', '105');
INSERT INTO `sys_role_sys_right` VALUES ('82', '106');
INSERT INTO `sys_role_sys_right` VALUES ('82', '111');
INSERT INTO `sys_role_sys_right` VALUES ('82', '113');
INSERT INTO `sys_role_sys_right` VALUES ('82', '114');
INSERT INTO `sys_role_sys_right` VALUES ('82', '115');
INSERT INTO `sys_role_sys_right` VALUES ('82', '116');
INSERT INTO `sys_role_sys_right` VALUES ('82', '117');
INSERT INTO `sys_role_sys_right` VALUES ('82', '118');
INSERT INTO `sys_role_sys_right` VALUES ('82', '119');
INSERT INTO `sys_role_sys_right` VALUES ('82', '120');
INSERT INTO `sys_role_sys_right` VALUES ('82', '121');
INSERT INTO `sys_role_sys_right` VALUES ('82', '122');
INSERT INTO `sys_role_sys_right` VALUES ('82', '143');
INSERT INTO `sys_role_sys_right` VALUES ('82', '157');
INSERT INTO `sys_role_sys_right` VALUES ('82', '158');
INSERT INTO `sys_role_sys_right` VALUES ('82', '159');
INSERT INTO `sys_role_sys_right` VALUES ('82', '160');
INSERT INTO `sys_role_sys_right` VALUES ('82', '163');
INSERT INTO `sys_role_sys_right` VALUES ('82', '164');
INSERT INTO `sys_role_sys_right` VALUES ('78', '17');
INSERT INTO `sys_role_sys_right` VALUES ('78', '22');
INSERT INTO `sys_role_sys_right` VALUES ('78', '27');
INSERT INTO `sys_role_sys_right` VALUES ('78', '28');
INSERT INTO `sys_role_sys_right` VALUES ('78', '29');
INSERT INTO `sys_role_sys_right` VALUES ('78', '30');
INSERT INTO `sys_role_sys_right` VALUES ('78', '53');
INSERT INTO `sys_role_sys_right` VALUES ('78', '63');
INSERT INTO `sys_role_sys_right` VALUES ('78', '69');
INSERT INTO `sys_role_sys_right` VALUES ('78', '82');
INSERT INTO `sys_role_sys_right` VALUES ('78', '83');
INSERT INTO `sys_role_sys_right` VALUES ('78', '85');
INSERT INTO `sys_role_sys_right` VALUES ('78', '90');
INSERT INTO `sys_role_sys_right` VALUES ('78', '105');
INSERT INTO `sys_role_sys_right` VALUES ('78', '106');
INSERT INTO `sys_role_sys_right` VALUES ('78', '114');
INSERT INTO `sys_role_sys_right` VALUES ('78', '116');
INSERT INTO `sys_role_sys_right` VALUES ('78', '118');
INSERT INTO `sys_role_sys_right` VALUES ('78', '120');
INSERT INTO `sys_role_sys_right` VALUES ('78', '121');
INSERT INTO `sys_role_sys_right` VALUES ('78', '122');
INSERT INTO `sys_role_sys_right` VALUES ('78', '157');
INSERT INTO `sys_role_sys_right` VALUES ('78', '159');
INSERT INTO `sys_role_sys_right` VALUES ('78', '160');
INSERT INTO `sys_role_sys_right` VALUES ('78', '163');
INSERT INTO `sys_role_sys_right` VALUES ('79', '5');
INSERT INTO `sys_role_sys_right` VALUES ('79', '17');
INSERT INTO `sys_role_sys_right` VALUES ('79', '22');
INSERT INTO `sys_role_sys_right` VALUES ('79', '27');
INSERT INTO `sys_role_sys_right` VALUES ('79', '28');
INSERT INTO `sys_role_sys_right` VALUES ('79', '29');
INSERT INTO `sys_role_sys_right` VALUES ('79', '30');
INSERT INTO `sys_role_sys_right` VALUES ('79', '53');
INSERT INTO `sys_role_sys_right` VALUES ('79', '63');
INSERT INTO `sys_role_sys_right` VALUES ('79', '69');
INSERT INTO `sys_role_sys_right` VALUES ('79', '77');
INSERT INTO `sys_role_sys_right` VALUES ('79', '82');
INSERT INTO `sys_role_sys_right` VALUES ('79', '83');
INSERT INTO `sys_role_sys_right` VALUES ('79', '85');
INSERT INTO `sys_role_sys_right` VALUES ('79', '90');
INSERT INTO `sys_role_sys_right` VALUES ('79', '91');
INSERT INTO `sys_role_sys_right` VALUES ('79', '92');
INSERT INTO `sys_role_sys_right` VALUES ('79', '105');
INSERT INTO `sys_role_sys_right` VALUES ('79', '106');
INSERT INTO `sys_role_sys_right` VALUES ('79', '114');
INSERT INTO `sys_role_sys_right` VALUES ('79', '116');
INSERT INTO `sys_role_sys_right` VALUES ('79', '118');
INSERT INTO `sys_role_sys_right` VALUES ('79', '120');
INSERT INTO `sys_role_sys_right` VALUES ('79', '121');
INSERT INTO `sys_role_sys_right` VALUES ('79', '122');
INSERT INTO `sys_role_sys_right` VALUES ('79', '157');
INSERT INTO `sys_role_sys_right` VALUES ('79', '159');
INSERT INTO `sys_role_sys_right` VALUES ('79', '160');
INSERT INTO `sys_role_sys_right` VALUES ('79', '163');
INSERT INTO `sys_role_sys_right` VALUES ('84', '103');
INSERT INTO `sys_role_sys_right` VALUES ('84', '167');
INSERT INTO `sys_role_sys_right` VALUES ('84', '168');
INSERT INTO `sys_role_sys_right` VALUES ('86', '97');
INSERT INTO `sys_role_sys_right` VALUES ('86', '98');
INSERT INTO `sys_role_sys_right` VALUES ('86', '99');
INSERT INTO `sys_role_sys_right` VALUES ('86', '100');
INSERT INTO `sys_role_sys_right` VALUES ('86', '101');
INSERT INTO `sys_role_sys_right` VALUES ('86', '103');
INSERT INTO `sys_role_sys_right` VALUES ('86', '104');
INSERT INTO `sys_role_sys_right` VALUES ('15', '17');
INSERT INTO `sys_role_sys_right` VALUES ('15', '18');
INSERT INTO `sys_role_sys_right` VALUES ('15', '19');
INSERT INTO `sys_role_sys_right` VALUES ('15', '20');
INSERT INTO `sys_role_sys_right` VALUES ('15', '21');
INSERT INTO `sys_role_sys_right` VALUES ('15', '24');
INSERT INTO `sys_role_sys_right` VALUES ('15', '26');
INSERT INTO `sys_role_sys_right` VALUES ('15', '27');
INSERT INTO `sys_role_sys_right` VALUES ('15', '28');
INSERT INTO `sys_role_sys_right` VALUES ('15', '29');
INSERT INTO `sys_role_sys_right` VALUES ('15', '34');
INSERT INTO `sys_role_sys_right` VALUES ('15', '35');
INSERT INTO `sys_role_sys_right` VALUES ('15', '36');
INSERT INTO `sys_role_sys_right` VALUES ('15', '37');
INSERT INTO `sys_role_sys_right` VALUES ('15', '38');
INSERT INTO `sys_role_sys_right` VALUES ('15', '39');
INSERT INTO `sys_role_sys_right` VALUES ('15', '40');
INSERT INTO `sys_role_sys_right` VALUES ('15', '41');
INSERT INTO `sys_role_sys_right` VALUES ('15', '42');
INSERT INTO `sys_role_sys_right` VALUES ('15', '43');
INSERT INTO `sys_role_sys_right` VALUES ('15', '44');
INSERT INTO `sys_role_sys_right` VALUES ('15', '45');
INSERT INTO `sys_role_sys_right` VALUES ('15', '46');
INSERT INTO `sys_role_sys_right` VALUES ('15', '47');
INSERT INTO `sys_role_sys_right` VALUES ('15', '48');
INSERT INTO `sys_role_sys_right` VALUES ('15', '49');
INSERT INTO `sys_role_sys_right` VALUES ('15', '50');
INSERT INTO `sys_role_sys_right` VALUES ('15', '51');
INSERT INTO `sys_role_sys_right` VALUES ('15', '52');
INSERT INTO `sys_role_sys_right` VALUES ('15', '83');
INSERT INTO `sys_role_sys_right` VALUES ('15', '85');
INSERT INTO `sys_role_sys_right` VALUES ('15', '96');
INSERT INTO `sys_role_sys_right` VALUES ('15', '102');
INSERT INTO `sys_role_sys_right` VALUES ('15', '106');
INSERT INTO `sys_role_sys_right` VALUES ('15', '121');
INSERT INTO `sys_role_sys_right` VALUES ('15', '125');
INSERT INTO `sys_role_sys_right` VALUES ('15', '126');
INSERT INTO `sys_role_sys_right` VALUES ('15', '127');
INSERT INTO `sys_role_sys_right` VALUES ('15', '128');
INSERT INTO `sys_role_sys_right` VALUES ('15', '129');
INSERT INTO `sys_role_sys_right` VALUES ('15', '132');
INSERT INTO `sys_role_sys_right` VALUES ('15', '133');
INSERT INTO `sys_role_sys_right` VALUES ('15', '134');
INSERT INTO `sys_role_sys_right` VALUES ('15', '135');
INSERT INTO `sys_role_sys_right` VALUES ('15', '136');
INSERT INTO `sys_role_sys_right` VALUES ('15', '137');
INSERT INTO `sys_role_sys_right` VALUES ('15', '138');
INSERT INTO `sys_role_sys_right` VALUES ('15', '139');
INSERT INTO `sys_role_sys_right` VALUES ('15', '140');
INSERT INTO `sys_role_sys_right` VALUES ('15', '141');
INSERT INTO `sys_role_sys_right` VALUES ('15', '144');
INSERT INTO `sys_role_sys_right` VALUES ('15', '146');
INSERT INTO `sys_role_sys_right` VALUES ('15', '160');
INSERT INTO `sys_role_sys_right` VALUES ('15', '162');
INSERT INTO `sys_role_sys_right` VALUES ('87', '17');
INSERT INTO `sys_role_sys_right` VALUES ('87', '22');
INSERT INTO `sys_role_sys_right` VALUES ('87', '66');
INSERT INTO `sys_role_sys_right` VALUES ('87', '67');
INSERT INTO `sys_role_sys_right` VALUES ('87', '70');
INSERT INTO `sys_role_sys_right` VALUES ('87', '71');
INSERT INTO `sys_role_sys_right` VALUES ('87', '72');
INSERT INTO `sys_role_sys_right` VALUES ('87', '73');
INSERT INTO `sys_role_sys_right` VALUES ('87', '74');
INSERT INTO `sys_role_sys_right` VALUES ('87', '75');
INSERT INTO `sys_role_sys_right` VALUES ('87', '76');
INSERT INTO `sys_role_sys_right` VALUES ('87', '81');
INSERT INTO `sys_role_sys_right` VALUES ('87', '105');
INSERT INTO `sys_role_sys_right` VALUES ('87', '151');
INSERT INTO `sys_role_sys_right` VALUES ('87', '152');
INSERT INTO `sys_role_sys_right` VALUES ('87', '153');
INSERT INTO `sys_role_sys_right` VALUES ('87', '154');
INSERT INTO `sys_role_sys_right` VALUES ('91', '17');
INSERT INTO `sys_role_sys_right` VALUES ('91', '74');
INSERT INTO `sys_role_sys_right` VALUES ('91', '75');
INSERT INTO `sys_role_sys_right` VALUES ('91', '76');
INSERT INTO `sys_role_sys_right` VALUES ('91', '151');
INSERT INTO `sys_role_sys_right` VALUES ('91', '152');
INSERT INTO `sys_role_sys_right` VALUES ('91', '153');
INSERT INTO `sys_role_sys_right` VALUES ('91', '154');
INSERT INTO `sys_role_sys_right` VALUES ('93', '17');
INSERT INTO `sys_role_sys_right` VALUES ('93', '22');
INSERT INTO `sys_role_sys_right` VALUES ('93', '66');
INSERT INTO `sys_role_sys_right` VALUES ('93', '67');
INSERT INTO `sys_role_sys_right` VALUES ('93', '70');
INSERT INTO `sys_role_sys_right` VALUES ('93', '71');
INSERT INTO `sys_role_sys_right` VALUES ('93', '72');
INSERT INTO `sys_role_sys_right` VALUES ('93', '73');
INSERT INTO `sys_role_sys_right` VALUES ('93', '74');
INSERT INTO `sys_role_sys_right` VALUES ('93', '75');
INSERT INTO `sys_role_sys_right` VALUES ('93', '76');
INSERT INTO `sys_role_sys_right` VALUES ('93', '81');
INSERT INTO `sys_role_sys_right` VALUES ('93', '105');
INSERT INTO `sys_role_sys_right` VALUES ('94', '17');
INSERT INTO `sys_role_sys_right` VALUES ('94', '24');
INSERT INTO `sys_role_sys_right` VALUES ('94', '25');
INSERT INTO `sys_role_sys_right` VALUES ('94', '26');
INSERT INTO `sys_role_sys_right` VALUES ('94', '49');
INSERT INTO `sys_role_sys_right` VALUES ('94', '65');
INSERT INTO `sys_role_sys_right` VALUES ('94', '132');
INSERT INTO `sys_role_sys_right` VALUES ('94', '133');
INSERT INTO `sys_role_sys_right` VALUES ('94', '134');
INSERT INTO `sys_role_sys_right` VALUES ('94', '135');
INSERT INTO `sys_role_sys_right` VALUES ('94', '136');
INSERT INTO `sys_role_sys_right` VALUES ('94', '137');
INSERT INTO `sys_role_sys_right` VALUES ('94', '138');
INSERT INTO `sys_role_sys_right` VALUES ('94', '139');
INSERT INTO `sys_role_sys_right` VALUES ('94', '140');
INSERT INTO `sys_role_sys_right` VALUES ('94', '141');
INSERT INTO `sys_role_sys_right` VALUES ('94', '144');
INSERT INTO `sys_role_sys_right` VALUES ('94', '145');
INSERT INTO `sys_role_sys_right` VALUES ('94', '146');
INSERT INTO `sys_role_sys_right` VALUES ('94', '150');
INSERT INTO `sys_role_sys_right` VALUES ('95', '17');
INSERT INTO `sys_role_sys_right` VALUES ('95', '24');
INSERT INTO `sys_role_sys_right` VALUES ('95', '49');
INSERT INTO `sys_role_sys_right` VALUES ('95', '132');
INSERT INTO `sys_role_sys_right` VALUES ('95', '133');
INSERT INTO `sys_role_sys_right` VALUES ('95', '135');
INSERT INTO `sys_role_sys_right` VALUES ('95', '137');
INSERT INTO `sys_role_sys_right` VALUES ('95', '141');
INSERT INTO `sys_role_sys_right` VALUES ('96', '17');
INSERT INTO `sys_role_sys_right` VALUES ('96', '24');
INSERT INTO `sys_role_sys_right` VALUES ('96', '49');
INSERT INTO `sys_role_sys_right` VALUES ('96', '65');
INSERT INTO `sys_role_sys_right` VALUES ('96', '132');
INSERT INTO `sys_role_sys_right` VALUES ('96', '133');
INSERT INTO `sys_role_sys_right` VALUES ('96', '135');
INSERT INTO `sys_role_sys_right` VALUES ('96', '141');
INSERT INTO `sys_role_sys_right` VALUES ('96', '145');
INSERT INTO `sys_role_sys_right` VALUES ('97', '17');
INSERT INTO `sys_role_sys_right` VALUES ('97', '24');
INSERT INTO `sys_role_sys_right` VALUES ('97', '25');
INSERT INTO `sys_role_sys_right` VALUES ('97', '49');
INSERT INTO `sys_role_sys_right` VALUES ('97', '132');
INSERT INTO `sys_role_sys_right` VALUES ('97', '133');
INSERT INTO `sys_role_sys_right` VALUES ('97', '135');
INSERT INTO `sys_role_sys_right` VALUES ('97', '141');
INSERT INTO `sys_role_sys_right` VALUES ('97', '150');
INSERT INTO `sys_role_sys_right` VALUES ('89', '17');
INSERT INTO `sys_role_sys_right` VALUES ('89', '22');
INSERT INTO `sys_role_sys_right` VALUES ('89', '66');
INSERT INTO `sys_role_sys_right` VALUES ('89', '67');
INSERT INTO `sys_role_sys_right` VALUES ('89', '70');
INSERT INTO `sys_role_sys_right` VALUES ('89', '71');
INSERT INTO `sys_role_sys_right` VALUES ('89', '72');
INSERT INTO `sys_role_sys_right` VALUES ('89', '73');
INSERT INTO `sys_role_sys_right` VALUES ('89', '74');
INSERT INTO `sys_role_sys_right` VALUES ('89', '75');
INSERT INTO `sys_role_sys_right` VALUES ('89', '76');
INSERT INTO `sys_role_sys_right` VALUES ('89', '81');
INSERT INTO `sys_role_sys_right` VALUES ('89', '105');
INSERT INTO `sys_role_sys_right` VALUES ('89', '174');
INSERT INTO `sys_role_sys_right` VALUES ('89', '175');
INSERT INTO `sys_role_sys_right` VALUES ('89', '176');
INSERT INTO `sys_role_sys_right` VALUES ('98', '17');
INSERT INTO `sys_role_sys_right` VALUES ('98', '18');
INSERT INTO `sys_role_sys_right` VALUES ('98', '19');
INSERT INTO `sys_role_sys_right` VALUES ('98', '20');
INSERT INTO `sys_role_sys_right` VALUES ('98', '21');
INSERT INTO `sys_role_sys_right` VALUES ('98', '24');
INSERT INTO `sys_role_sys_right` VALUES ('98', '26');
INSERT INTO `sys_role_sys_right` VALUES ('98', '34');
INSERT INTO `sys_role_sys_right` VALUES ('98', '35');
INSERT INTO `sys_role_sys_right` VALUES ('98', '36');
INSERT INTO `sys_role_sys_right` VALUES ('98', '56');
INSERT INTO `sys_role_sys_right` VALUES ('98', '61');
INSERT INTO `sys_role_sys_right` VALUES ('98', '62');
INSERT INTO `sys_role_sys_right` VALUES ('98', '144');
INSERT INTO `sys_role_sys_right` VALUES ('99', '17');
INSERT INTO `sys_role_sys_right` VALUES ('99', '27');
INSERT INTO `sys_role_sys_right` VALUES ('99', '28');
INSERT INTO `sys_role_sys_right` VALUES ('99', '177');
INSERT INTO `sys_role_sys_right` VALUES ('102', '178');
INSERT INTO `sys_role_sys_right` VALUES ('102', '179');
INSERT INTO `sys_role_sys_right` VALUES ('71', '17');
INSERT INTO `sys_role_sys_right` VALUES ('71', '22');
INSERT INTO `sys_role_sys_right` VALUES ('71', '57');
INSERT INTO `sys_role_sys_right` VALUES ('71', '63');
INSERT INTO `sys_role_sys_right` VALUES ('71', '83');
INSERT INTO `sys_role_sys_right` VALUES ('71', '85');
INSERT INTO `sys_role_sys_right` VALUES ('71', '86');
INSERT INTO `sys_role_sys_right` VALUES ('71', '89');
INSERT INTO `sys_role_sys_right` VALUES ('71', '90');
INSERT INTO `sys_role_sys_right` VALUES ('71', '105');
INSERT INTO `sys_role_sys_right` VALUES ('71', '106');
INSERT INTO `sys_role_sys_right` VALUES ('71', '113');
INSERT INTO `sys_role_sys_right` VALUES ('71', '114');
INSERT INTO `sys_role_sys_right` VALUES ('71', '115');
INSERT INTO `sys_role_sys_right` VALUES ('71', '116');
INSERT INTO `sys_role_sys_right` VALUES ('71', '117');
INSERT INTO `sys_role_sys_right` VALUES ('71', '118');
INSERT INTO `sys_role_sys_right` VALUES ('71', '119');
INSERT INTO `sys_role_sys_right` VALUES ('71', '120');
INSERT INTO `sys_role_sys_right` VALUES ('71', '121');
INSERT INTO `sys_role_sys_right` VALUES ('71', '157');
INSERT INTO `sys_role_sys_right` VALUES ('71', '158');
INSERT INTO `sys_role_sys_right` VALUES ('71', '159');
INSERT INTO `sys_role_sys_right` VALUES ('71', '160');
INSERT INTO `sys_role_sys_right` VALUES ('71', '197');
INSERT INTO `sys_role_sys_right` VALUES ('72', '17');
INSERT INTO `sys_role_sys_right` VALUES ('72', '22');
INSERT INTO `sys_role_sys_right` VALUES ('72', '53');
INSERT INTO `sys_role_sys_right` VALUES ('72', '57');
INSERT INTO `sys_role_sys_right` VALUES ('72', '63');
INSERT INTO `sys_role_sys_right` VALUES ('72', '79');
INSERT INTO `sys_role_sys_right` VALUES ('72', '82');
INSERT INTO `sys_role_sys_right` VALUES ('72', '83');
INSERT INTO `sys_role_sys_right` VALUES ('72', '84');
INSERT INTO `sys_role_sys_right` VALUES ('72', '85');
INSERT INTO `sys_role_sys_right` VALUES ('72', '86');
INSERT INTO `sys_role_sys_right` VALUES ('72', '89');
INSERT INTO `sys_role_sys_right` VALUES ('72', '90');
INSERT INTO `sys_role_sys_right` VALUES ('72', '103');
INSERT INTO `sys_role_sys_right` VALUES ('72', '105');
INSERT INTO `sys_role_sys_right` VALUES ('72', '106');
INSERT INTO `sys_role_sys_right` VALUES ('72', '111');
INSERT INTO `sys_role_sys_right` VALUES ('72', '113');
INSERT INTO `sys_role_sys_right` VALUES ('72', '114');
INSERT INTO `sys_role_sys_right` VALUES ('72', '115');
INSERT INTO `sys_role_sys_right` VALUES ('72', '116');
INSERT INTO `sys_role_sys_right` VALUES ('72', '117');
INSERT INTO `sys_role_sys_right` VALUES ('72', '118');
INSERT INTO `sys_role_sys_right` VALUES ('72', '119');
INSERT INTO `sys_role_sys_right` VALUES ('72', '120');
INSERT INTO `sys_role_sys_right` VALUES ('72', '121');
INSERT INTO `sys_role_sys_right` VALUES ('72', '122');
INSERT INTO `sys_role_sys_right` VALUES ('72', '143');
INSERT INTO `sys_role_sys_right` VALUES ('72', '157');
INSERT INTO `sys_role_sys_right` VALUES ('72', '158');
INSERT INTO `sys_role_sys_right` VALUES ('72', '159');
INSERT INTO `sys_role_sys_right` VALUES ('72', '160');
INSERT INTO `sys_role_sys_right` VALUES ('72', '197');
INSERT INTO `sys_role_sys_right` VALUES ('72', '198');
INSERT INTO `sys_role_sys_right` VALUES ('103', '17');
INSERT INTO `sys_role_sys_right` VALUES ('103', '18');
INSERT INTO `sys_role_sys_right` VALUES ('103', '19');
INSERT INTO `sys_role_sys_right` VALUES ('103', '20');
INSERT INTO `sys_role_sys_right` VALUES ('103', '21');
INSERT INTO `sys_role_sys_right` VALUES ('103', '22');
INSERT INTO `sys_role_sys_right` VALUES ('103', '24');
INSERT INTO `sys_role_sys_right` VALUES ('103', '26');
INSERT INTO `sys_role_sys_right` VALUES ('103', '27');
INSERT INTO `sys_role_sys_right` VALUES ('103', '28');
INSERT INTO `sys_role_sys_right` VALUES ('103', '29');
INSERT INTO `sys_role_sys_right` VALUES ('103', '30');
INSERT INTO `sys_role_sys_right` VALUES ('103', '34');
INSERT INTO `sys_role_sys_right` VALUES ('103', '35');
INSERT INTO `sys_role_sys_right` VALUES ('103', '36');
INSERT INTO `sys_role_sys_right` VALUES ('103', '37');
INSERT INTO `sys_role_sys_right` VALUES ('103', '38');
INSERT INTO `sys_role_sys_right` VALUES ('103', '39');
INSERT INTO `sys_role_sys_right` VALUES ('103', '96');
INSERT INTO `sys_role_sys_right` VALUES ('103', '102');
INSERT INTO `sys_role_sys_right` VALUES ('103', '105');
INSERT INTO `sys_role_sys_right` VALUES ('103', '127');
INSERT INTO `sys_role_sys_right` VALUES ('103', '144');
INSERT INTO `sys_role_sys_right` VALUES ('103', '205');
INSERT INTO `sys_role_sys_right` VALUES ('103', '206');
INSERT INTO `sys_role_sys_right` VALUES ('104', '17');
INSERT INTO `sys_role_sys_right` VALUES ('104', '21');
INSERT INTO `sys_role_sys_right` VALUES ('104', '199');
INSERT INTO `sys_role_sys_right` VALUES ('104', '200');
INSERT INTO `sys_role_sys_right` VALUES ('104', '201');
INSERT INTO `sys_role_sys_right` VALUES ('105', '17');
INSERT INTO `sys_role_sys_right` VALUES ('105', '21');
INSERT INTO `sys_role_sys_right` VALUES ('105', '199');
INSERT INTO `sys_role_sys_right` VALUES ('105', '200');
INSERT INTO `sys_role_sys_right` VALUES ('106', '17');
INSERT INTO `sys_role_sys_right` VALUES ('106', '21');
INSERT INTO `sys_role_sys_right` VALUES ('106', '199');
INSERT INTO `sys_role_sys_right` VALUES ('106', '201');
INSERT INTO `sys_role_sys_right` VALUES ('92', '17');
INSERT INTO `sys_role_sys_right` VALUES ('92', '22');
INSERT INTO `sys_role_sys_right` VALUES ('92', '24');
INSERT INTO `sys_role_sys_right` VALUES ('92', '25');
INSERT INTO `sys_role_sys_right` VALUES ('92', '70');
INSERT INTO `sys_role_sys_right` VALUES ('92', '74');
INSERT INTO `sys_role_sys_right` VALUES ('92', '75');
INSERT INTO `sys_role_sys_right` VALUES ('92', '76');
INSERT INTO `sys_role_sys_right` VALUES ('92', '105');
INSERT INTO `sys_role_sys_right` VALUES ('92', '107');
INSERT INTO `sys_role_sys_right` VALUES ('92', '108');
INSERT INTO `sys_role_sys_right` VALUES ('92', '109');
INSERT INTO `sys_role_sys_right` VALUES ('92', '110');
INSERT INTO `sys_role_sys_right` VALUES ('92', '150');
INSERT INTO `sys_role_sys_right` VALUES ('92', '151');
INSERT INTO `sys_role_sys_right` VALUES ('92', '152');
INSERT INTO `sys_role_sys_right` VALUES ('92', '153');
INSERT INTO `sys_role_sys_right` VALUES ('92', '154');
INSERT INTO `sys_role_sys_right` VALUES ('92', '244');
INSERT INTO `sys_role_sys_right` VALUES ('92', '247');
INSERT INTO `sys_role_sys_right` VALUES ('88', '17');
INSERT INTO `sys_role_sys_right` VALUES ('88', '22');
INSERT INTO `sys_role_sys_right` VALUES ('88', '24');
INSERT INTO `sys_role_sys_right` VALUES ('88', '66');
INSERT INTO `sys_role_sys_right` VALUES ('88', '67');
INSERT INTO `sys_role_sys_right` VALUES ('88', '70');
INSERT INTO `sys_role_sys_right` VALUES ('88', '71');
INSERT INTO `sys_role_sys_right` VALUES ('88', '72');
INSERT INTO `sys_role_sys_right` VALUES ('88', '73');
INSERT INTO `sys_role_sys_right` VALUES ('88', '74');
INSERT INTO `sys_role_sys_right` VALUES ('88', '75');
INSERT INTO `sys_role_sys_right` VALUES ('88', '76');
INSERT INTO `sys_role_sys_right` VALUES ('88', '81');
INSERT INTO `sys_role_sys_right` VALUES ('88', '105');
INSERT INTO `sys_role_sys_right` VALUES ('88', '151');
INSERT INTO `sys_role_sys_right` VALUES ('88', '152');
INSERT INTO `sys_role_sys_right` VALUES ('88', '153');
INSERT INTO `sys_role_sys_right` VALUES ('88', '154');
INSERT INTO `sys_role_sys_right` VALUES ('88', '208');
INSERT INTO `sys_role_sys_right` VALUES ('88', '244');
INSERT INTO `sys_role_sys_right` VALUES ('88', '247');
INSERT INTO `sys_role_sys_right` VALUES ('16', '17');
INSERT INTO `sys_role_sys_right` VALUES ('16', '18');
INSERT INTO `sys_role_sys_right` VALUES ('16', '19');
INSERT INTO `sys_role_sys_right` VALUES ('16', '20');
INSERT INTO `sys_role_sys_right` VALUES ('16', '21');
INSERT INTO `sys_role_sys_right` VALUES ('16', '22');
INSERT INTO `sys_role_sys_right` VALUES ('16', '24');
INSERT INTO `sys_role_sys_right` VALUES ('16', '26');
INSERT INTO `sys_role_sys_right` VALUES ('16', '27');
INSERT INTO `sys_role_sys_right` VALUES ('16', '28');
INSERT INTO `sys_role_sys_right` VALUES ('16', '29');
INSERT INTO `sys_role_sys_right` VALUES ('16', '34');
INSERT INTO `sys_role_sys_right` VALUES ('16', '35');
INSERT INTO `sys_role_sys_right` VALUES ('16', '36');
INSERT INTO `sys_role_sys_right` VALUES ('16', '37');
INSERT INTO `sys_role_sys_right` VALUES ('16', '38');
INSERT INTO `sys_role_sys_right` VALUES ('16', '39');
INSERT INTO `sys_role_sys_right` VALUES ('16', '40');
INSERT INTO `sys_role_sys_right` VALUES ('16', '41');
INSERT INTO `sys_role_sys_right` VALUES ('16', '42');
INSERT INTO `sys_role_sys_right` VALUES ('16', '43');
INSERT INTO `sys_role_sys_right` VALUES ('16', '44');
INSERT INTO `sys_role_sys_right` VALUES ('16', '45');
INSERT INTO `sys_role_sys_right` VALUES ('16', '46');
INSERT INTO `sys_role_sys_right` VALUES ('16', '47');
INSERT INTO `sys_role_sys_right` VALUES ('16', '48');
INSERT INTO `sys_role_sys_right` VALUES ('16', '49');
INSERT INTO `sys_role_sys_right` VALUES ('16', '50');
INSERT INTO `sys_role_sys_right` VALUES ('16', '51');
INSERT INTO `sys_role_sys_right` VALUES ('16', '52');
INSERT INTO `sys_role_sys_right` VALUES ('16', '63');
INSERT INTO `sys_role_sys_right` VALUES ('16', '83');
INSERT INTO `sys_role_sys_right` VALUES ('16', '85');
INSERT INTO `sys_role_sys_right` VALUES ('16', '90');
INSERT INTO `sys_role_sys_right` VALUES ('16', '96');
INSERT INTO `sys_role_sys_right` VALUES ('16', '102');
INSERT INTO `sys_role_sys_right` VALUES ('16', '105');
INSERT INTO `sys_role_sys_right` VALUES ('16', '106');
INSERT INTO `sys_role_sys_right` VALUES ('16', '114');
INSERT INTO `sys_role_sys_right` VALUES ('16', '116');
INSERT INTO `sys_role_sys_right` VALUES ('16', '118');
INSERT INTO `sys_role_sys_right` VALUES ('16', '120');
INSERT INTO `sys_role_sys_right` VALUES ('16', '121');
INSERT INTO `sys_role_sys_right` VALUES ('16', '125');
INSERT INTO `sys_role_sys_right` VALUES ('16', '126');
INSERT INTO `sys_role_sys_right` VALUES ('16', '127');
INSERT INTO `sys_role_sys_right` VALUES ('16', '128');
INSERT INTO `sys_role_sys_right` VALUES ('16', '132');
INSERT INTO `sys_role_sys_right` VALUES ('16', '133');
INSERT INTO `sys_role_sys_right` VALUES ('16', '134');
INSERT INTO `sys_role_sys_right` VALUES ('16', '135');
INSERT INTO `sys_role_sys_right` VALUES ('16', '136');
INSERT INTO `sys_role_sys_right` VALUES ('16', '137');
INSERT INTO `sys_role_sys_right` VALUES ('16', '138');
INSERT INTO `sys_role_sys_right` VALUES ('16', '139');
INSERT INTO `sys_role_sys_right` VALUES ('16', '140');
INSERT INTO `sys_role_sys_right` VALUES ('16', '141');
INSERT INTO `sys_role_sys_right` VALUES ('16', '144');
INSERT INTO `sys_role_sys_right` VALUES ('16', '146');
INSERT INTO `sys_role_sys_right` VALUES ('16', '159');
INSERT INTO `sys_role_sys_right` VALUES ('16', '160');
INSERT INTO `sys_role_sys_right` VALUES ('16', '162');
INSERT INTO `sys_role_sys_right` VALUES ('16', '234');
INSERT INTO `sys_role_sys_right` VALUES ('100', '1');
INSERT INTO `sys_role_sys_right` VALUES ('100', '2');
INSERT INTO `sys_role_sys_right` VALUES ('100', '3');
INSERT INTO `sys_role_sys_right` VALUES ('100', '4');
INSERT INTO `sys_role_sys_right` VALUES ('100', '5');
INSERT INTO `sys_role_sys_right` VALUES ('100', '6');
INSERT INTO `sys_role_sys_right` VALUES ('100', '7');
INSERT INTO `sys_role_sys_right` VALUES ('100', '8');
INSERT INTO `sys_role_sys_right` VALUES ('100', '9');
INSERT INTO `sys_role_sys_right` VALUES ('100', '10');
INSERT INTO `sys_role_sys_right` VALUES ('100', '11');
INSERT INTO `sys_role_sys_right` VALUES ('100', '12');
INSERT INTO `sys_role_sys_right` VALUES ('100', '13');
INSERT INTO `sys_role_sys_right` VALUES ('100', '17');
INSERT INTO `sys_role_sys_right` VALUES ('100', '18');
INSERT INTO `sys_role_sys_right` VALUES ('100', '19');
INSERT INTO `sys_role_sys_right` VALUES ('100', '20');
INSERT INTO `sys_role_sys_right` VALUES ('100', '21');
INSERT INTO `sys_role_sys_right` VALUES ('100', '24');
INSERT INTO `sys_role_sys_right` VALUES ('100', '25');
INSERT INTO `sys_role_sys_right` VALUES ('100', '26');
INSERT INTO `sys_role_sys_right` VALUES ('100', '27');
INSERT INTO `sys_role_sys_right` VALUES ('100', '28');
INSERT INTO `sys_role_sys_right` VALUES ('100', '29');
INSERT INTO `sys_role_sys_right` VALUES ('100', '30');
INSERT INTO `sys_role_sys_right` VALUES ('100', '31');
INSERT INTO `sys_role_sys_right` VALUES ('100', '32');
INSERT INTO `sys_role_sys_right` VALUES ('100', '33');
INSERT INTO `sys_role_sys_right` VALUES ('100', '34');
INSERT INTO `sys_role_sys_right` VALUES ('100', '35');
INSERT INTO `sys_role_sys_right` VALUES ('100', '36');
INSERT INTO `sys_role_sys_right` VALUES ('100', '37');
INSERT INTO `sys_role_sys_right` VALUES ('100', '38');
INSERT INTO `sys_role_sys_right` VALUES ('100', '39');
INSERT INTO `sys_role_sys_right` VALUES ('100', '40');
INSERT INTO `sys_role_sys_right` VALUES ('100', '41');
INSERT INTO `sys_role_sys_right` VALUES ('100', '42');
INSERT INTO `sys_role_sys_right` VALUES ('100', '43');
INSERT INTO `sys_role_sys_right` VALUES ('100', '44');
INSERT INTO `sys_role_sys_right` VALUES ('100', '45');
INSERT INTO `sys_role_sys_right` VALUES ('100', '46');
INSERT INTO `sys_role_sys_right` VALUES ('100', '47');
INSERT INTO `sys_role_sys_right` VALUES ('100', '48');
INSERT INTO `sys_role_sys_right` VALUES ('100', '49');
INSERT INTO `sys_role_sys_right` VALUES ('100', '50');
INSERT INTO `sys_role_sys_right` VALUES ('100', '51');
INSERT INTO `sys_role_sys_right` VALUES ('100', '52');
INSERT INTO `sys_role_sys_right` VALUES ('100', '53');
INSERT INTO `sys_role_sys_right` VALUES ('100', '54');
INSERT INTO `sys_role_sys_right` VALUES ('100', '55');
INSERT INTO `sys_role_sys_right` VALUES ('100', '56');
INSERT INTO `sys_role_sys_right` VALUES ('100', '58');
INSERT INTO `sys_role_sys_right` VALUES ('100', '59');
INSERT INTO `sys_role_sys_right` VALUES ('100', '61');
INSERT INTO `sys_role_sys_right` VALUES ('100', '62');
INSERT INTO `sys_role_sys_right` VALUES ('100', '65');
INSERT INTO `sys_role_sys_right` VALUES ('100', '66');
INSERT INTO `sys_role_sys_right` VALUES ('100', '67');
INSERT INTO `sys_role_sys_right` VALUES ('100', '68');
INSERT INTO `sys_role_sys_right` VALUES ('100', '69');
INSERT INTO `sys_role_sys_right` VALUES ('100', '71');
INSERT INTO `sys_role_sys_right` VALUES ('100', '72');
INSERT INTO `sys_role_sys_right` VALUES ('100', '73');
INSERT INTO `sys_role_sys_right` VALUES ('100', '74');
INSERT INTO `sys_role_sys_right` VALUES ('100', '75');
INSERT INTO `sys_role_sys_right` VALUES ('100', '76');
INSERT INTO `sys_role_sys_right` VALUES ('100', '77');
INSERT INTO `sys_role_sys_right` VALUES ('100', '80');
INSERT INTO `sys_role_sys_right` VALUES ('100', '81');
INSERT INTO `sys_role_sys_right` VALUES ('100', '82');
INSERT INTO `sys_role_sys_right` VALUES ('100', '83');
INSERT INTO `sys_role_sys_right` VALUES ('100', '84');
INSERT INTO `sys_role_sys_right` VALUES ('100', '87');
INSERT INTO `sys_role_sys_right` VALUES ('100', '88');
INSERT INTO `sys_role_sys_right` VALUES ('100', '96');
INSERT INTO `sys_role_sys_right` VALUES ('100', '97');
INSERT INTO `sys_role_sys_right` VALUES ('100', '98');
INSERT INTO `sys_role_sys_right` VALUES ('100', '99');
INSERT INTO `sys_role_sys_right` VALUES ('100', '100');
INSERT INTO `sys_role_sys_right` VALUES ('100', '101');
INSERT INTO `sys_role_sys_right` VALUES ('100', '102');
INSERT INTO `sys_role_sys_right` VALUES ('100', '103');
INSERT INTO `sys_role_sys_right` VALUES ('100', '104');
INSERT INTO `sys_role_sys_right` VALUES ('100', '106');
INSERT INTO `sys_role_sys_right` VALUES ('100', '107');
INSERT INTO `sys_role_sys_right` VALUES ('100', '108');
INSERT INTO `sys_role_sys_right` VALUES ('100', '109');
INSERT INTO `sys_role_sys_right` VALUES ('100', '110');
INSERT INTO `sys_role_sys_right` VALUES ('100', '111');
INSERT INTO `sys_role_sys_right` VALUES ('100', '112');
INSERT INTO `sys_role_sys_right` VALUES ('100', '121');
INSERT INTO `sys_role_sys_right` VALUES ('100', '122');
INSERT INTO `sys_role_sys_right` VALUES ('100', '123');
INSERT INTO `sys_role_sys_right` VALUES ('100', '124');
INSERT INTO `sys_role_sys_right` VALUES ('100', '125');
INSERT INTO `sys_role_sys_right` VALUES ('100', '126');
INSERT INTO `sys_role_sys_right` VALUES ('100', '127');
INSERT INTO `sys_role_sys_right` VALUES ('100', '128');
INSERT INTO `sys_role_sys_right` VALUES ('100', '129');
INSERT INTO `sys_role_sys_right` VALUES ('100', '132');
INSERT INTO `sys_role_sys_right` VALUES ('100', '133');
INSERT INTO `sys_role_sys_right` VALUES ('100', '134');
INSERT INTO `sys_role_sys_right` VALUES ('100', '135');
INSERT INTO `sys_role_sys_right` VALUES ('100', '136');
INSERT INTO `sys_role_sys_right` VALUES ('100', '137');
INSERT INTO `sys_role_sys_right` VALUES ('100', '138');
INSERT INTO `sys_role_sys_right` VALUES ('100', '139');
INSERT INTO `sys_role_sys_right` VALUES ('100', '140');
INSERT INTO `sys_role_sys_right` VALUES ('100', '141');
INSERT INTO `sys_role_sys_right` VALUES ('100', '143');
INSERT INTO `sys_role_sys_right` VALUES ('100', '144');
INSERT INTO `sys_role_sys_right` VALUES ('100', '145');
INSERT INTO `sys_role_sys_right` VALUES ('100', '146');
INSERT INTO `sys_role_sys_right` VALUES ('100', '147');
INSERT INTO `sys_role_sys_right` VALUES ('100', '148');
INSERT INTO `sys_role_sys_right` VALUES ('100', '149');
INSERT INTO `sys_role_sys_right` VALUES ('100', '150');
INSERT INTO `sys_role_sys_right` VALUES ('100', '151');
INSERT INTO `sys_role_sys_right` VALUES ('100', '152');
INSERT INTO `sys_role_sys_right` VALUES ('100', '153');
INSERT INTO `sys_role_sys_right` VALUES ('100', '154');
INSERT INTO `sys_role_sys_right` VALUES ('100', '155');
INSERT INTO `sys_role_sys_right` VALUES ('100', '156');
INSERT INTO `sys_role_sys_right` VALUES ('100', '161');
INSERT INTO `sys_role_sys_right` VALUES ('100', '162');
INSERT INTO `sys_role_sys_right` VALUES ('100', '163');
INSERT INTO `sys_role_sys_right` VALUES ('100', '164');
INSERT INTO `sys_role_sys_right` VALUES ('100', '167');
INSERT INTO `sys_role_sys_right` VALUES ('100', '168');
INSERT INTO `sys_role_sys_right` VALUES ('100', '170');
INSERT INTO `sys_role_sys_right` VALUES ('100', '171');
INSERT INTO `sys_role_sys_right` VALUES ('100', '172');
INSERT INTO `sys_role_sys_right` VALUES ('100', '173');
INSERT INTO `sys_role_sys_right` VALUES ('100', '174');
INSERT INTO `sys_role_sys_right` VALUES ('100', '175');
INSERT INTO `sys_role_sys_right` VALUES ('100', '176');
INSERT INTO `sys_role_sys_right` VALUES ('100', '177');
INSERT INTO `sys_role_sys_right` VALUES ('100', '190');
INSERT INTO `sys_role_sys_right` VALUES ('100', '191');
INSERT INTO `sys_role_sys_right` VALUES ('100', '192');
INSERT INTO `sys_role_sys_right` VALUES ('100', '193');
INSERT INTO `sys_role_sys_right` VALUES ('100', '194');
INSERT INTO `sys_role_sys_right` VALUES ('100', '195');
INSERT INTO `sys_role_sys_right` VALUES ('100', '196');
INSERT INTO `sys_role_sys_right` VALUES ('100', '199');
INSERT INTO `sys_role_sys_right` VALUES ('100', '200');
INSERT INTO `sys_role_sys_right` VALUES ('100', '201');
INSERT INTO `sys_role_sys_right` VALUES ('100', '202');
INSERT INTO `sys_role_sys_right` VALUES ('100', '203');
INSERT INTO `sys_role_sys_right` VALUES ('100', '204');
INSERT INTO `sys_role_sys_right` VALUES ('100', '207');
INSERT INTO `sys_role_sys_right` VALUES ('100', '208');
INSERT INTO `sys_role_sys_right` VALUES ('100', '219');
INSERT INTO `sys_role_sys_right` VALUES ('100', '220');
INSERT INTO `sys_role_sys_right` VALUES ('100', '221');
INSERT INTO `sys_role_sys_right` VALUES ('100', '222');
INSERT INTO `sys_role_sys_right` VALUES ('100', '226');
INSERT INTO `sys_role_sys_right` VALUES ('100', '227');
INSERT INTO `sys_role_sys_right` VALUES ('100', '228');
INSERT INTO `sys_role_sys_right` VALUES ('100', '229');
INSERT INTO `sys_role_sys_right` VALUES ('100', '231');
INSERT INTO `sys_role_sys_right` VALUES ('100', '232');
INSERT INTO `sys_role_sys_right` VALUES ('100', '233');
INSERT INTO `sys_role_sys_right` VALUES ('100', '234');
INSERT INTO `sys_role_sys_right` VALUES ('100', '235');
INSERT INTO `sys_role_sys_right` VALUES ('100', '236');
INSERT INTO `sys_role_sys_right` VALUES ('100', '237');
INSERT INTO `sys_role_sys_right` VALUES ('100', '238');
INSERT INTO `sys_role_sys_right` VALUES ('100', '239');
INSERT INTO `sys_role_sys_right` VALUES ('100', '240');
INSERT INTO `sys_role_sys_right` VALUES ('100', '241');
INSERT INTO `sys_role_sys_right` VALUES ('100', '242');
INSERT INTO `sys_role_sys_right` VALUES ('100', '243');
INSERT INTO `sys_role_sys_right` VALUES ('100', '247');
INSERT INTO `sys_role_sys_right` VALUES ('100', '249');
INSERT INTO `sys_role_sys_right` VALUES ('100', '250');
INSERT INTO `sys_role_sys_right` VALUES ('100', '251');
INSERT INTO `sys_role_sys_right` VALUES ('42', '17');
INSERT INTO `sys_role_sys_right` VALUES ('42', '24');
INSERT INTO `sys_role_sys_right` VALUES ('42', '26');
INSERT INTO `sys_role_sys_right` VALUES ('42', '37');
INSERT INTO `sys_role_sys_right` VALUES ('42', '38');
INSERT INTO `sys_role_sys_right` VALUES ('42', '39');
INSERT INTO `sys_role_sys_right` VALUES ('42', '40');
INSERT INTO `sys_role_sys_right` VALUES ('42', '41');
INSERT INTO `sys_role_sys_right` VALUES ('42', '42');
INSERT INTO `sys_role_sys_right` VALUES ('42', '43');
INSERT INTO `sys_role_sys_right` VALUES ('42', '44');
INSERT INTO `sys_role_sys_right` VALUES ('42', '45');
INSERT INTO `sys_role_sys_right` VALUES ('42', '46');
INSERT INTO `sys_role_sys_right` VALUES ('42', '47');
INSERT INTO `sys_role_sys_right` VALUES ('42', '48');
INSERT INTO `sys_role_sys_right` VALUES ('42', '49');
INSERT INTO `sys_role_sys_right` VALUES ('42', '50');
INSERT INTO `sys_role_sys_right` VALUES ('42', '51');
INSERT INTO `sys_role_sys_right` VALUES ('42', '125');
INSERT INTO `sys_role_sys_right` VALUES ('42', '126');
INSERT INTO `sys_role_sys_right` VALUES ('42', '129');
INSERT INTO `sys_role_sys_right` VALUES ('42', '132');
INSERT INTO `sys_role_sys_right` VALUES ('42', '133');
INSERT INTO `sys_role_sys_right` VALUES ('42', '134');
INSERT INTO `sys_role_sys_right` VALUES ('42', '135');
INSERT INTO `sys_role_sys_right` VALUES ('42', '136');
INSERT INTO `sys_role_sys_right` VALUES ('42', '137');
INSERT INTO `sys_role_sys_right` VALUES ('42', '138');
INSERT INTO `sys_role_sys_right` VALUES ('42', '139');
INSERT INTO `sys_role_sys_right` VALUES ('42', '140');
INSERT INTO `sys_role_sys_right` VALUES ('42', '141');
INSERT INTO `sys_role_sys_right` VALUES ('42', '144');
INSERT INTO `sys_role_sys_right` VALUES ('42', '162');
INSERT INTO `sys_role_sys_right` VALUES ('110', '17');
INSERT INTO `sys_role_sys_right` VALUES ('110', '24');
INSERT INTO `sys_role_sys_right` VALUES ('110', '26');
INSERT INTO `sys_role_sys_right` VALUES ('110', '144');
INSERT INTO `sys_role_sys_right` VALUES ('85', '17');
INSERT INTO `sys_role_sys_right` VALUES ('85', '24');
INSERT INTO `sys_role_sys_right` VALUES ('85', '26');
INSERT INTO `sys_role_sys_right` VALUES ('85', '49');
INSERT INTO `sys_role_sys_right` VALUES ('85', '103');
INSERT INTO `sys_role_sys_right` VALUES ('85', '124');
INSERT INTO `sys_role_sys_right` VALUES ('85', '132');
INSERT INTO `sys_role_sys_right` VALUES ('85', '133');
INSERT INTO `sys_role_sys_right` VALUES ('85', '134');
INSERT INTO `sys_role_sys_right` VALUES ('85', '135');
INSERT INTO `sys_role_sys_right` VALUES ('85', '136');
INSERT INTO `sys_role_sys_right` VALUES ('85', '138');
INSERT INTO `sys_role_sys_right` VALUES ('85', '139');
INSERT INTO `sys_role_sys_right` VALUES ('85', '140');
INSERT INTO `sys_role_sys_right` VALUES ('85', '141');
INSERT INTO `sys_role_sys_right` VALUES ('85', '144');
INSERT INTO `sys_role_sys_right` VALUES ('85', '146');
INSERT INTO `sys_role_sys_right` VALUES ('85', '253');
INSERT INTO `sys_role_sys_right` VALUES ('108', '226');
INSERT INTO `sys_role_sys_right` VALUES ('108', '227');
INSERT INTO `sys_role_sys_right` VALUES ('108', '228');
INSERT INTO `sys_role_sys_right` VALUES ('108', '229');
INSERT INTO `sys_role_sys_right` VALUES ('108', '261');
INSERT INTO `sys_role_sys_right` VALUES ('109', '17');
INSERT INTO `sys_role_sys_right` VALUES ('109', '37');
INSERT INTO `sys_role_sys_right` VALUES ('109', '40');
INSERT INTO `sys_role_sys_right` VALUES ('109', '43');
INSERT INTO `sys_role_sys_right` VALUES ('109', '44');
INSERT INTO `sys_role_sys_right` VALUES ('109', '45');
INSERT INTO `sys_role_sys_right` VALUES ('109', '46');
INSERT INTO `sys_role_sys_right` VALUES ('109', '47');
INSERT INTO `sys_role_sys_right` VALUES ('109', '48');
INSERT INTO `sys_role_sys_right` VALUES ('109', '49');
INSERT INTO `sys_role_sys_right` VALUES ('109', '50');
INSERT INTO `sys_role_sys_right` VALUES ('109', '51');
INSERT INTO `sys_role_sys_right` VALUES ('109', '106');
INSERT INTO `sys_role_sys_right` VALUES ('109', '121');
INSERT INTO `sys_role_sys_right` VALUES ('109', '123');
INSERT INTO `sys_role_sys_right` VALUES ('109', '235');
INSERT INTO `sys_role_sys_right` VALUES ('109', '236');
INSERT INTO `sys_role_sys_right` VALUES ('109', '237');
INSERT INTO `sys_role_sys_right` VALUES ('109', '238');
INSERT INTO `sys_role_sys_right` VALUES ('109', '239');
INSERT INTO `sys_role_sys_right` VALUES ('109', '240');
INSERT INTO `sys_role_sys_right` VALUES ('109', '241');
INSERT INTO `sys_role_sys_right` VALUES ('109', '242');
INSERT INTO `sys_role_sys_right` VALUES ('109', '243');
INSERT INTO `sys_role_sys_right` VALUES ('111', '17');
INSERT INTO `sys_role_sys_right` VALUES ('111', '256');
INSERT INTO `sys_role_sys_right` VALUES ('111', '257');
INSERT INTO `sys_role_sys_right` VALUES ('111', '260');
INSERT INTO `sys_role_sys_right` VALUES ('112', '5');
INSERT INTO `sys_role_sys_right` VALUES ('112', '262');
INSERT INTO `sys_role_sys_right` VALUES ('113', '17');
INSERT INTO `sys_role_sys_right` VALUES ('113', '18');
INSERT INTO `sys_role_sys_right` VALUES ('113', '19');
INSERT INTO `sys_role_sys_right` VALUES ('113', '20');
INSERT INTO `sys_role_sys_right` VALUES ('113', '22');
INSERT INTO `sys_role_sys_right` VALUES ('113', '24');
INSERT INTO `sys_role_sys_right` VALUES ('113', '27');
INSERT INTO `sys_role_sys_right` VALUES ('113', '28');
INSERT INTO `sys_role_sys_right` VALUES ('113', '105');
INSERT INTO `sys_role_sys_right` VALUES ('113', '206');
INSERT INTO `sys_role_sys_right` VALUES ('113', '219');
INSERT INTO `sys_role_sys_right` VALUES ('113', '250');
INSERT INTO `sys_role_sys_right` VALUES ('113', '251');
INSERT INTO `sys_role_sys_right` VALUES ('101', '178');
INSERT INTO `sys_role_sys_right` VALUES ('101', '179');
INSERT INTO `sys_role_sys_right` VALUES ('101', '180');
INSERT INTO `sys_role_sys_right` VALUES ('101', '181');
INSERT INTO `sys_role_sys_right` VALUES ('101', '182');
INSERT INTO `sys_role_sys_right` VALUES ('101', '183');
INSERT INTO `sys_role_sys_right` VALUES ('101', '184');
INSERT INTO `sys_role_sys_right` VALUES ('101', '185');
INSERT INTO `sys_role_sys_right` VALUES ('101', '186');
INSERT INTO `sys_role_sys_right` VALUES ('101', '187');
INSERT INTO `sys_role_sys_right` VALUES ('101', '188');
INSERT INTO `sys_role_sys_right` VALUES ('101', '189');
INSERT INTO `sys_role_sys_right` VALUES ('101', '211');
INSERT INTO `sys_role_sys_right` VALUES ('101', '212');
INSERT INTO `sys_role_sys_right` VALUES ('101', '213');
INSERT INTO `sys_role_sys_right` VALUES ('101', '230');
INSERT INTO `sys_role_sys_right` VALUES ('90', '17');
INSERT INTO `sys_role_sys_right` VALUES ('90', '24');
INSERT INTO `sys_role_sys_right` VALUES ('90', '65');
INSERT INTO `sys_role_sys_right` VALUES ('90', '66');
INSERT INTO `sys_role_sys_right` VALUES ('90', '67');
INSERT INTO `sys_role_sys_right` VALUES ('90', '71');
INSERT INTO `sys_role_sys_right` VALUES ('90', '72');
INSERT INTO `sys_role_sys_right` VALUES ('90', '73');
INSERT INTO `sys_role_sys_right` VALUES ('90', '74');
INSERT INTO `sys_role_sys_right` VALUES ('90', '75');
INSERT INTO `sys_role_sys_right` VALUES ('90', '76');
INSERT INTO `sys_role_sys_right` VALUES ('90', '81');
INSERT INTO `sys_role_sys_right` VALUES ('90', '106');
INSERT INTO `sys_role_sys_right` VALUES ('90', '110');
INSERT INTO `sys_role_sys_right` VALUES ('90', '121');
INSERT INTO `sys_role_sys_right` VALUES ('90', '123');
INSERT INTO `sys_role_sys_right` VALUES ('90', '145');
INSERT INTO `sys_role_sys_right` VALUES ('90', '174');
INSERT INTO `sys_role_sys_right` VALUES ('90', '175');
INSERT INTO `sys_role_sys_right` VALUES ('90', '176');
INSERT INTO `sys_role_sys_right` VALUES ('90', '247');
INSERT INTO `sys_role_sys_right` VALUES ('90', '254');
INSERT INTO `sys_role_sys_right` VALUES ('107', '17');
INSERT INTO `sys_role_sys_right` VALUES ('107', '27');
INSERT INTO `sys_role_sys_right` VALUES ('107', '28');
INSERT INTO `sys_role_sys_right` VALUES ('107', '68');
INSERT INTO `sys_role_sys_right` VALUES ('5', '17');
INSERT INTO `sys_role_sys_right` VALUES ('5', '18');
INSERT INTO `sys_role_sys_right` VALUES ('5', '19');
INSERT INTO `sys_role_sys_right` VALUES ('5', '20');
INSERT INTO `sys_role_sys_right` VALUES ('5', '21');
INSERT INTO `sys_role_sys_right` VALUES ('5', '34');
INSERT INTO `sys_role_sys_right` VALUES ('5', '35');
INSERT INTO `sys_role_sys_right` VALUES ('5', '36');
INSERT INTO `sys_role_sys_right` VALUES ('5', '37');
INSERT INTO `sys_role_sys_right` VALUES ('5', '38');
INSERT INTO `sys_role_sys_right` VALUES ('5', '39');
INSERT INTO `sys_role_sys_right` VALUES ('5', '40');
INSERT INTO `sys_role_sys_right` VALUES ('5', '41');
INSERT INTO `sys_role_sys_right` VALUES ('5', '42');
INSERT INTO `sys_role_sys_right` VALUES ('5', '43');
INSERT INTO `sys_role_sys_right` VALUES ('5', '44');
INSERT INTO `sys_role_sys_right` VALUES ('5', '45');
INSERT INTO `sys_role_sys_right` VALUES ('5', '46');
INSERT INTO `sys_role_sys_right` VALUES ('5', '47');
INSERT INTO `sys_role_sys_right` VALUES ('5', '48');
INSERT INTO `sys_role_sys_right` VALUES ('5', '49');
INSERT INTO `sys_role_sys_right` VALUES ('5', '50');
INSERT INTO `sys_role_sys_right` VALUES ('5', '51');
INSERT INTO `sys_role_sys_right` VALUES ('5', '52');
INSERT INTO `sys_role_sys_right` VALUES ('5', '96');
INSERT INTO `sys_role_sys_right` VALUES ('5', '125');
INSERT INTO `sys_role_sys_right` VALUES ('5', '126');
INSERT INTO `sys_role_sys_right` VALUES ('5', '127');
INSERT INTO `sys_role_sys_right` VALUES ('5', '128');
INSERT INTO `sys_role_sys_right` VALUES ('5', '129');
INSERT INTO `sys_role_sys_right` VALUES ('5', '135');
INSERT INTO `sys_role_sys_right` VALUES ('5', '162');
INSERT INTO `sys_role_sys_right` VALUES ('5', '234');
INSERT INTO `sys_role_sys_right` VALUES ('5', '235');
INSERT INTO `sys_role_sys_right` VALUES ('5', '236');
INSERT INTO `sys_role_sys_right` VALUES ('5', '237');
INSERT INTO `sys_role_sys_right` VALUES ('5', '238');
INSERT INTO `sys_role_sys_right` VALUES ('5', '239');
INSERT INTO `sys_role_sys_right` VALUES ('5', '240');
INSERT INTO `sys_role_sys_right` VALUES ('5', '241');
INSERT INTO `sys_role_sys_right` VALUES ('5', '242');
INSERT INTO `sys_role_sys_right` VALUES ('5', '243');
INSERT INTO `sys_role_sys_right` VALUES ('5', '277');
INSERT INTO `sys_role_sys_right` VALUES ('5', '278');
INSERT INTO `sys_role_sys_right` VALUES ('1', '1');
INSERT INTO `sys_role_sys_right` VALUES ('1', '2');
INSERT INTO `sys_role_sys_right` VALUES ('1', '3');
INSERT INTO `sys_role_sys_right` VALUES ('1', '4');
INSERT INTO `sys_role_sys_right` VALUES ('1', '5');
INSERT INTO `sys_role_sys_right` VALUES ('1', '6');
INSERT INTO `sys_role_sys_right` VALUES ('1', '7');
INSERT INTO `sys_role_sys_right` VALUES ('1', '8');
INSERT INTO `sys_role_sys_right` VALUES ('1', '9');
INSERT INTO `sys_role_sys_right` VALUES ('1', '10');
INSERT INTO `sys_role_sys_right` VALUES ('1', '11');
INSERT INTO `sys_role_sys_right` VALUES ('1', '12');
INSERT INTO `sys_role_sys_right` VALUES ('1', '13');
INSERT INTO `sys_role_sys_right` VALUES ('1', '17');
INSERT INTO `sys_role_sys_right` VALUES ('1', '18');
INSERT INTO `sys_role_sys_right` VALUES ('1', '19');
INSERT INTO `sys_role_sys_right` VALUES ('1', '20');
INSERT INTO `sys_role_sys_right` VALUES ('1', '21');
INSERT INTO `sys_role_sys_right` VALUES ('1', '22');
INSERT INTO `sys_role_sys_right` VALUES ('1', '23');
INSERT INTO `sys_role_sys_right` VALUES ('1', '24');
INSERT INTO `sys_role_sys_right` VALUES ('1', '25');
INSERT INTO `sys_role_sys_right` VALUES ('1', '26');
INSERT INTO `sys_role_sys_right` VALUES ('1', '27');
INSERT INTO `sys_role_sys_right` VALUES ('1', '28');
INSERT INTO `sys_role_sys_right` VALUES ('1', '29');
INSERT INTO `sys_role_sys_right` VALUES ('1', '30');
INSERT INTO `sys_role_sys_right` VALUES ('1', '31');
INSERT INTO `sys_role_sys_right` VALUES ('1', '32');
INSERT INTO `sys_role_sys_right` VALUES ('1', '33');
INSERT INTO `sys_role_sys_right` VALUES ('1', '34');
INSERT INTO `sys_role_sys_right` VALUES ('1', '35');
INSERT INTO `sys_role_sys_right` VALUES ('1', '36');
INSERT INTO `sys_role_sys_right` VALUES ('1', '37');
INSERT INTO `sys_role_sys_right` VALUES ('1', '38');
INSERT INTO `sys_role_sys_right` VALUES ('1', '39');
INSERT INTO `sys_role_sys_right` VALUES ('1', '40');
INSERT INTO `sys_role_sys_right` VALUES ('1', '41');
INSERT INTO `sys_role_sys_right` VALUES ('1', '42');
INSERT INTO `sys_role_sys_right` VALUES ('1', '43');
INSERT INTO `sys_role_sys_right` VALUES ('1', '44');
INSERT INTO `sys_role_sys_right` VALUES ('1', '45');
INSERT INTO `sys_role_sys_right` VALUES ('1', '46');
INSERT INTO `sys_role_sys_right` VALUES ('1', '47');
INSERT INTO `sys_role_sys_right` VALUES ('1', '48');
INSERT INTO `sys_role_sys_right` VALUES ('1', '49');
INSERT INTO `sys_role_sys_right` VALUES ('1', '50');
INSERT INTO `sys_role_sys_right` VALUES ('1', '51');
INSERT INTO `sys_role_sys_right` VALUES ('1', '52');
INSERT INTO `sys_role_sys_right` VALUES ('1', '53');
INSERT INTO `sys_role_sys_right` VALUES ('1', '54');
INSERT INTO `sys_role_sys_right` VALUES ('1', '55');
INSERT INTO `sys_role_sys_right` VALUES ('1', '56');
INSERT INTO `sys_role_sys_right` VALUES ('1', '57');
INSERT INTO `sys_role_sys_right` VALUES ('1', '58');
INSERT INTO `sys_role_sys_right` VALUES ('1', '59');
INSERT INTO `sys_role_sys_right` VALUES ('1', '60');
INSERT INTO `sys_role_sys_right` VALUES ('1', '61');
INSERT INTO `sys_role_sys_right` VALUES ('1', '62');
INSERT INTO `sys_role_sys_right` VALUES ('1', '63');
INSERT INTO `sys_role_sys_right` VALUES ('1', '64');
INSERT INTO `sys_role_sys_right` VALUES ('1', '65');
INSERT INTO `sys_role_sys_right` VALUES ('1', '66');
INSERT INTO `sys_role_sys_right` VALUES ('1', '67');
INSERT INTO `sys_role_sys_right` VALUES ('1', '68');
INSERT INTO `sys_role_sys_right` VALUES ('1', '69');
INSERT INTO `sys_role_sys_right` VALUES ('1', '70');
INSERT INTO `sys_role_sys_right` VALUES ('1', '71');
INSERT INTO `sys_role_sys_right` VALUES ('1', '72');
INSERT INTO `sys_role_sys_right` VALUES ('1', '73');
INSERT INTO `sys_role_sys_right` VALUES ('1', '74');
INSERT INTO `sys_role_sys_right` VALUES ('1', '75');
INSERT INTO `sys_role_sys_right` VALUES ('1', '76');
INSERT INTO `sys_role_sys_right` VALUES ('1', '77');
INSERT INTO `sys_role_sys_right` VALUES ('1', '78');
INSERT INTO `sys_role_sys_right` VALUES ('1', '79');
INSERT INTO `sys_role_sys_right` VALUES ('1', '80');
INSERT INTO `sys_role_sys_right` VALUES ('1', '81');
INSERT INTO `sys_role_sys_right` VALUES ('1', '82');
INSERT INTO `sys_role_sys_right` VALUES ('1', '83');
INSERT INTO `sys_role_sys_right` VALUES ('1', '84');
INSERT INTO `sys_role_sys_right` VALUES ('1', '85');
INSERT INTO `sys_role_sys_right` VALUES ('1', '86');
INSERT INTO `sys_role_sys_right` VALUES ('1', '87');
INSERT INTO `sys_role_sys_right` VALUES ('1', '88');
INSERT INTO `sys_role_sys_right` VALUES ('1', '89');
INSERT INTO `sys_role_sys_right` VALUES ('1', '90');
INSERT INTO `sys_role_sys_right` VALUES ('1', '91');
INSERT INTO `sys_role_sys_right` VALUES ('1', '92');
INSERT INTO `sys_role_sys_right` VALUES ('1', '93');
INSERT INTO `sys_role_sys_right` VALUES ('1', '94');
INSERT INTO `sys_role_sys_right` VALUES ('1', '95');
INSERT INTO `sys_role_sys_right` VALUES ('1', '96');
INSERT INTO `sys_role_sys_right` VALUES ('1', '97');
INSERT INTO `sys_role_sys_right` VALUES ('1', '98');
INSERT INTO `sys_role_sys_right` VALUES ('1', '99');
INSERT INTO `sys_role_sys_right` VALUES ('1', '100');
INSERT INTO `sys_role_sys_right` VALUES ('1', '101');
INSERT INTO `sys_role_sys_right` VALUES ('1', '102');
INSERT INTO `sys_role_sys_right` VALUES ('1', '103');
INSERT INTO `sys_role_sys_right` VALUES ('1', '104');
INSERT INTO `sys_role_sys_right` VALUES ('1', '105');
INSERT INTO `sys_role_sys_right` VALUES ('1', '106');
INSERT INTO `sys_role_sys_right` VALUES ('1', '107');
INSERT INTO `sys_role_sys_right` VALUES ('1', '108');
INSERT INTO `sys_role_sys_right` VALUES ('1', '109');
INSERT INTO `sys_role_sys_right` VALUES ('1', '110');
INSERT INTO `sys_role_sys_right` VALUES ('1', '111');
INSERT INTO `sys_role_sys_right` VALUES ('1', '112');
INSERT INTO `sys_role_sys_right` VALUES ('1', '113');
INSERT INTO `sys_role_sys_right` VALUES ('1', '114');
INSERT INTO `sys_role_sys_right` VALUES ('1', '115');
INSERT INTO `sys_role_sys_right` VALUES ('1', '116');
INSERT INTO `sys_role_sys_right` VALUES ('1', '117');
INSERT INTO `sys_role_sys_right` VALUES ('1', '118');
INSERT INTO `sys_role_sys_right` VALUES ('1', '119');
INSERT INTO `sys_role_sys_right` VALUES ('1', '120');
INSERT INTO `sys_role_sys_right` VALUES ('1', '121');
INSERT INTO `sys_role_sys_right` VALUES ('1', '122');
INSERT INTO `sys_role_sys_right` VALUES ('1', '123');
INSERT INTO `sys_role_sys_right` VALUES ('1', '124');
INSERT INTO `sys_role_sys_right` VALUES ('1', '125');
INSERT INTO `sys_role_sys_right` VALUES ('1', '126');
INSERT INTO `sys_role_sys_right` VALUES ('1', '127');
INSERT INTO `sys_role_sys_right` VALUES ('1', '128');
INSERT INTO `sys_role_sys_right` VALUES ('1', '129');
INSERT INTO `sys_role_sys_right` VALUES ('1', '132');
INSERT INTO `sys_role_sys_right` VALUES ('1', '133');
INSERT INTO `sys_role_sys_right` VALUES ('1', '134');
INSERT INTO `sys_role_sys_right` VALUES ('1', '135');
INSERT INTO `sys_role_sys_right` VALUES ('1', '136');
INSERT INTO `sys_role_sys_right` VALUES ('1', '137');
INSERT INTO `sys_role_sys_right` VALUES ('1', '138');
INSERT INTO `sys_role_sys_right` VALUES ('1', '139');
INSERT INTO `sys_role_sys_right` VALUES ('1', '140');
INSERT INTO `sys_role_sys_right` VALUES ('1', '141');
INSERT INTO `sys_role_sys_right` VALUES ('1', '143');
INSERT INTO `sys_role_sys_right` VALUES ('1', '144');
INSERT INTO `sys_role_sys_right` VALUES ('1', '145');
INSERT INTO `sys_role_sys_right` VALUES ('1', '146');
INSERT INTO `sys_role_sys_right` VALUES ('1', '147');
INSERT INTO `sys_role_sys_right` VALUES ('1', '148');
INSERT INTO `sys_role_sys_right` VALUES ('1', '149');
INSERT INTO `sys_role_sys_right` VALUES ('1', '150');
INSERT INTO `sys_role_sys_right` VALUES ('1', '151');
INSERT INTO `sys_role_sys_right` VALUES ('1', '152');
INSERT INTO `sys_role_sys_right` VALUES ('1', '153');
INSERT INTO `sys_role_sys_right` VALUES ('1', '154');
INSERT INTO `sys_role_sys_right` VALUES ('1', '155');
INSERT INTO `sys_role_sys_right` VALUES ('1', '156');
INSERT INTO `sys_role_sys_right` VALUES ('1', '157');
INSERT INTO `sys_role_sys_right` VALUES ('1', '158');
INSERT INTO `sys_role_sys_right` VALUES ('1', '159');
INSERT INTO `sys_role_sys_right` VALUES ('1', '160');
INSERT INTO `sys_role_sys_right` VALUES ('1', '161');
INSERT INTO `sys_role_sys_right` VALUES ('1', '162');
INSERT INTO `sys_role_sys_right` VALUES ('1', '163');
INSERT INTO `sys_role_sys_right` VALUES ('1', '164');
INSERT INTO `sys_role_sys_right` VALUES ('1', '167');
INSERT INTO `sys_role_sys_right` VALUES ('1', '168');
INSERT INTO `sys_role_sys_right` VALUES ('1', '170');
INSERT INTO `sys_role_sys_right` VALUES ('1', '171');
INSERT INTO `sys_role_sys_right` VALUES ('1', '172');
INSERT INTO `sys_role_sys_right` VALUES ('1', '173');
INSERT INTO `sys_role_sys_right` VALUES ('1', '174');
INSERT INTO `sys_role_sys_right` VALUES ('1', '175');
INSERT INTO `sys_role_sys_right` VALUES ('1', '176');
INSERT INTO `sys_role_sys_right` VALUES ('1', '177');
INSERT INTO `sys_role_sys_right` VALUES ('1', '178');
INSERT INTO `sys_role_sys_right` VALUES ('1', '179');
INSERT INTO `sys_role_sys_right` VALUES ('1', '180');
INSERT INTO `sys_role_sys_right` VALUES ('1', '181');
INSERT INTO `sys_role_sys_right` VALUES ('1', '182');
INSERT INTO `sys_role_sys_right` VALUES ('1', '183');
INSERT INTO `sys_role_sys_right` VALUES ('1', '184');
INSERT INTO `sys_role_sys_right` VALUES ('1', '185');
INSERT INTO `sys_role_sys_right` VALUES ('1', '186');
INSERT INTO `sys_role_sys_right` VALUES ('1', '187');
INSERT INTO `sys_role_sys_right` VALUES ('1', '188');
INSERT INTO `sys_role_sys_right` VALUES ('1', '189');
INSERT INTO `sys_role_sys_right` VALUES ('1', '190');
INSERT INTO `sys_role_sys_right` VALUES ('1', '191');
INSERT INTO `sys_role_sys_right` VALUES ('1', '192');
INSERT INTO `sys_role_sys_right` VALUES ('1', '193');
INSERT INTO `sys_role_sys_right` VALUES ('1', '194');
INSERT INTO `sys_role_sys_right` VALUES ('1', '195');
INSERT INTO `sys_role_sys_right` VALUES ('1', '196');
INSERT INTO `sys_role_sys_right` VALUES ('1', '197');
INSERT INTO `sys_role_sys_right` VALUES ('1', '198');
INSERT INTO `sys_role_sys_right` VALUES ('1', '199');
INSERT INTO `sys_role_sys_right` VALUES ('1', '200');
INSERT INTO `sys_role_sys_right` VALUES ('1', '201');
INSERT INTO `sys_role_sys_right` VALUES ('1', '202');
INSERT INTO `sys_role_sys_right` VALUES ('1', '203');
INSERT INTO `sys_role_sys_right` VALUES ('1', '204');
INSERT INTO `sys_role_sys_right` VALUES ('1', '205');
INSERT INTO `sys_role_sys_right` VALUES ('1', '206');
INSERT INTO `sys_role_sys_right` VALUES ('1', '207');
INSERT INTO `sys_role_sys_right` VALUES ('1', '208');
INSERT INTO `sys_role_sys_right` VALUES ('1', '209');
INSERT INTO `sys_role_sys_right` VALUES ('1', '210');
INSERT INTO `sys_role_sys_right` VALUES ('1', '211');
INSERT INTO `sys_role_sys_right` VALUES ('1', '212');
INSERT INTO `sys_role_sys_right` VALUES ('1', '213');
INSERT INTO `sys_role_sys_right` VALUES ('1', '214');
INSERT INTO `sys_role_sys_right` VALUES ('1', '218');
INSERT INTO `sys_role_sys_right` VALUES ('1', '219');
INSERT INTO `sys_role_sys_right` VALUES ('1', '220');
INSERT INTO `sys_role_sys_right` VALUES ('1', '221');
INSERT INTO `sys_role_sys_right` VALUES ('1', '222');
INSERT INTO `sys_role_sys_right` VALUES ('1', '223');
INSERT INTO `sys_role_sys_right` VALUES ('1', '224');
INSERT INTO `sys_role_sys_right` VALUES ('1', '225');
INSERT INTO `sys_role_sys_right` VALUES ('1', '226');
INSERT INTO `sys_role_sys_right` VALUES ('1', '227');
INSERT INTO `sys_role_sys_right` VALUES ('1', '228');
INSERT INTO `sys_role_sys_right` VALUES ('1', '229');
INSERT INTO `sys_role_sys_right` VALUES ('1', '230');
INSERT INTO `sys_role_sys_right` VALUES ('1', '231');
INSERT INTO `sys_role_sys_right` VALUES ('1', '232');
INSERT INTO `sys_role_sys_right` VALUES ('1', '233');
INSERT INTO `sys_role_sys_right` VALUES ('1', '234');
INSERT INTO `sys_role_sys_right` VALUES ('1', '235');
INSERT INTO `sys_role_sys_right` VALUES ('1', '236');
INSERT INTO `sys_role_sys_right` VALUES ('1', '237');
INSERT INTO `sys_role_sys_right` VALUES ('1', '238');
INSERT INTO `sys_role_sys_right` VALUES ('1', '239');
INSERT INTO `sys_role_sys_right` VALUES ('1', '240');
INSERT INTO `sys_role_sys_right` VALUES ('1', '241');
INSERT INTO `sys_role_sys_right` VALUES ('1', '242');
INSERT INTO `sys_role_sys_right` VALUES ('1', '243');
INSERT INTO `sys_role_sys_right` VALUES ('1', '244');
INSERT INTO `sys_role_sys_right` VALUES ('1', '245');
INSERT INTO `sys_role_sys_right` VALUES ('1', '246');
INSERT INTO `sys_role_sys_right` VALUES ('1', '247');
INSERT INTO `sys_role_sys_right` VALUES ('1', '248');
INSERT INTO `sys_role_sys_right` VALUES ('1', '249');
INSERT INTO `sys_role_sys_right` VALUES ('1', '250');
INSERT INTO `sys_role_sys_right` VALUES ('1', '251');
INSERT INTO `sys_role_sys_right` VALUES ('1', '252');
INSERT INTO `sys_role_sys_right` VALUES ('1', '253');
INSERT INTO `sys_role_sys_right` VALUES ('1', '254');
INSERT INTO `sys_role_sys_right` VALUES ('1', '256');
INSERT INTO `sys_role_sys_right` VALUES ('1', '257');
INSERT INTO `sys_role_sys_right` VALUES ('1', '260');
INSERT INTO `sys_role_sys_right` VALUES ('1', '261');
INSERT INTO `sys_role_sys_right` VALUES ('1', '262');
INSERT INTO `sys_role_sys_right` VALUES ('1', '263');
INSERT INTO `sys_role_sys_right` VALUES ('1', '264');
INSERT INTO `sys_role_sys_right` VALUES ('1', '265');
INSERT INTO `sys_role_sys_right` VALUES ('1', '266');
INSERT INTO `sys_role_sys_right` VALUES ('1', '267');
INSERT INTO `sys_role_sys_right` VALUES ('1', '268');
INSERT INTO `sys_role_sys_right` VALUES ('1', '269');
INSERT INTO `sys_role_sys_right` VALUES ('1', '270');
INSERT INTO `sys_role_sys_right` VALUES ('1', '271');
INSERT INTO `sys_role_sys_right` VALUES ('1', '272');
INSERT INTO `sys_role_sys_right` VALUES ('1', '273');
INSERT INTO `sys_role_sys_right` VALUES ('1', '274');
INSERT INTO `sys_role_sys_right` VALUES ('1', '275');
INSERT INTO `sys_role_sys_right` VALUES ('1', '276');
INSERT INTO `sys_role_sys_right` VALUES ('1', '277');
INSERT INTO `sys_role_sys_right` VALUES ('1', '278');
INSERT INTO `sys_role_sys_right` VALUES ('1', '279');
INSERT INTO `sys_role_sys_right` VALUES ('1', '280');
INSERT INTO `sys_role_sys_right` VALUES ('1', '281');
INSERT INTO `sys_role_sys_right` VALUES ('1', '282');
INSERT INTO `sys_role_sys_right` VALUES ('64', '17');
INSERT INTO `sys_role_sys_right` VALUES ('64', '18');
INSERT INTO `sys_role_sys_right` VALUES ('64', '19');
INSERT INTO `sys_role_sys_right` VALUES ('64', '20');
INSERT INTO `sys_role_sys_right` VALUES ('64', '21');
INSERT INTO `sys_role_sys_right` VALUES ('64', '24');
INSERT INTO `sys_role_sys_right` VALUES ('64', '34');
INSERT INTO `sys_role_sys_right` VALUES ('64', '35');
INSERT INTO `sys_role_sys_right` VALUES ('64', '36');
INSERT INTO `sys_role_sys_right` VALUES ('64', '37');
INSERT INTO `sys_role_sys_right` VALUES ('64', '38');
INSERT INTO `sys_role_sys_right` VALUES ('64', '39');
INSERT INTO `sys_role_sys_right` VALUES ('64', '40');
INSERT INTO `sys_role_sys_right` VALUES ('64', '41');
INSERT INTO `sys_role_sys_right` VALUES ('64', '42');
INSERT INTO `sys_role_sys_right` VALUES ('64', '43');
INSERT INTO `sys_role_sys_right` VALUES ('64', '44');
INSERT INTO `sys_role_sys_right` VALUES ('64', '45');
INSERT INTO `sys_role_sys_right` VALUES ('64', '46');
INSERT INTO `sys_role_sys_right` VALUES ('64', '47');
INSERT INTO `sys_role_sys_right` VALUES ('64', '48');
INSERT INTO `sys_role_sys_right` VALUES ('64', '49');
INSERT INTO `sys_role_sys_right` VALUES ('64', '50');
INSERT INTO `sys_role_sys_right` VALUES ('64', '51');
INSERT INTO `sys_role_sys_right` VALUES ('64', '52');
INSERT INTO `sys_role_sys_right` VALUES ('64', '83');
INSERT INTO `sys_role_sys_right` VALUES ('64', '85');
INSERT INTO `sys_role_sys_right` VALUES ('64', '96');
INSERT INTO `sys_role_sys_right` VALUES ('64', '102');
INSERT INTO `sys_role_sys_right` VALUES ('64', '106');
INSERT INTO `sys_role_sys_right` VALUES ('64', '121');
INSERT INTO `sys_role_sys_right` VALUES ('64', '125');
INSERT INTO `sys_role_sys_right` VALUES ('64', '126');
INSERT INTO `sys_role_sys_right` VALUES ('64', '127');
INSERT INTO `sys_role_sys_right` VALUES ('64', '128');
INSERT INTO `sys_role_sys_right` VALUES ('64', '129');
INSERT INTO `sys_role_sys_right` VALUES ('64', '132');
INSERT INTO `sys_role_sys_right` VALUES ('64', '133');
INSERT INTO `sys_role_sys_right` VALUES ('64', '135');
INSERT INTO `sys_role_sys_right` VALUES ('64', '137');
INSERT INTO `sys_role_sys_right` VALUES ('64', '141');
INSERT INTO `sys_role_sys_right` VALUES ('64', '160');
INSERT INTO `sys_role_sys_right` VALUES ('64', '162');
INSERT INTO `sys_role_sys_right` VALUES ('64', '281');
INSERT INTO `sys_role_sys_right` VALUES ('114', '1');
INSERT INTO `sys_role_sys_right` VALUES ('114', '2');
INSERT INTO `sys_role_sys_right` VALUES ('114', '3');
INSERT INTO `sys_role_sys_right` VALUES ('114', '4');
INSERT INTO `sys_role_sys_right` VALUES ('114', '8');
INSERT INTO `sys_role_sys_right` VALUES ('114', '17');
INSERT INTO `sys_role_sys_right` VALUES ('114', '18');
INSERT INTO `sys_role_sys_right` VALUES ('114', '19');
INSERT INTO `sys_role_sys_right` VALUES ('114', '20');
INSERT INTO `sys_role_sys_right` VALUES ('114', '21');
INSERT INTO `sys_role_sys_right` VALUES ('114', '22');
INSERT INTO `sys_role_sys_right` VALUES ('114', '24');
INSERT INTO `sys_role_sys_right` VALUES ('114', '25');
INSERT INTO `sys_role_sys_right` VALUES ('114', '26');
INSERT INTO `sys_role_sys_right` VALUES ('114', '27');
INSERT INTO `sys_role_sys_right` VALUES ('114', '28');
INSERT INTO `sys_role_sys_right` VALUES ('114', '29');
INSERT INTO `sys_role_sys_right` VALUES ('114', '30');
INSERT INTO `sys_role_sys_right` VALUES ('114', '34');
INSERT INTO `sys_role_sys_right` VALUES ('114', '35');
INSERT INTO `sys_role_sys_right` VALUES ('114', '36');
INSERT INTO `sys_role_sys_right` VALUES ('114', '37');
INSERT INTO `sys_role_sys_right` VALUES ('114', '38');
INSERT INTO `sys_role_sys_right` VALUES ('114', '39');
INSERT INTO `sys_role_sys_right` VALUES ('114', '40');
INSERT INTO `sys_role_sys_right` VALUES ('114', '41');
INSERT INTO `sys_role_sys_right` VALUES ('114', '42');
INSERT INTO `sys_role_sys_right` VALUES ('114', '43');
INSERT INTO `sys_role_sys_right` VALUES ('114', '44');
INSERT INTO `sys_role_sys_right` VALUES ('114', '45');
INSERT INTO `sys_role_sys_right` VALUES ('114', '46');
INSERT INTO `sys_role_sys_right` VALUES ('114', '47');
INSERT INTO `sys_role_sys_right` VALUES ('114', '48');
INSERT INTO `sys_role_sys_right` VALUES ('114', '49');
INSERT INTO `sys_role_sys_right` VALUES ('114', '50');
INSERT INTO `sys_role_sys_right` VALUES ('114', '51');
INSERT INTO `sys_role_sys_right` VALUES ('114', '52');
INSERT INTO `sys_role_sys_right` VALUES ('114', '55');
INSERT INTO `sys_role_sys_right` VALUES ('114', '57');
INSERT INTO `sys_role_sys_right` VALUES ('114', '63');
INSERT INTO `sys_role_sys_right` VALUES ('114', '64');
INSERT INTO `sys_role_sys_right` VALUES ('114', '65');
INSERT INTO `sys_role_sys_right` VALUES ('114', '66');
INSERT INTO `sys_role_sys_right` VALUES ('114', '67');
INSERT INTO `sys_role_sys_right` VALUES ('114', '68');
INSERT INTO `sys_role_sys_right` VALUES ('114', '69');
INSERT INTO `sys_role_sys_right` VALUES ('114', '70');
INSERT INTO `sys_role_sys_right` VALUES ('114', '71');
INSERT INTO `sys_role_sys_right` VALUES ('114', '72');
INSERT INTO `sys_role_sys_right` VALUES ('114', '73');
INSERT INTO `sys_role_sys_right` VALUES ('114', '74');
INSERT INTO `sys_role_sys_right` VALUES ('114', '75');
INSERT INTO `sys_role_sys_right` VALUES ('114', '76');
INSERT INTO `sys_role_sys_right` VALUES ('114', '81');
INSERT INTO `sys_role_sys_right` VALUES ('114', '82');
INSERT INTO `sys_role_sys_right` VALUES ('114', '83');
INSERT INTO `sys_role_sys_right` VALUES ('114', '84');
INSERT INTO `sys_role_sys_right` VALUES ('114', '86');
INSERT INTO `sys_role_sys_right` VALUES ('114', '96');
INSERT INTO `sys_role_sys_right` VALUES ('114', '102');
INSERT INTO `sys_role_sys_right` VALUES ('114', '103');
INSERT INTO `sys_role_sys_right` VALUES ('114', '105');
INSERT INTO `sys_role_sys_right` VALUES ('114', '106');
INSERT INTO `sys_role_sys_right` VALUES ('114', '107');
INSERT INTO `sys_role_sys_right` VALUES ('114', '108');
INSERT INTO `sys_role_sys_right` VALUES ('114', '109');
INSERT INTO `sys_role_sys_right` VALUES ('114', '110');
INSERT INTO `sys_role_sys_right` VALUES ('114', '121');
INSERT INTO `sys_role_sys_right` VALUES ('114', '122');
INSERT INTO `sys_role_sys_right` VALUES ('114', '123');
INSERT INTO `sys_role_sys_right` VALUES ('114', '125');
INSERT INTO `sys_role_sys_right` VALUES ('114', '126');
INSERT INTO `sys_role_sys_right` VALUES ('114', '127');
INSERT INTO `sys_role_sys_right` VALUES ('114', '128');
INSERT INTO `sys_role_sys_right` VALUES ('114', '129');
INSERT INTO `sys_role_sys_right` VALUES ('114', '132');
INSERT INTO `sys_role_sys_right` VALUES ('114', '133');
INSERT INTO `sys_role_sys_right` VALUES ('114', '134');
INSERT INTO `sys_role_sys_right` VALUES ('114', '135');
INSERT INTO `sys_role_sys_right` VALUES ('114', '136');
INSERT INTO `sys_role_sys_right` VALUES ('114', '137');
INSERT INTO `sys_role_sys_right` VALUES ('114', '138');
INSERT INTO `sys_role_sys_right` VALUES ('114', '139');
INSERT INTO `sys_role_sys_right` VALUES ('114', '140');
INSERT INTO `sys_role_sys_right` VALUES ('114', '141');
INSERT INTO `sys_role_sys_right` VALUES ('114', '144');
INSERT INTO `sys_role_sys_right` VALUES ('114', '145');
INSERT INTO `sys_role_sys_right` VALUES ('114', '146');
INSERT INTO `sys_role_sys_right` VALUES ('114', '147');
INSERT INTO `sys_role_sys_right` VALUES ('114', '150');
INSERT INTO `sys_role_sys_right` VALUES ('114', '151');
INSERT INTO `sys_role_sys_right` VALUES ('114', '152');
INSERT INTO `sys_role_sys_right` VALUES ('114', '153');
INSERT INTO `sys_role_sys_right` VALUES ('114', '154');
INSERT INTO `sys_role_sys_right` VALUES ('114', '155');
INSERT INTO `sys_role_sys_right` VALUES ('114', '156');
INSERT INTO `sys_role_sys_right` VALUES ('114', '157');
INSERT INTO `sys_role_sys_right` VALUES ('114', '158');
INSERT INTO `sys_role_sys_right` VALUES ('114', '159');
INSERT INTO `sys_role_sys_right` VALUES ('114', '161');
INSERT INTO `sys_role_sys_right` VALUES ('114', '162');
INSERT INTO `sys_role_sys_right` VALUES ('114', '163');
INSERT INTO `sys_role_sys_right` VALUES ('114', '164');
INSERT INTO `sys_role_sys_right` VALUES ('114', '174');
INSERT INTO `sys_role_sys_right` VALUES ('114', '175');
INSERT INTO `sys_role_sys_right` VALUES ('114', '176');
INSERT INTO `sys_role_sys_right` VALUES ('114', '178');
INSERT INTO `sys_role_sys_right` VALUES ('114', '190');
INSERT INTO `sys_role_sys_right` VALUES ('114', '191');
INSERT INTO `sys_role_sys_right` VALUES ('114', '192');
INSERT INTO `sys_role_sys_right` VALUES ('114', '193');
INSERT INTO `sys_role_sys_right` VALUES ('114', '194');
INSERT INTO `sys_role_sys_right` VALUES ('114', '195');
INSERT INTO `sys_role_sys_right` VALUES ('114', '197');
INSERT INTO `sys_role_sys_right` VALUES ('114', '198');
INSERT INTO `sys_role_sys_right` VALUES ('114', '202');
INSERT INTO `sys_role_sys_right` VALUES ('114', '205');
INSERT INTO `sys_role_sys_right` VALUES ('114', '206');
INSERT INTO `sys_role_sys_right` VALUES ('114', '208');
INSERT INTO `sys_role_sys_right` VALUES ('114', '219');
INSERT INTO `sys_role_sys_right` VALUES ('114', '224');
INSERT INTO `sys_role_sys_right` VALUES ('114', '230');
INSERT INTO `sys_role_sys_right` VALUES ('114', '231');
INSERT INTO `sys_role_sys_right` VALUES ('114', '232');
INSERT INTO `sys_role_sys_right` VALUES ('114', '233');
INSERT INTO `sys_role_sys_right` VALUES ('114', '234');
INSERT INTO `sys_role_sys_right` VALUES ('114', '235');
INSERT INTO `sys_role_sys_right` VALUES ('114', '236');
INSERT INTO `sys_role_sys_right` VALUES ('114', '237');
INSERT INTO `sys_role_sys_right` VALUES ('114', '238');
INSERT INTO `sys_role_sys_right` VALUES ('114', '239');
INSERT INTO `sys_role_sys_right` VALUES ('114', '240');
INSERT INTO `sys_role_sys_right` VALUES ('114', '241');
INSERT INTO `sys_role_sys_right` VALUES ('114', '242');
INSERT INTO `sys_role_sys_right` VALUES ('114', '243');
INSERT INTO `sys_role_sys_right` VALUES ('114', '244');
INSERT INTO `sys_role_sys_right` VALUES ('114', '245');
INSERT INTO `sys_role_sys_right` VALUES ('114', '246');
INSERT INTO `sys_role_sys_right` VALUES ('114', '247');
INSERT INTO `sys_role_sys_right` VALUES ('114', '248');
INSERT INTO `sys_role_sys_right` VALUES ('114', '249');
INSERT INTO `sys_role_sys_right` VALUES ('114', '250');
INSERT INTO `sys_role_sys_right` VALUES ('114', '251');
INSERT INTO `sys_role_sys_right` VALUES ('114', '253');
INSERT INTO `sys_role_sys_right` VALUES ('114', '254');
INSERT INTO `sys_role_sys_right` VALUES ('114', '268');
INSERT INTO `sys_role_sys_right` VALUES ('114', '278');

-- ----------------------------
-- Table structure for sys_schedule
-- ----------------------------
DROP TABLE IF EXISTS `sys_schedule`;
CREATE TABLE `sys_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheduleTime` varchar(20) NOT NULL COMMENT '时间节点 ',
  `earlyWarning` int(11) DEFAULT NULL COMMENT '提前提醒 ',
  `receiverStatus` varchar(1) NOT NULL COMMENT '是否接受',
  `scheduleContent` longtext NOT NULL COMMENT '任务内容',
  `scheduleFinishDate` varchar(20) DEFAULT NULL COMMENT '完成时间',
  `scheduleId` int(11) DEFAULT NULL,
  `scheduleLink` varchar(45) DEFAULT NULL COMMENT '任务链接',
  `scheduleReceiver` varchar(20) NOT NULL COMMENT '接收人',
  `scheduleSender` varchar(20) NOT NULL COMMENT '发送人',
  `scheduleSenderDate` varchar(20) NOT NULL COMMENT '发送时间',
  `scheduleSortId` int(11) DEFAULT NULL COMMENT '任务分类id',
  `scheduleStatus` varchar(1) NOT NULL COMMENT '任务状态',
  `scheduleTitle` varchar(40) NOT NULL COMMENT '标题',
  `priorityLevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_schedule
-- ----------------------------
INSERT INTO `sys_schedule` VALUES ('110', '2015-11-10 10:28:13', null, '1', '请假', '2016-04-07 14:10:00', null, 'leave!modulepage.action', '黄龙', '聂海峰', '2015-11-10 10:28:13', '62', '0', '申请请假', '1');
INSERT INTO `sys_schedule` VALUES ('111', '2015-11-10 10:32:27', null, '1', '', '2015-11-10 16:09:28', null, 'leave!modulepage.action', '聂海峰', '黄龙', '2015-11-10 10:32:27', '63', '0', '申请请假（部门驳回）', '1');
INSERT INTO `sys_schedule` VALUES ('112', '2015-11-10 16:22:20', null, '1', '达内招聘', '2015-11-17 17:47:25', null, 'evection!modulepage.action', '黄龙', '黄龙', '2015-11-10 16:22:20', '62', '0', '申请出差', '1');
INSERT INTO `sys_schedule` VALUES ('113', '2015-11-10 16:22:41', null, '1', '达内招聘', null, null, 'evection!modulepage.action', '王建伟', '黄龙', '2015-11-10 16:22:41', '61', '1', '申请出差（部门批准）', '1');
INSERT INTO `sys_schedule` VALUES ('114', '2015-11-10 17:37:23', null, '1', '请假', '2015-11-16 15:38:45', null, 'leave!modulepage.action', '黄龙', '聂海峰', '2015-11-10 17:37:23', '62', '0', '申请请假（重新填写）', '1');
INSERT INTO `sys_schedule` VALUES ('115', '2015-11-10 17:40:39', null, '1', '', '2015-11-13 09:34:33', null, 'leave!modulepage.action', '聂海峰', '黄龙', '2015-11-10 17:40:39', '63', '0', '申请请假（部门驳回）', '1');
INSERT INTO `sys_schedule` VALUES ('116', '2015-11-16 10:28:06', null, '1', '1.去医院看病 2.养病。事后会补上病历和相关单据', '2015-11-16 10:32:46', null, 'leave!modulepage.action', '徐寒黎', '徐寒黎', '2015-11-16 10:28:06', '65', '0', '申请请假', '1');
INSERT INTO `sys_schedule` VALUES ('117', '2015-11-16 10:31:35', null, '0', '服务器有问题，你来这时在讨论，记的驳回', null, null, 'leave!modulepage.action', '黄龙', '聂海峰', '2015-11-16 10:31:35', '62', '1', '申请请假（重新填写）', '1');
INSERT INTO `sys_schedule` VALUES ('118', '2015-11-16 10:33:17', null, '1', '1.去医院看病 2.养病。事后会补上病历和相关单据', null, null, 'leave!modulepage.action', '钱坤', '徐寒黎', '2015-11-16 10:33:17', '53', '1', '申请请假（部门批准）', '1');
INSERT INTO `sys_schedule` VALUES ('119', '2015-11-17 17:46:25', null, '1', '', '2015-11-18 12:07:00', null, 'leave!modulepage.action', '聂海峰', '黄龙', '2015-11-17 17:46:25', '63', '0', '申请请假（部门驳回）', '1');
INSERT INTO `sys_schedule` VALUES ('120', '2015-11-17 17:47:14', null, '1', '服务器有问题，你来这时在讨论，记的驳回', null, null, 'leave!modulepage.action', '黄龙', '聂海峰', '2015-11-17 17:47:14', '62', '1', '申请请假（重新填写）', '1');
INSERT INTO `sys_schedule` VALUES ('121', '2015-11-17 17:50:19', null, '1', '', '2015-11-18 12:06:58', null, 'leave!modulepage.action', '聂海峰', '黄龙', '2015-11-17 17:50:19', '63', '0', '申请请假（部门驳回）', '1');
INSERT INTO `sys_schedule` VALUES ('122', '2015-11-26 15:52:53', null, '1', '服务器有问题，你来这时在讨论，记的驳回', '2016-02-29 10:11:17', null, 'leave!modulepage.action', '黄龙', '聂海峰', '2015-11-26 15:52:53', '62', '0', '申请请假（重新填写）', '1');
INSERT INTO `sys_schedule` VALUES ('123', '2015-11-26 16:16:32', null, '1', '服务器有问题，你来这时在讨论，记的驳回', null, null, 'leave!modulepage.action', '钱坤', '聂海峰', '2015-11-26 16:16:32', '53', '1', '申请请假（部门批准）', '1');

-- ----------------------------
-- Table structure for sys_schedulesort
-- ----------------------------
DROP TABLE IF EXISTS `sys_schedulesort`;
CREATE TABLE `sys_schedulesort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssStatus` int(11) NOT NULL COMMENT '任务分类状态',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `userName` varchar(30) NOT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_schedulesort
-- ----------------------------
INSERT INTO `sys_schedulesort` VALUES ('45', '1', '其他', '管理员');
INSERT INTO `sys_schedulesort` VALUES ('46', '1', '其他', '聂梦肖');
INSERT INTO `sys_schedulesort` VALUES ('47', '1', '其他', '黄金龙');
INSERT INTO `sys_schedulesort` VALUES ('48', '1', '运维', '黄金龙');
INSERT INTO `sys_schedulesort` VALUES ('49', '1', 'PHP', '黄金龙');
INSERT INTO `sys_schedulesort` VALUES ('50', '1', 'JAVA', '黄金龙');
INSERT INTO `sys_schedulesort` VALUES ('51', '1', '团队建设', '黄金龙');
INSERT INTO `sys_schedulesort` VALUES ('52', '1', '信息分析技术支持', '黄金龙');
INSERT INTO `sys_schedulesort` VALUES ('53', '1', '其他', '钱坤');
INSERT INTO `sys_schedulesort` VALUES ('54', '1', '其他', '李箐');
INSERT INTO `sys_schedulesort` VALUES ('55', '1', '其他', '袁云霞');
INSERT INTO `sys_schedulesort` VALUES ('56', '1', '其他', '栗晓霞');
INSERT INTO `sys_schedulesort` VALUES ('59', '1', '其他', '姬晓勇');
INSERT INTO `sys_schedulesort` VALUES ('60', '1', '其他', '曾雪霞');
INSERT INTO `sys_schedulesort` VALUES ('61', '1', '其他', '王建伟');
INSERT INTO `sys_schedulesort` VALUES ('62', '1', '其他', '黄龙');
INSERT INTO `sys_schedulesort` VALUES ('63', '1', '其他', '聂海峰');
INSERT INTO `sys_schedulesort` VALUES ('64', '1', '其他', '葛博');
INSERT INTO `sys_schedulesort` VALUES ('65', '1', '其他', '徐寒黎');
INSERT INTO `sys_schedulesort` VALUES ('66', '1', '其他', '付微微');

-- ----------------------------
-- Table structure for sys_systemupdate
-- ----------------------------
DROP TABLE IF EXISTS `sys_systemupdate`;
CREATE TABLE `sys_systemupdate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suState` varchar(20) NOT NULL,
  `sucontent` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_systemupdate
-- ----------------------------
INSERT INTO `sys_systemupdate` VALUES ('1', '1', '正在更新系统');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(80) DEFAULT NULL COMMENT '家庭住址',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  `departmentId` int(11) NOT NULL COMMENT '部门ID',
  `education` varchar(10) NOT NULL COMMENT '学历',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `emePerson` varchar(30) DEFAULT NULL COMMENT '紧急联系人',
  `emePhone` varchar(30) DEFAULT NULL COMMENT '紧急联系电话',
  `entryDate` varchar(10) DEFAULT NULL COMMENT '入职时间',
  `firstEntryDate` varchar(10) DEFAULT NULL COMMENT '参加工作时间',
  `idNumber` varchar(25) NOT NULL COMMENT '身份证号',
  `isMarried` varchar(4) DEFAULT NULL COMMENT '婚姻状况',
  `isPaidInsur` varchar(2) DEFAULT NULL COMMENT '是否曾在本市缴纳过保险',
  `isSignedIcca` varchar(2) DEFAULT NULL COMMENT '是否签订知识产权及保密协议',
  `isSignedLc` varchar(2) DEFAULT NULL COMMENT '是否签订劳动合同',
  `jobLocation` varchar(30) DEFAULT NULL COMMENT '常驻工作地',
  `jobNumber` varchar(25) DEFAULT NULL COMMENT '工号',
  `jobType` varchar(10) DEFAULT NULL COMMENT '工作性质',
  `leaveDate` varchar(10) DEFAULT NULL COMMENT '离职日期',
  `loginStatus` int(11) DEFAULT NULL COMMENT '账号状态',
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `nativePlace` varchar(10) DEFAULT NULL COMMENT '籍贯',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `phone` varchar(20) DEFAULT NULL COMMENT '座机',
  `politicsStatus` varchar(10) DEFAULT NULL COMMENT '政治面貌',
  `positionId` int(11) NOT NULL COMMENT '职位ID',
  `qq` varchar(15) DEFAULT NULL COMMENT 'qq',
  `remark` varchar(10) DEFAULT NULL COMMENT '备注',
  `residence` varchar(45) DEFAULT NULL COMMENT '户口所在地',
  `residenceType` varchar(4) DEFAULT NULL COMMENT '户口性质:城镇/农村',
  `school` varchar(30) DEFAULT NULL COMMENT '毕业院校',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `updateTime` varchar(30) DEFAULT NULL COMMENT '更新时间',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `userProfession` varchar(30) DEFAULT NULL,
  `regularDate` varchar(10) DEFAULT NULL,
  `contractDate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  UNIQUE KEY `idNumber` (`idNumber`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '123456789123456789', '7891-23-45', '6', '中专', 'admin@scisoon.cn', '', '', '2015-08-19', '', '123456789123456789', '', '', '', '', '', '', '', '', '1', '13409432744', '管理员', '', '', '96E79218965EB72C92A549DD5A330112', '', '', '1', '', 'a啊', '', '', '', '男', '2016-06-29 13:46:50', 'admin', '', '', '');
INSERT INTO `sys_user` VALUES ('5', 'xxx', null, '6', '本科', 'mengxiaonie@scisoon.cn', 'xxx', '15836488213', '2015-07-27', '2013-07-23', '411481199301113310', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '18701555735', '聂梦肖', '汉', '河南', '96E79218965EB72C92A549DD5A330112', '', '团员', '1', '2745554997', '', '河南永城', '农村', '西安信息技术学院', '男', null, 'niemengxiao', '计算机科学与技术', '2015-08-26', '');
INSERT INTO `sys_user` VALUES ('6', '', '1987-06-25', '6', '本科', 'jinlonghuang@scisoon.cn', '', '', '2015-07-13', '', '230421198706250419', '未婚', '是', '是', '', '', '', '全职', '', '1', '13011891948', '黄金龙', '汉', '', 'E19F5146EC8EA8EF3FBF2373BD492A13', '', '团员', '4', '', '', '', '', '吉林大学', '男', '2017-12-22 09:19:10', 'huangjinlong', '物理学', '', '');
INSERT INTO `sys_user` VALUES ('7', '', null, '12', '本科', 'aiminlv@scisoon.cn', '', '', '2015-09-01', '', '320106197108152090', '', '', '', '', '', '', '', '', '1', '13701331819', '吕爱民', '', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '', '5', '', '', '', '', '', '男', null, 'lvaimin', '', '', '');
INSERT INTO `sys_user` VALUES ('8', '', null, '18', '本科', 'boge@scisoon.cn', '', '', '2015-06-15', '', '371521198611103157', '', '', '', '', '', '201510', '', '', '1', '13581678606', '葛博', '', '', '82A1E3CDB87193486D3ABA0862D3AFAD', '', '', '20', '', '', '', '', '北京交通大学', '男', null, 'gebo', '人力资源', '2015-07-15', '2018-06-14');
INSERT INTO `sys_user` VALUES ('10', '', null, '20', '博士', 'hanlixu@scisoon.cn', '', '', '2015-07-20', '', '320882199001050020', '', '', '', '', '', '', '', '', '1', '13161816648', '徐寒黎', '', '', 'A3326CC660F5A52AB5605C86EF3DF660', '', '', '27', '', '<br>', '', '', '东南大学', '女', null, 'xuhanli', '生物医学工程', '', '');
INSERT INTO `sys_user` VALUES ('13', '', '1987-03-19', '18', '本科', 'jjgao@scisoon.cn', '', '', '2015-05-25', '', '150424198703190085', '', '', '', '', '', '201504', '', '', '1', '18210879817', '高婧婧', '', '', '96E79218965EB72C92A549DD5A330112', '', '', '21', '', '<br>', '', '', '北京交通大学', '女', '2016-10-02 09:39:10', 'gaojingjing', '人力资源', '2015-06-25', '2018-05-24');
INSERT INTO `sys_user` VALUES ('14', '', null, '12', '本科', 'jwwang@scisoon.cn', '', '', '2015-09-01', '', '411481199301113314', '', '', '', '', '', '', '', '', '1', '13910051746', '总经理', '', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '', '40', '', '<br>', '', '', '', '女', null, 'wangjianwei', '', '', '');
INSERT INTO `sys_user` VALUES ('18', '', null, '12', '专科', 'weiweifu@scisoon.cn', '', '', '2015-07-20', '', '231182199107107209', '', '', '', '', '', '', '', '', '0', '18501146663', '付微微', '', '', '068CA78E5B4B75273CF96576CC5EBC3A', '', '', '7', '', '<br>', '', '', '黑龙江林业职业技术学院', '女', null, 'fuweiwei', '工商企业管理', '', '');
INSERT INTO `sys_user` VALUES ('20', '', null, '18', '硕士', 'xiaoxiali@scisoon.cn', '', '', '2015-09-01', '', '140411198508194423', '未婚', '是', '是', '', '', '', '全职', '', '0', '13146118112', '栗晓霞', '汉', '', '32430A61D7B146083618DE320BE0B764', '', '团员', '23', '', '<br>', '', '', '哈尔滨医科大学', '女', null, 'lixiaoxia', '营养与食品卫生', '', '');
INSERT INTO `sys_user` VALUES ('21', '', null, '18', '本科', 'xuexiazeng@scisoon.cn', '', '', '2015-06-23', '', '120224199111235022', '', '', '', '', '', '201505', '', '', '0', '15311494871', '曾雪霞', '', '', '32430A61D7B146083618DE320BE0B764', '', '', '22', '', '<br>', '', '', '中国农业大学', '女', null, 'zengxuexia', '生物科学', '2015-09-01', '2018-06-22');
INSERT INTO `sys_user` VALUES ('22', '', null, '20', '本科', 'yangyangliu@scisoon.cn', '', '', '2015-09-14', '', '123465798987546421', '', '', '', '', '', '', '', '', '1', '15120099259', '刘洋', '', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '', '27', '', '<br>', '', '', '', '男', null, 'liuyang', '', '', '');
INSERT INTO `sys_user` VALUES ('30', '', null, '19', '本科', 'xiaoyongji@scisoon.cn', '', '', '2015-06-15', '', '130123198011244517', '未婚', '是', '是', '', '', '201503', '全职', '', '1', '13811149869', '姬晓勇', '汉', '', '21218CCA77804D2BA1922C33E0151105', '', '团员', '24', '', '<br>', '', '', '河北农业大学', '男', null, 'jixiaoyong', '城镇应用与管理', '2015-07-15', '2018-06-14');
INSERT INTO `sys_user` VALUES ('36', '', null, '12', '博士', 'yezhou@scisoon.cn', '', '', '2016-02-25', '', '487549657854231548', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '周晔', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '40', '', '', '', '', '', '女', null, 'zhouye', '', '', '');
INSERT INTO `sys_user` VALUES ('37', '', null, '16', '本科', 'wenwenli@scisoon.cn', '', '', '2016-02-25', '', '4875945845687542', '', '是', '是', '是', '北京', '', '全职', '', '1', '13200029302', '李雯雯', '汉', '', '81DC9BDB52D04DC20036DBD8313ED055', '', '团员', '13', '', '', '', '', '', '女', null, 'liwenwen', '', '', '');
INSERT INTO `sys_user` VALUES ('38', '', null, '16', '本科', 'nanasuo@scisoon.cn', '', '', '2016-02-25', '', '12345678954875645', '', '是', '是', '是', '北京', '', '全职', '', '1', '', '索娜娜', '汉', '', '8860E834A67DA41EDD6FFE8A1C58FA55', '', '团员', '13', '', '', '', '', '', '女', null, 'suonana', '', '', '');
INSERT INTO `sys_user` VALUES ('39', '', null, '6', '本科', 'xiaofengzhou@scisoon.cn', '', '', '2016-02-25', '', '45678945612312356', '', '是', '是', '是', '北京', '', '全职', '', '1', '18600900461', '周晓锋', '汉', '', 'E10ADC3949BA59ABBE56E057F20F883E', '', '团员', '1', '', '', '', '', '', '男', '2018-03-13 10:49:55', 'zhouxiaofeng', '', '', '');
INSERT INTO `sys_user` VALUES ('40', '', null, '12', '本科', 'xinyichen@scisoon.cn', '', '', '2016-02-29', '', '78948531216546423', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '陈心依', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '7', '', '', '', '', '', '女', null, 'chenxinyi', '', '', '');
INSERT INTO `sys_user` VALUES ('41', '', null, '18', '本科', 'yufeiguan@scisoon.cn', '', '', '2016-03-23', '', '789456132123156156', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '管于飞', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '23', '', '1', '', '', '', '男', null, 'guanyufei', '', '', '');
INSERT INTO `sys_user` VALUES ('42', '', null, '18', '本科', 'ruifangchen@scisoon.cn', '', '', '2016-03-23', '', '7894561234584554', '', '是', '是', '是', '北京', '', '全职', '', '1', '', '陈瑞芳', '汉', '', '560FA06B07E52BD9B3571413F0F9AA34', '', '团员', '23', '', '<br>', '', '', '', '女', null, 'chenruifang', '', '', '');
INSERT INTO `sys_user` VALUES ('43', '', null, '18', '本科', 'hongcainie@scisoon.cn', '', '', '2016-04-19', '', '456132654984654', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '18222362304', '聂红彩', '汉', '', '96E79218965EB72C92A549DD5A330112', '010-62526259转811', '团员', '21', '', '<br>', '', '', '', '女', '2016-07-27 16:16:42', 'niehongcai', '', '', '');
INSERT INTO `sys_user` VALUES ('44', '', null, '18', '本科', 'qingqingsun@scisoon.cn', '', '', '2016-04-19', '', '78945613213261455', '', '是', '是', '是', '北京', '', '全职', '', '1', '', '孙晴晴', '汉', '', '81DC9BDB52D04DC20036DBD8313ED055', '', '团员', '20', '', '', '', '', '', '女', null, 'sunqingqing', '', '', '');
INSERT INTO `sys_user` VALUES ('45', '', null, '18', '本科', 'yujiazhang@scisoon.cn', '', '', '2016-04-19', '', '123456789454564', '', '是', '是', '是', '北京', '', '全职', '', '1', '15300307252', '张玉佳', '汉', '', 'E10ADC3949BA59ABBE56E057F20F883E', '', '团员', '22', '', '', '', '', '', '男', '2017-02-09 16:18:15', 'zhangyujia', '', '', '');
INSERT INTO `sys_user` VALUES ('46', '', null, '19', '本科', 'siyuguo@scisoon.cn', '', '', '2016-05-03', '', '789451321665123156', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '郭思雨', '汉', '', 'BAF1C41447F6F80048BA2A72381DA371', '', '团员', '26', '', '', '', '', '', '女', null, 'guosiyu', '', '', '');
INSERT INTO `sys_user` VALUES ('47', '', null, '18', '本科', 'juanzhang@scisoon.cn', '', '', '2016-05-20', '', '789456198412311231', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '张娟', '汉', '', 'E10ADC3949BA59ABBE56E057F20F883E', '', '团员', '19', '', '', '', '', '', '女', null, 'zhangjuan', '', '', '');
INSERT INTO `sys_user` VALUES ('48', '', null, '27', '本科', 'jingyanzhang@scisoon.cn', '', '', '2016-06-28', '', '123456956461321231', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '张婧妍', '汉', '', '1122B8ED3FD3A98E45F1409DD2EBDDB4', '', '团员', '41', '', '', '', '', '', '女', null, 'zhangjingyan', '', '', '');
INSERT INTO `sys_user` VALUES ('49', '', null, '6', '本科', 'chunkezhang@scisoon.cn', '', '', '2016-06-29', '', '789456132165123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '15101093727', '张春可', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '31', '', '', '', '', '', '女', '2017-11-20 15:39:30', 'zhangchunke', '', '', '');
INSERT INTO `sys_user` VALUES ('51', '', null, '27', '高中', 'duoxu@scisoon.cn', '', '', '2016-05-11', '', '2323232323323233', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '许多', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '41', '', '', '', '', '', '女', null, 'xuduo', '', '', '');
INSERT INTO `sys_user` VALUES ('52', '', null, '28', '博士', 'tianjinxiongke@qq.com', '', '', '2016-07-08', '', '230456159805420587', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '天津胸科', '汉', '', 'F02E3313958FC831BB31564186B8A8AA', '', '团员', '42', '', '', '', '', '', '男', null, 'tianjinxiongke', '', '', '');
INSERT INTO `sys_user` VALUES ('53', '', null, '18', '本科', 'feiliu@scisoon.cn', '', '', '2016-07-12', '', '7843216453132112', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '刘飞', '汉', '', 'DFFEFAC033123A4B9D6766F17A00BE14', '', '团员', '23', '', '', '', '', '', '男', null, 'liufei', '', '', '');
INSERT INTO `sys_user` VALUES ('54', '', null, '27', '本科', 'pengningtang@scisoon.cn', '', '', '2016-07-13', '', '232223198726520487', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '唐鹏宁', '汉', '', 'B56E322AF8A2A79885D7E2E9FD5D0F14', '', '团员', '43', '', '', '', '', '', '男', null, 'tangpengning', '', '', '');
INSERT INTO `sys_user` VALUES ('55', '', null, '16', '本科', 'genggao@scisoon.cn', '', '', '2016-07-29', '', '230302199208265327', '未婚', '是', '是', '是', '北京', '', '全职', '', '0', '18911139521', '高庚', '汉', '', '1435750E11112C2F51BA2506DCD03C94', '', '团员', '13', '', '', '', '', '', '女', null, 'gaogeng', '', '', '');
INSERT INTO `sys_user` VALUES ('56', '', null, '28', '本科', '1231561@scisoon.cn', '', '', '2016-08-03', '', '78946531321315615', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '优迅医学合作医院', '汉', '', '1B3B515CF2ECD79FBBAB0CEBE66FE3D4', '', '团员', '42', '', '', '', '', '', '男', null, 'xiongke001', '', '', '');
INSERT INTO `sys_user` VALUES ('57', '', null, '18', '本科', 'nanjiang@scisoon.cn', '', '', '2016-08-05', '', '354123165132123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '姜楠', '汉', '', '64AEE0C167A1D384058C9128CA8C931D', '', '团员', '23', '', '', '', '', '', '男', null, 'jiangnan', '', '', '');
INSERT INTO `sys_user` VALUES ('58', '', null, '20', '本科', 'ieiweiwang@scisoon.cn', '', '', '2016-08-22', '', '7894561321651612', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '王伟伟', '汉', '', '95192C98732387165BF8E396C0F2DAD2', '', '团员', '28', '', '', '', '', '', '女', null, 'wangweiwei', '', '', '');
INSERT INTO `sys_user` VALUES ('59', '', null, '20', '本科', 'rongleiji@scisoon.cn', '', '', '2016-08-24', '', '7894564321231512', '未婚', '是', '是', '是', '北京', '', '全职', '2016-08-29', '0', '', '纪荣磊', '汉', '', 'B59C67BF196A4758191E42F76670CEBA', '', '团员', '29', '', '', '', '', '', '女', null, 'jironglei', '', '', '');
INSERT INTO `sys_user` VALUES ('60', '', null, '18', '本科', 'zhililiu@scisoon.cn', '', '', '2016-09-02', '', '789413216546511', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '刘志丽', '汉', '', 'E10ADC3949BA59ABBE56E057F20F883E', '', '团员', '23', '', '', '', '', '', '女', null, 'liuzhili', '', '', '');
INSERT INTO `sys_user` VALUES ('62', '', null, '16', '本科', 'dadawei@scisoon.cn', '', '', '2016-09-13', '', '897465132123123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '卫大大', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '13', '', '', '', '', '', '男', null, 'weidada', '', '', '');
INSERT INTO `sys_user` VALUES ('63', '', null, '16', '本科', 'xiaojuanyang@scisoon.cn', '', '', '2016-09-19', '', '489465465165123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '杨小娟', '汉', '', '91687EA9BA3B9015C825CB32F1B49A53', '', '团员', '13', '', '', '', '', '', '女', null, 'yangxiaojuan', '', '', '');
INSERT INTO `sys_user` VALUES ('64', '', null, '18', '本科', 'jiantingchi@scisoon.cn', '', '', '2016-09-22', '', '846543132165465', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '池剑亭', '汉', '', '4AF75819AFE3CEDFB5184BB8858EF3C0', '', '团员', '19', '', '', '', '', '', '男', null, 'chijianting', '', '', '');
INSERT INTO `sys_user` VALUES ('65', '', null, '18', '本科', 'mengyingzhang@scisoon.cn', '', '', '2016-09-22', '', '8764654312316542', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '章梦颖', '汉', '', '988AE0597D6A704C5A9EE719FF309448', '', '团员', '19', '', '', '', '', '', '女', null, 'zhangmengying', '', '', '');
INSERT INTO `sys_user` VALUES ('66', '', null, '21', '本科', 'huayue@scisoon.cn', '', '', '2016-09-28', '', '6456423156156123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '18023232232', '岳群华', '汉', '', '5A78D4CD7BB4582FA8ED0FD365C3C2AD', '', '团员', '32', '', '', '', '', '', '女', '2016-10-25 09:16:14', 'yuequnhua', '', '', '');
INSERT INTO `sys_user` VALUES ('67', '', null, '6', '本科', 'wenjiegu@scisoon.cn', '', '', '2016-10-26', '', '9845613213212651', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '15001116947', '顾文杰', '汉', '', 'F862BC029EA5257B28CA61B4076BA6FE', '', '团员', '2', '', '', '', '', '', '男', null, 'guwenjie', '', '', '');
INSERT INTO `sys_user` VALUES ('68', '', null, '20', '本科', 'asdasd@w.cc', '', '', '2016-10-27', '', '3333333333333333', '未婚', '是', '是', '是', '北京', '', '全职', '', '0', '', '郭现超', '汉', '', '3E07375AECB9506808024823B718985E', '', '团员', '28', '', '', '', '', '', '男', null, 'guoxianchao', '', '', '');
INSERT INTO `sys_user` VALUES ('69', '', null, '20', '初中及以下', 'lhuang@scisoon.cn', '', '', '2016-11-08', '', '98765153165113165', '未婚', '是', '是', '是', '北京', '', '全职', '', '0', '18827370657', '黄立', '汉', '', '3C28BF250F68D6A4F635A71D0A895279', '', '团员', '29', '', '', '', '', '', '男', null, 'huangli', '', '', '');
INSERT INTO `sys_user` VALUES ('70', '', null, '20', '本科', 'mengjianli@scisoon.cn', '', '', '2016-11-11', '', '8976115612115612', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '李孟键', '汉', '', '0A2F84FF5001375ADD2814324D0211CA', '', '团员', '28', '', '', '', '', '', '男', null, 'limengjian', '', '', '');
INSERT INTO `sys_user` VALUES ('71', '', null, '20', '本科', 'wenliu@scisoon.cn', '', '', '2016-11-11', '', '9874561351654231', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '18519394165', '刘文', '汉', '', '7830BFB33D02D5E9ADCA60FCD4E801E7', '', '团员', '30', '', '', '', '', '', '男', '2016-11-11 18:23:09', 'liuwen', '', '', '');
INSERT INTO `sys_user` VALUES ('72', '', null, '27', '本科', 'shaning@scisoon.cn', '', '', '2016-11-16', '', '9875641321231156', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '15910490824', '宁莎', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '43', '', '', '', '', '', '女', null, 'ningsha', '', '', '');
INSERT INTO `sys_user` VALUES ('73', '', null, '27', '硕士', 'fengjiaozhang@scisoon.cn', '', '', '2016-11-24', '', '5643132165132123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '15910312026', '张凤娇', '汉', '', 'A91CC90C937F0FCC3BDB94376E841E16', '', '团员', '41', '', '', '', '', '', '女', '2016-11-25 14:50:25', 'zhangfengjiao', '', '', '');
INSERT INTO `sys_user` VALUES ('74', '', null, '17', '本科', 'jingbozhang@scisoon.cn', '', '', '2016-12-08', '', '156986516156556165', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '张静波', '汉', '', 'CFA94489A4627FE93D344276066160E8', '', '团员', '14', '', '', '', '', '', '男', null, 'zhangjingbo', '', '', '');
INSERT INTO `sys_user` VALUES ('75', '', null, '18', '本科', 'xiazhong@scisoon.cn', '', '', '2016-12-20', '', '12314123123123123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '18811085308', '钟夏', '汉', '', '314A06425B673DD19E9FDF110B52384F', '', '团员', '23', '', '', '', '', '', '男', '2017-03-17 09:06:06', 'zhongxia', '', '', '');
INSERT INTO `sys_user` VALUES ('76', '', null, '16', '本科', 'shuxianhuang@scisoon.cn', '', '', '2016-12-20', '', '1234574894564131', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '黄淑娴', '汉', '', '35B95D18F31292734166B18B6FC6C8B0', '', '团员', '13', '', '', '', '', '', '男', null, 'huangshuxian', '', '', '');
INSERT INTO `sys_user` VALUES ('77', '', null, '18', '本科', 'yuqin@scisoon.cn', '', '', '2017-02-09', '', '846541651651645645', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '秦瑜', '汉', '', '974C14762366E0F3FA89F1912ED9FB2B', '', '团员', '23', '', '', '', '', '', '女', null, 'qinyu', '', '', '');
INSERT INTO `sys_user` VALUES ('79', '', '0000-00-00', '29', '博士', 'yongtaoguan@scisoon.cn', '', '', '2017-02-24', '', '000000000000000000', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '12345678912', '关永涛', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '44', '', '', '', '', '', '男', '2017-02-24 13:37:02', 'guanyongtao', '', '', '');
INSERT INTO `sys_user` VALUES ('80', '', null, '16', '本科', 'qianqiansu@scisoon.cn', '', '', '2017-03-09', '', '897456415611131231', '未婚', '是', '是', '是', '北京', '', '全职', '', '0', '', '苏倩倩', '汉', '', 'CE8A87E7631D3877F1EE84383B78B09B', '', '团员', '13', '', '', '', '', '', '女', null, 'suqianqian', '', '', '');
INSERT INTO `sys_user` VALUES ('81', '', null, '16', '本科', 'binbinma@scisoon.cn', '', '', '2017-03-10', '', '489456132123154561', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '马彬彬', '汉', '', 'AF60524461DB23510568BA60BDFA6C46', '', '团员', '13', '', '', '', '', '', '男', null, 'mabinbin', '', '', '');
INSERT INTO `sys_user` VALUES ('82', '', null, '16', '本科', 'tianhuiwang@scisoon.cn', '', '', '2017-03-20', '', '7894132165131231', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '15301381218', '王天惠', '汉', '', '3805BBB912E159CD96FECA2A9650DCDD', '', '团员', '13', '', '', '', '', '', '女', '2017-03-23 18:00:42', 'wangtianhui', '', '', '');
INSERT INTO `sys_user` VALUES ('83', '', null, '27', '本科', 'tingli@scisoon.cn', '', '', '2017-03-30', '', '9874651321655415', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '李婷', '汉', '', '8FABE4C1CE1E8F8E39BA05DE5284998C', '', '团员', '43', '', '', '', '', '', '女', null, 'liting', '', '', '');
INSERT INTO `sys_user` VALUES ('84', '', null, '18', '本科', 'chunxing@scisoon.cn', '', '', '2017-04-05', '', '74894513216512321', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '邢春', '汉', '', '3700F81E99E91417C744C2CA59BA1631', '', '团员', '23', '', '', '', '', '', '女', null, 'xingchun', '', '', '');
INSERT INTO `sys_user` VALUES ('85', '', '1993-12-19', '16', '专科', 'yaoxuan@scisoon.cn', '', '', '2017-04-06', '', '110106199312193631', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '13511069317', '王耀萱', '汉', '', '38A15039A7D676117AB40F04B14A41D1', '', '团员', '13', '', '', '', '', '', '男', '2017-04-06 14:27:00', 'wangyaoxuan', '', '', '');
INSERT INTO `sys_user` VALUES ('86', '', null, '19', '本科', 'guangxinsun@scisoon.cn', '', '', '2017-04-13', '', '4854132132165131', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '孙广欣', '汉', '', 'E10ADC3949BA59ABBE56E057F20F883E', '', '团员', '25', '', '', '', '', '', '男', null, 'sunguangxin', '', '', '');
INSERT INTO `sys_user` VALUES ('87', '', null, '18', '本科', 'yanxinshi@scisoon.cn', '', '', '2017-04-28', '', '45631318941315123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '史艳新', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '23', '', '', '', '', '', '女', null, 'shiyanxin', '', '', '');
INSERT INTO `sys_user` VALUES ('88', '', null, '20', '本科', 'yuanyuanwang@scisoon.cn', '', '', '2017-05-09', '', '79846513132123165', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '王园园', '汉', '', '4A3BCAB46B71C79F5D0D2134DEE1E1F0', '', '团员', '28', '', '', '', '', '', '男', null, 'wangyuanyuan', '', '', '');
INSERT INTO `sys_user` VALUES ('89', '', null, '19', '本科', 'dongxuechen@scisoon.cn', '', '', '2016-02-01', '', '111111111111111111', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '陈冬雪', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '26', '', '', '', '', '', '男', null, 'chendongxue', '', '', '');
INSERT INTO `sys_user` VALUES ('90', '', null, '6', '初中及以下', '232323@qq.com', '', '', '2017-05-11', '', '44082319851227765X', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '18423515553', '陈凯', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '1', '', '', '', '', '', '男', null, 'chenkai', '', '', '');
INSERT INTO `sys_user` VALUES ('91', '', '1990-07-30', '6', '高中', '23232@qq.com', '', '', '2017-05-10', '', '36073219900730179X', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '15101093727', '中山二院', '汉', '', '5C3729BB82F93DFF3D9864F10092FA5D', '', '团员', '1', '', '', '', '', '', '男', '2017-06-02 10:02:23', 'zhongshaneryuan', '', '', '');
INSERT INTO `sys_user` VALUES ('92', '', null, '6', '本科', 'linding@scisoon.cn', '', '', '2017-06-01', '', '789431321651561561', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '丁琳', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '2', '', '', '', '', '', '男', null, '丁琳', '', '', '');
INSERT INTO `sys_user` VALUES ('93', '', null, '26', '本科', 'asdf@qq.com', '', '', '2017-06-08', '', '894416513215613213', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '赵盟', '汉', '', 'E10ADC3949BA59ABBE56E057F20F883E', '', '团员', '9', '', '', '', '', '', '男', null, 'zhaomeng', '', '', '');
INSERT INTO `sys_user` VALUES ('94', '', null, '24', '本科', 'asdk@qq.com', '', '', '2017-06-08', '', '8974641321321651', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '张娇', '汉', '', 'B742C80ABFEF4EE6DCCE5E6CB062FA58', '', '团员', '37', '', '', '', '', '', '男', null, 'zhangjiao', '', '', '');
INSERT INTO `sys_user` VALUES ('95', '', null, '21', '本科', 'sk@qq.com', '', '', '2017-06-08', '', '489415315613212315', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '温孝楠', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '34', '', '', '', '', '', '男', null, 'wenxiaonan', '', '', '');
INSERT INTO `sys_user` VALUES ('96', '', null, '26', '本科', 'yuanli@scisoon.cn', '', '', '2017-06-08', '', '8945613216512112', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '李媛', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '9', '', '', '', '', '', '男', null, 'liyuan', '', '', '');
INSERT INTO `sys_user` VALUES ('97', '', null, '19', '博士', 'yuhuali@scisoon.cn', '', '', '2017-07-14', '', '321321321321321321', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '李玉华', '汉', '', '9CBF8A4DCB8E30682B927F352D6559A0', '', '团员', '25', '', '', '', '', '', '女', null, 'liyuhua', '', '', '');
INSERT INTO `sys_user` VALUES ('98', '', null, '18', '本科', 'nanfang@scisoon.cn', '', '', '2017-07-26', '', '78945613213213121', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '方楠', '汉', '', 'F221B4556CF4B7B5E861E735EF3E1177', '', '团员', '18', '', '', '', '', '', '男', null, 'fangnan', '', '', '');
INSERT INTO `sys_user` VALUES ('99', '', null, '18', '本科', 'yunchaoliu@scisoon.cn', '', '', '2017-07-27', '', '87486431321321561', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '刘运超', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '19', '', '', '', '', '', '男', null, 'liuyunchao', '', '', '');
INSERT INTO `sys_user` VALUES ('100', '', null, '18', '本科', 'zemintan@scisoon.cn', '', '', '2017-07-27', '', '98741651651561151', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '谭泽民', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '19', '', '', '', '', '', '男', null, 'tanzemin', '', '', '');
INSERT INTO `sys_user` VALUES ('101', '', null, '18', '本科', 'weiweili@scisoon.cn', '', '', '2017-07-27', '', '89748945611151123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '李伟伟', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '19', '', '', '', '', '', '女', null, 'liweiwei', '', '', '');
INSERT INTO `sys_user` VALUES ('102', '', null, '18', '本科', 'fuweili@scisoon.cn', '', '', '2017-07-27', '', '987945613213212311', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '李富威', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '19', '', '', '', '', '', '男', null, 'lifuwei', '', '', '');
INSERT INTO `sys_user` VALUES ('103', '', null, '18', '本科', 'quanquangao@scisoon.cn', '', '', '2017-07-27', '', '9874513212313151', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '高权权', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '19', '', '', '', '', '', '男', null, 'gaoquanquan', '', '', '');
INSERT INTO `sys_user` VALUES ('104', '', null, '18', '本科', 'xingdong@scisoon.cn', '', '', '2017-07-27', '', '98749845321321551', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '东兴', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '19', '', '', '', '', '', '男', null, 'dongxing', '', '', '');
INSERT INTO `sys_user` VALUES ('105', '', null, '18', '本科', 'yanwang@scisoon.cn', '', '', '2017-07-27', '', '98744131651231231', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '王燕', '汉', '', 'A867961E67F80A6F3952C8AD4FAA5D9B', '', '团员', '19', '', '', '', '', '', '女', null, 'wangyan', '', '', '');
INSERT INTO `sys_user` VALUES ('106', '', null, '18', '本科', 'xiaoyankou@scisoon.cn', '', '', '2017-07-27', '', '78941321651561561', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '寇晓艳', '汉', '', '726320DDEFBCB5F17B210C64C7CA6F6E', '', '团员', '19', '', '', '', '', '', '女', null, 'kouxiaoyan', '', '', '');
INSERT INTO `sys_user` VALUES ('107', '', null, '18', '本科', 'lingbai@scisoon.cn', '', '', '2017-07-27', '', '498445616515112132', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '白灵', '汉', '', '4A7D1ED414474E4033AC29CCB8653D9B', '', '团员', '19', '', '', '', '', '', '女', null, 'bailing', '', '', '');
INSERT INTO `sys_user` VALUES ('108', '', null, '20', '本科', 'ceshi@scisoon.cn', '', '', '2017-08-07', '', '74894231321651651', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '张良程', '汉', '', 'B59C67BF196A4758191E42F76670CEBA', '', '团员', '28', '', '', '', '', '', '男', null, 'zhangliangcheng', '', '', '');
INSERT INTO `sys_user` VALUES ('109', '', null, '6', '高中', '1147942664@qq.com', '', '', '2017-08-01', '', '533324198403068561', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '18800100830', '王鑫尧', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '2', '', '', '', '', '', '男', null, 'wangxinyao', '', '', '');
INSERT INTO `sys_user` VALUES ('110', '', null, '6', '本科', '111111@qq.com', '', '', '2017-09-23', '', '111111111111111', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '库房管理', '汉', '', 'B59C67BF196A4758191E42F76670CEBA', '', '团员', '1', '', '', '', '', '', '男', null, 'kufangguanli', '', '', '');
INSERT INTO `sys_user` VALUES ('111', '', null, '23', '本科', 'asdasd@163.com', '', '', '2017-09-25', '', '1212121212121221', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '赵伟晓', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '36', '', '', '', '', '', '男', null, 'zhaoweixiao', '', '', '');
INSERT INTO `sys_user` VALUES ('112', '', null, '6', '初中及以下', 'nanliu@scisoon.cn', '', '', '2017-10-10', '', '11111111111111111', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '刘楠', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '1', '', '', '', '', '', '男', null, 'liunan', '', '', '');
INSERT INTO `sys_user` VALUES ('113', '', null, '6', '初中及以下', 'test2323@qq.com', '', '', '2017-06-21', '', '370786198412107954', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '测试一', '汉', '', '5A105E8B9D40E1329780D62EA2265D8A', '', '团员', '31', '', '', '', '', '', '男', null, 'test1', '', '', '');
INSERT INTO `sys_user` VALUES ('114', '', null, '6', '初中及以下', '32323@qq.com', '', '', '2017-05-10', '', '360281198801153443', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '测试二', '汉', '', 'AD0234829205B9033196BA818F7A872B', '', '团员', '31', '', '', '', '', '', '男', null, 'test2', '', '', '');
INSERT INTO `sys_user` VALUES ('115', '', null, '17', '本科', '4814@scisoon.cn', '', '', '2017-11-10', '', '4894156165165123', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '杜蓉', '汉', '', '7A1B1F72ABF23CB031263F9A91FC2D38', '', '团员', '15', '', '', '', '', '', '女', null, 'durong', '', '', '');
INSERT INTO `sys_user` VALUES ('116', '', null, '18', '本科', 'yangyangli@scisoon.cn', '', '', '2017-10-01', '', '2222222222222222', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '李洋洋', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '23', '', '', '', '', '', '男', null, 'liyangyang', '', '', '');
INSERT INTO `sys_user` VALUES ('117', '', null, '6', '本科', '676942089@163.com', '', '', '2017-04-24', '', '230231199101040626', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '18701319883', '范秋月', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '1', '', '', '', '', '', '女', null, 'fanqiuyue', '', '', '');
INSERT INTO `sys_user` VALUES ('118', '', null, '6', '初中及以下', '266565@qq.com', '', '', '2018-03-16', '', '340406199008061844', '未婚', '是', '是', '是', '北京', '', '全职', '', '1', '', '演示', '汉', '', '96E79218965EB72C92A549DD5A330112', '', '团员', '1', '', '', '', '', '', '男', null, 'yanshi', '', '', '');

-- ----------------------------
-- Table structure for sys_user_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_sys_role`;
CREATE TABLE `sys_user_sys_role` (
  `sys_user_id` int(11) NOT NULL COMMENT '用户ID',
  `roles_id` int(11) NOT NULL COMMENT '角色ID',
  KEY `FK80C932AAFBEB85B1` (`sys_user_id`),
  KEY `FK80C932AA7418F19C` (`roles_id`),
  CONSTRAINT `FK80C932AA7418F19C` FOREIGN KEY (`roles_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FK80C932AAFBEB85B1` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_sys_role
-- ----------------------------
INSERT INTO `sys_user_sys_role` VALUES ('1', '1');
INSERT INTO `sys_user_sys_role` VALUES ('36', '1');
INSERT INTO `sys_user_sys_role` VALUES ('48', '24');
INSERT INTO `sys_user_sys_role` VALUES ('52', '25');
INSERT INTO `sys_user_sys_role` VALUES ('56', '25');
INSERT INTO `sys_user_sys_role` VALUES ('66', '9');
INSERT INTO `sys_user_sys_role` VALUES ('73', '24');
INSERT INTO `sys_user_sys_role` VALUES ('60', '39');
INSERT INTO `sys_user_sys_role` VALUES ('41', '41');
INSERT INTO `sys_user_sys_role` VALUES ('42', '41');
INSERT INTO `sys_user_sys_role` VALUES ('77', '43');
INSERT INTO `sys_user_sys_role` VALUES ('79', '1');
INSERT INTO `sys_user_sys_role` VALUES ('80', '2');
INSERT INTO `sys_user_sys_role` VALUES ('68', '2');
INSERT INTO `sys_user_sys_role` VALUES ('69', '2');
INSERT INTO `sys_user_sys_role` VALUES ('83', '24');
INSERT INTO `sys_user_sys_role` VALUES ('55', '2');
INSERT INTO `sys_user_sys_role` VALUES ('46', '38');
INSERT INTO `sys_user_sys_role` VALUES ('46', '61');
INSERT INTO `sys_user_sys_role` VALUES ('7', '1');
INSERT INTO `sys_user_sys_role` VALUES ('14', '1');
INSERT INTO `sys_user_sys_role` VALUES ('20', '2');
INSERT INTO `sys_user_sys_role` VALUES ('37', '2');
INSERT INTO `sys_user_sys_role` VALUES ('40', '2');
INSERT INTO `sys_user_sys_role` VALUES ('59', '2');
INSERT INTO `sys_user_sys_role` VALUES ('18', '2');
INSERT INTO `sys_user_sys_role` VALUES ('53', '5');
INSERT INTO `sys_user_sys_role` VALUES ('87', '41');
INSERT INTO `sys_user_sys_role` VALUES ('63', '71');
INSERT INTO `sys_user_sys_role` VALUES ('63', '72');
INSERT INTO `sys_user_sys_role` VALUES ('63', '73');
INSERT INTO `sys_user_sys_role` VALUES ('63', '75');
INSERT INTO `sys_user_sys_role` VALUES ('63', '77');
INSERT INTO `sys_user_sys_role` VALUES ('63', '78');
INSERT INTO `sys_user_sys_role` VALUES ('63', '79');
INSERT INTO `sys_user_sys_role` VALUES ('82', '77');
INSERT INTO `sys_user_sys_role` VALUES ('88', '85');
INSERT INTO `sys_user_sys_role` VALUES ('64', '90');
INSERT INTO `sys_user_sys_role` VALUES ('65', '92');
INSERT INTO `sys_user_sys_role` VALUES ('71', '97');
INSERT INTO `sys_user_sys_role` VALUES ('58', '85');
INSERT INTO `sys_user_sys_role` VALUES ('84', '90');
INSERT INTO `sys_user_sys_role` VALUES ('84', '92');
INSERT INTO `sys_user_sys_role` VALUES ('10', '2');
INSERT INTO `sys_user_sys_role` VALUES ('70', '95');
INSERT INTO `sys_user_sys_role` VALUES ('70', '96');
INSERT INTO `sys_user_sys_role` VALUES ('70', '97');
INSERT INTO `sys_user_sys_role` VALUES ('57', '89');
INSERT INTO `sys_user_sys_role` VALUES ('57', '90');
INSERT INTO `sys_user_sys_role` VALUES ('57', '96');
INSERT INTO `sys_user_sys_role` VALUES ('39', '1');
INSERT INTO `sys_user_sys_role` VALUES ('91', '99');
INSERT INTO `sys_user_sys_role` VALUES ('93', '101');
INSERT INTO `sys_user_sys_role` VALUES ('13', '16');
INSERT INTO `sys_user_sys_role` VALUES ('13', '61');
INSERT INTO `sys_user_sys_role` VALUES ('13', '86');
INSERT INTO `sys_user_sys_role` VALUES ('13', '101');
INSERT INTO `sys_user_sys_role` VALUES ('94', '101');
INSERT INTO `sys_user_sys_role` VALUES ('54', '80');
INSERT INTO `sys_user_sys_role` VALUES ('54', '81');
INSERT INTO `sys_user_sys_role` VALUES ('54', '101');
INSERT INTO `sys_user_sys_role` VALUES ('8', '24');
INSERT INTO `sys_user_sys_role` VALUES ('8', '101');
INSERT INTO `sys_user_sys_role` VALUES ('81', '80');
INSERT INTO `sys_user_sys_role` VALUES ('81', '101');
INSERT INTO `sys_user_sys_role` VALUES ('95', '101');
INSERT INTO `sys_user_sys_role` VALUES ('96', '101');
INSERT INTO `sys_user_sys_role` VALUES ('76', '71');
INSERT INTO `sys_user_sys_role` VALUES ('76', '72');
INSERT INTO `sys_user_sys_role` VALUES ('76', '78');
INSERT INTO `sys_user_sys_role` VALUES ('74', '87');
INSERT INTO `sys_user_sys_role` VALUES ('74', '91');
INSERT INTO `sys_user_sys_role` VALUES ('74', '94');
INSERT INTO `sys_user_sys_role` VALUES ('89', '103');
INSERT INTO `sys_user_sys_role` VALUES ('5', '104');
INSERT INTO `sys_user_sys_role` VALUES ('99', '105');
INSERT INTO `sys_user_sys_role` VALUES ('100', '105');
INSERT INTO `sys_user_sys_role` VALUES ('75', '7');
INSERT INTO `sys_user_sys_role` VALUES ('75', '105');
INSERT INTO `sys_user_sys_role` VALUES ('103', '106');
INSERT INTO `sys_user_sys_role` VALUES ('104', '106');
INSERT INTO `sys_user_sys_role` VALUES ('105', '106');
INSERT INTO `sys_user_sys_role` VALUES ('107', '106');
INSERT INTO `sys_user_sys_role` VALUES ('106', '106');
INSERT INTO `sys_user_sys_role` VALUES ('21', '40');
INSERT INTO `sys_user_sys_role` VALUES ('108', '90');
INSERT INTO `sys_user_sys_role` VALUES ('47', '88');
INSERT INTO `sys_user_sys_role` VALUES ('47', '90');
INSERT INTO `sys_user_sys_role` VALUES ('47', '91');
INSERT INTO `sys_user_sys_role` VALUES ('22', '104');
INSERT INTO `sys_user_sys_role` VALUES ('22', '105');
INSERT INTO `sys_user_sys_role` VALUES ('22', '106');
INSERT INTO `sys_user_sys_role` VALUES ('102', '104');
INSERT INTO `sys_user_sys_role` VALUES ('102', '105');
INSERT INTO `sys_user_sys_role` VALUES ('102', '106');
INSERT INTO `sys_user_sys_role` VALUES ('98', '104');
INSERT INTO `sys_user_sys_role` VALUES ('98', '105');
INSERT INTO `sys_user_sys_role` VALUES ('98', '106');
INSERT INTO `sys_user_sys_role` VALUES ('101', '104');
INSERT INTO `sys_user_sys_role` VALUES ('101', '105');
INSERT INTO `sys_user_sys_role` VALUES ('101', '106');
INSERT INTO `sys_user_sys_role` VALUES ('110', '101');
INSERT INTO `sys_user_sys_role` VALUES ('72', '34');
INSERT INTO `sys_user_sys_role` VALUES ('72', '101');
INSERT INTO `sys_user_sys_role` VALUES ('51', '24');
INSERT INTO `sys_user_sys_role` VALUES ('51', '101');
INSERT INTO `sys_user_sys_role` VALUES ('51', '102');
INSERT INTO `sys_user_sys_role` VALUES ('111', '101');
INSERT INTO `sys_user_sys_role` VALUES ('44', '20');
INSERT INTO `sys_user_sys_role` VALUES ('44', '32');
INSERT INTO `sys_user_sys_role` VALUES ('44', '109');
INSERT INTO `sys_user_sys_role` VALUES ('112', '1');
INSERT INTO `sys_user_sys_role` VALUES ('113', '1');
INSERT INTO `sys_user_sys_role` VALUES ('114', '1');
INSERT INTO `sys_user_sys_role` VALUES ('45', '42');
INSERT INTO `sys_user_sys_role` VALUES ('45', '110');
INSERT INTO `sys_user_sys_role` VALUES ('109', '107');
INSERT INTO `sys_user_sys_role` VALUES ('92', '2');
INSERT INTO `sys_user_sys_role` VALUES ('30', '15');
INSERT INTO `sys_user_sys_role` VALUES ('30', '61');
INSERT INTO `sys_user_sys_role` VALUES ('6', '1');
INSERT INTO `sys_user_sys_role` VALUES ('6', '101');
INSERT INTO `sys_user_sys_role` VALUES ('6', '110');
INSERT INTO `sys_user_sys_role` VALUES ('115', '111');
INSERT INTO `sys_user_sys_role` VALUES ('38', '83');
INSERT INTO `sys_user_sys_role` VALUES ('38', '101');
INSERT INTO `sys_user_sys_role` VALUES ('38', '112');
INSERT INTO `sys_user_sys_role` VALUES ('97', '113');
INSERT INTO `sys_user_sys_role` VALUES ('62', '71');
INSERT INTO `sys_user_sys_role` VALUES ('62', '72');
INSERT INTO `sys_user_sys_role` VALUES ('62', '74');
INSERT INTO `sys_user_sys_role` VALUES ('62', '78');
INSERT INTO `sys_user_sys_role` VALUES ('85', '71');
INSERT INTO `sys_user_sys_role` VALUES ('43', '5');
INSERT INTO `sys_user_sys_role` VALUES ('43', '16');
INSERT INTO `sys_user_sys_role` VALUES ('43', '109');
INSERT INTO `sys_user_sys_role` VALUES ('116', '90');
INSERT INTO `sys_user_sys_role` VALUES ('49', '1');
INSERT INTO `sys_user_sys_role` VALUES ('90', '107');
INSERT INTO `sys_user_sys_role` VALUES ('117', '107');
INSERT INTO `sys_user_sys_role` VALUES ('67', '1');
INSERT INTO `sys_user_sys_role` VALUES ('67', '107');
INSERT INTO `sys_user_sys_role` VALUES ('67', '108');
INSERT INTO `sys_user_sys_role` VALUES ('86', '64');
INSERT INTO `sys_user_sys_role` VALUES ('118', '114');

-- ----------------------------
-- Table structure for tijianinfo
-- ----------------------------
DROP TABLE IF EXISTS `tijianinfo`;
CREATE TABLE `tijianinfo` (
  `id` int(100) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `province` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `nickname` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `isQuit` varchar(150) DEFAULT NULL,
  `headimgurl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tijianinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tj_salescontacts
-- ----------------------------
DROP TABLE IF EXISTS `tj_salescontacts`;
CREATE TABLE `tj_salescontacts` (
  `salesContactsId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `cityHead` varchar(30) DEFAULT NULL,
  `internalOrno` varchar(30) DEFAULT NULL,
  `isQuit` varchar(30) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `saleEmail` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`salesContactsId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tj_salescontacts
-- ----------------------------
INSERT INTO `tj_salescontacts` VALUES ('18', '北京市海淀区四季青桥益园文创基地C7', '直营', '北京', '黄金龙', '黄金龙', null, '否', '15001116947', 'wenjiegu@scisoon.cn', '顾文杰', '张春可', '2018-03-22 14:54:52');

-- ----------------------------
-- Table structure for tj_sendsample
-- ----------------------------
DROP TABLE IF EXISTS `tj_sendsample`;
CREATE TABLE `tj_sendsample` (
  `sendSampleId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `agent` varchar(30) DEFAULT NULL,
  `cardAfterFour` varchar(30) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `checkProject` text,
  `checkRoom` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `cityHead` varchar(30) DEFAULT NULL,
  `collectionDate` varchar(30) DEFAULT NULL,
  `creditCardNum` varchar(30) DEFAULT NULL,
  `expressCompany` varchar(30) DEFAULT NULL,
  `expressNumber` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `invoiceNumber` varchar(30) DEFAULT NULL,
  `invoiceTitle` varchar(30) DEFAULT NULL,
  `isHaveInvoice` varchar(30) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `outState` varchar(30) DEFAULT NULL,
  `patientName` varchar(30) DEFAULT NULL,
  `paymentBy` varchar(30) DEFAULT NULL,
  `posNote` varchar(30) DEFAULT NULL,
  `posNumber` varchar(30) DEFAULT NULL,
  `reMoney` varchar(30) DEFAULT NULL,
  `receiptNumber` varchar(30) DEFAULT NULL,
  `receivablesDate` varchar(30) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `reportRecipient` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `settlementBy` varchar(30) DEFAULT NULL,
  `sjrdh` varchar(100) DEFAULT NULL,
  `sjrxm` varchar(100) DEFAULT NULL,
  `transferType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`sendSampleId`),
  KEY `index_tijianSendSampleID` (`sendSampleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tj_sendsample
-- ----------------------------

-- ----------------------------
-- Table structure for tj_sendsamplehospital
-- ----------------------------
DROP TABLE IF EXISTS `tj_sendsamplehospital`;
CREATE TABLE `tj_sendsamplehospital` (
  `sendSampleHospitalId` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `checkHospital` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  PRIMARY KEY (`sendSampleHospitalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tj_sendsamplehospital
-- ----------------------------

-- ----------------------------
-- Table structure for tl_codeprint
-- ----------------------------
DROP TABLE IF EXISTS `tl_codeprint`;
CREATE TABLE `tl_codeprint` (
  `codePrintId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `inspectionUnit` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(30) NOT NULL,
  `downState` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  PRIMARY KEY (`codePrintId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tl_codeprint
-- ----------------------------

-- ----------------------------
-- Table structure for tumour_samplingmakeup
-- ----------------------------
DROP TABLE IF EXISTS `tumour_samplingmakeup`;
CREATE TABLE `tumour_samplingmakeup` (
  `samplingMakeupId` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(30) DEFAULT NULL,
  `samplingDate` varchar(30) DEFAULT NULL,
  `custName` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `lyqg` varchar(30) DEFAULT NULL,
  `ybfz` varchar(30) DEFAULT NULL,
  `lbjzyc` varchar(30) DEFAULT NULL,
  `yczyc` varchar(30) DEFAULT NULL,
  `sslqp` varchar(30) DEFAULT NULL,
  `sslqpz` varchar(30) DEFAULT NULL,
  `sslqph` varchar(30) DEFAULT NULL,
  `sxxzz` varchar(30) DEFAULT NULL,
  `sxxzzg` varchar(30) DEFAULT NULL,
  `cslqp` varchar(30) DEFAULT NULL,
  `cslqpz` varchar(30) DEFAULT NULL,
  `cslqph` varchar(30) DEFAULT NULL,
  `cxxzz` varchar(30) DEFAULT NULL,
  `cxxzzg` varchar(30) DEFAULT NULL,
  `xfs` varchar(30) DEFAULT NULL,
  `xfsml` varchar(30) DEFAULT NULL,
  `wzx` varchar(30) DEFAULT NULL,
  `wzxml` varchar(30) DEFAULT NULL,
  `kqsz` varchar(30) DEFAULT NULL,
  `qt` varchar(30) DEFAULT NULL,
  `qtpd` varchar(30) DEFAULT NULL,
  `againSampleNo` varchar(30) DEFAULT NULL,
  `againSamplingDate` varchar(30) DEFAULT NULL,
  `againCustName` varchar(30) DEFAULT NULL,
  `againSampleType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `againlyqg` varchar(30) DEFAULT NULL,
  `againybfz` varchar(30) DEFAULT NULL,
  `againlbjzyc` varchar(30) DEFAULT NULL,
  `againyczyc` varchar(30) DEFAULT NULL,
  `againsslqp` varchar(30) DEFAULT NULL,
  `againsslqpz` varchar(30) DEFAULT NULL,
  `againsslqph` varchar(30) DEFAULT NULL,
  `againsxxzz` varchar(30) DEFAULT NULL,
  `againsxxzzg` varchar(30) DEFAULT NULL,
  `againcslqp` varchar(30) DEFAULT NULL,
  `againcslqpz` varchar(30) DEFAULT NULL,
  `againcslqph` varchar(30) DEFAULT NULL,
  `againcxxzz` varchar(30) DEFAULT NULL,
  `againcxxzzg` varchar(30) DEFAULT NULL,
  `againxfs` varchar(30) DEFAULT NULL,
  `againxfsml` varchar(30) DEFAULT NULL,
  `againwzx` varchar(30) DEFAULT NULL,
  `againwzxml` varchar(30) DEFAULT NULL,
  `againkqsz` varchar(30) DEFAULT NULL,
  `againqt` varchar(30) DEFAULT NULL,
  `againqtpd` varchar(30) DEFAULT NULL,
  `againqtsm` varchar(30) DEFAULT NULL,
  `qtsm` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`samplingMakeupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tumour_samplingmakeup
-- ----------------------------

-- ----------------------------
-- Table structure for tum_accessdesclib
-- ----------------------------
DROP TABLE IF EXISTS `tum_accessdesclib`;
CREATE TABLE `tum_accessdesclib` (
  `accessDescLibId` int(11) NOT NULL AUTO_INCREMENT,
  `aaChangeRefGene` longtext,
  `accessRelevant` longtext,
  `alt` varchar(100) DEFAULT NULL,
  `chr` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `geneDesc` longtext,
  `geneRefGene` varchar(30) DEFAULT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`accessDescLibId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_accessdesclib
-- ----------------------------

-- ----------------------------
-- Table structure for tum_accessdetail
-- ----------------------------
DROP TABLE IF EXISTS `tum_accessdetail`;
CREATE TABLE `tum_accessdetail` (
  `accessDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `accessDesc` longtext,
  `accessRelevant` varchar(255) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`accessDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_accessdetail
-- ----------------------------

-- ----------------------------
-- Table structure for tum_accessdetailgene
-- ----------------------------
DROP TABLE IF EXISTS `tum_accessdetailgene`;
CREATE TABLE `tum_accessdetailgene` (
  `accessDetaidGeneId` int(11) NOT NULL AUTO_INCREMENT,
  `accessRelevant` text,
  `geneRefGene` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`accessDetaidGeneId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_accessdetailgene
-- ----------------------------

-- ----------------------------
-- Table structure for tum_accessmedicinelib
-- ----------------------------
DROP TABLE IF EXISTS `tum_accessmedicinelib`;
CREATE TABLE `tum_accessmedicinelib` (
  `accessMedicineLibId` int(11) NOT NULL AUTO_INCREMENT,
  `aaChangeRefGene` longtext,
  `accessMap` varchar(30) DEFAULT NULL,
  `accessRelevant` varchar(100) DEFAULT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `chr` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `geneRefGene` varchar(30) DEFAULT NULL,
  `medicine` varchar(30) DEFAULT NULL,
  `medicineGene` varchar(30) DEFAULT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `tumourType` varchar(255) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`accessMedicineLibId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_accessmedicinelib
-- ----------------------------

-- ----------------------------
-- Table structure for tum_chemicaldruganadet
-- ----------------------------
DROP TABLE IF EXISTS `tum_chemicaldruganadet`;
CREATE TABLE `tum_chemicaldruganadet` (
  `chemicaldrugAnadetId` int(11) NOT NULL AUTO_INCREMENT,
  `alt` varchar(30) DEFAULT NULL,
  `chr` varchar(30) DEFAULT NULL,
  `chr2` varchar(30) DEFAULT NULL,
  `depth` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `gene` varchar(30) DEFAULT NULL,
  `info` longtext,
  `mutantFreq` varchar(30) DEFAULT NULL,
  `pos` varchar(30) DEFAULT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `rsno` varchar(30) DEFAULT NULL,
  `sampleId` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`chemicaldrugAnadetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_chemicaldruganadet
-- ----------------------------

-- ----------------------------
-- Table structure for tum_chemicaldruglib
-- ----------------------------
DROP TABLE IF EXISTS `tum_chemicaldruglib`;
CREATE TABLE `tum_chemicaldruglib` (
  `chemicaldrugLibId` int(11) NOT NULL AUTO_INCREMENT,
  `chr` varchar(30) DEFAULT NULL,
  `drugList` varchar(200) DEFAULT NULL,
  `effectForcast` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `evidence` varchar(30) DEFAULT NULL,
  `gene` varchar(30) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `isHaveLiterature` varchar(30) DEFAULT NULL,
  `isWildType` varchar(30) DEFAULT NULL,
  `literature` longtext,
  `ref` varchar(30) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `rsno` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`chemicaldrugLibId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_chemicaldruglib
-- ----------------------------

-- ----------------------------
-- Table structure for tum_chemicaldruglib549
-- ----------------------------
DROP TABLE IF EXISTS `tum_chemicaldruglib549`;
CREATE TABLE `tum_chemicaldruglib549` (
  `chemicaldrugLibId` int(11) NOT NULL AUTO_INCREMENT,
  `chr` varchar(30) DEFAULT NULL,
  `drugList` varchar(100) DEFAULT NULL,
  `effectForcast` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `evidence` varchar(30) DEFAULT NULL,
  `gene` varchar(30) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `rsno` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`chemicaldrugLibId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_chemicaldruglib549
-- ----------------------------

-- ----------------------------
-- Table structure for tum_chemicaldrugreaddet
-- ----------------------------
DROP TABLE IF EXISTS `tum_chemicaldrugreaddet`;
CREATE TABLE `tum_chemicaldrugreaddet` (
  `chemicaldrugReaddetId` int(11) NOT NULL AUTO_INCREMENT,
  `chr` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `gene` varchar(30) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `readLibID` varchar(30) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `rsno` varchar(30) DEFAULT NULL,
  `sampleReadId` varchar(30) DEFAULT NULL,
  `sampleReadNo` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`chemicaldrugReaddetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_chemicaldrugreaddet
-- ----------------------------

-- ----------------------------
-- Table structure for tum_fusionfinalanadet
-- ----------------------------
DROP TABLE IF EXISTS `tum_fusionfinalanadet`;
CREATE TABLE `tum_fusionfinalanadet` (
  `fusionfinalAnadetId` int(11) NOT NULL AUTO_INCREMENT,
  `bands` varchar(30) DEFAULT NULL,
  `fusionReads` varchar(30) DEFAULT NULL,
  `fusionTotalReads` varchar(30) DEFAULT NULL,
  `gene` varchar(300) DEFAULT NULL,
  `loc` varchar(30) DEFAULT NULL,
  `sampleId` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `chromosome1` varchar(30) DEFAULT NULL,
  `gene1` varchar(30) DEFAULT NULL,
  `sclip1_info1` varchar(30) DEFAULT NULL,
  `sclip1_info2` varchar(30) DEFAULT NULL,
  `chromosome2` varchar(30) DEFAULT NULL,
  `gene2` varchar(30) DEFAULT NULL,
  `sclip2_info1` varchar(30) DEFAULT NULL,
  `sclip2_info2` varchar(30) DEFAULT NULL,
  `db_info` varchar(30) DEFAULT NULL,
  `fusion_quality` varchar(30) DEFAULT NULL,
  `sup_reads_hq` varchar(30) DEFAULT NULL,
  `freq` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`fusionfinalAnadetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_fusionfinalanadet
-- ----------------------------

-- ----------------------------
-- Table structure for tum_fusionfinallib
-- ----------------------------
DROP TABLE IF EXISTS `tum_fusionfinallib`;
CREATE TABLE `tum_fusionfinallib` (
  `fusionfinalLibId` int(11) NOT NULL AUTO_INCREMENT,
  `cosmic_info` varchar(300) DEFAULT NULL,
  `molecular_subtype` varchar(30) DEFAULT NULL,
  `medicine` varchar(30) DEFAULT NULL,
  `drugIndication` varchar(30) DEFAULT NULL,
  `effectForcast` varchar(30) DEFAULT NULL,
  `evidence` longtext,
  `drugIntroduction` longtext,
  `interpretationState` varchar(30) DEFAULT NULL,
  `isHaveLiterature` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `geneRefGene` varchar(30) DEFAULT NULL,
  `mutationFrequency` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`fusionfinalLibId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_fusionfinallib
-- ----------------------------

-- ----------------------------
-- Table structure for tum_fusionfinalreaddet
-- ----------------------------
DROP TABLE IF EXISTS `tum_fusionfinalreaddet`;
CREATE TABLE `tum_fusionfinalreaddet` (
  `fusionfinalReaddetId` int(11) NOT NULL AUTO_INCREMENT,
  `bands` varchar(30) DEFAULT NULL,
  `fusionReads` varchar(30) DEFAULT NULL,
  `fusionTotalReads` varchar(30) DEFAULT NULL,
  `gene` varchar(30) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `loc` varchar(30) DEFAULT NULL,
  `readLibID` varchar(30) DEFAULT NULL,
  `sampleReadId` varchar(30) DEFAULT NULL,
  `sampleReadNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`fusionfinalReaddetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_fusionfinalreaddet
-- ----------------------------

-- ----------------------------
-- Table structure for tum_genedetectionresultprompt
-- ----------------------------
DROP TABLE IF EXISTS `tum_genedetectionresultprompt`;
CREATE TABLE `tum_genedetectionresultprompt` (
  `geneDetectionResultPromptId` int(11) NOT NULL AUTO_INCREMENT,
  `clinicalPlace` varchar(100) DEFAULT NULL,
  `clinicalStages` varchar(30) DEFAULT NULL,
  `clinicalTrial` varchar(500) DEFAULT NULL,
  `detailedBasis` longtext,
  `detectionOfGene` varchar(30) DEFAULT NULL,
  `detectionRemarks` varchar(100) DEFAULT NULL,
  `detectionResult` varchar(100) DEFAULT NULL,
  `distinguishTorC` longtext,
  `drugIntroduction` longtext,
  `interpretationState` varchar(30) DEFAULT NULL,
  `isHaveLiterature` varchar(30) DEFAULT NULL,
  `nciNum` varchar(30) DEFAULT NULL,
  `secondDiagnosis` varchar(50) DEFAULT NULL,
  `tumour` varchar(100) DEFAULT NULL,
  `tumourMedication` varchar(100) DEFAULT NULL,
  `tumourType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`geneDetectionResultPromptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_genedetectionresultprompt
-- ----------------------------

-- ----------------------------
-- Table structure for tum_genepaper
-- ----------------------------
DROP TABLE IF EXISTS `tum_genepaper`;
CREATE TABLE `tum_genepaper` (
  `genePaperId` int(11) NOT NULL AUTO_INCREMENT,
  `detectionOfGene` varchar(30) DEFAULT NULL,
  `detectionResult` varchar(30) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`genePaperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_genepaper
-- ----------------------------

-- ----------------------------
-- Table structure for tum_guidingsignificance
-- ----------------------------
DROP TABLE IF EXISTS `tum_guidingsignificance`;
CREATE TABLE `tum_guidingsignificance` (
  `guidingSignificanceId` int(11) NOT NULL AUTO_INCREMENT,
  `geneRefGene` varchar(50) DEFAULT NULL,
  `medicine` varchar(100) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `tumourCheckProject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guidingSignificanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_guidingsignificance
-- ----------------------------

-- ----------------------------
-- Table structure for tum_inheriteddiseases
-- ----------------------------
DROP TABLE IF EXISTS `tum_inheriteddiseases`;
CREATE TABLE `tum_inheriteddiseases` (
  `inheritedDiseasesId` int(11) NOT NULL AUTO_INCREMENT,
  `checkCompany` varchar(50) DEFAULT NULL,
  `checkDate` varchar(30) DEFAULT NULL,
  `checkProject` varchar(50) DEFAULT NULL,
  `collectionDate` varchar(30) DEFAULT NULL,
  `dateOfBirth` varchar(30) DEFAULT NULL,
  `excelUrl` varchar(255) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `parentName` varchar(30) DEFAULT NULL,
  `reportDate` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`inheritedDiseasesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_inheriteddiseases
-- ----------------------------

-- ----------------------------
-- Table structure for tum_molecularsubtype
-- ----------------------------
DROP TABLE IF EXISTS `tum_molecularsubtype`;
CREATE TABLE `tum_molecularsubtype` (
  `cosmic_info` varchar(30) NOT NULL DEFAULT '',
  `molecular_subtype` varchar(30) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_molecularsubtype
-- ----------------------------

-- ----------------------------
-- Table structure for tum_multianmedicinelib
-- ----------------------------
DROP TABLE IF EXISTS `tum_multianmedicinelib`;
CREATE TABLE `tum_multianmedicinelib` (
  `multianMedicineLibId` int(11) NOT NULL AUTO_INCREMENT,
  `drugIntroduction` longtext,
  `medicine` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`multianMedicineLibId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_multianmedicinelib
-- ----------------------------

-- ----------------------------
-- Table structure for tum_multiannoanadet
-- ----------------------------
DROP TABLE IF EXISTS `tum_multiannoanadet`;
CREATE TABLE `tum_multiannoanadet` (
  `multiannoAnadetId` int(11) NOT NULL AUTO_INCREMENT,
  `aaChangeRefGene` longtext,
  `alt` varchar(100) DEFAULT NULL,
  `augAFR` varchar(50) DEFAULT NULL,
  `augAMR` varchar(50) DEFAULT NULL,
  `augAll` varchar(50) DEFAULT NULL,
  `augEAS` varchar(50) DEFAULT NULL,
  `augEUR` varchar(50) DEFAULT NULL,
  `augSAS` varchar(50) DEFAULT NULL,
  `avsnp142` varchar(30) DEFAULT NULL,
  `chr` varchar(30) DEFAULT NULL,
  `clinsig` longtext,
  `clnacc` longtext,
  `clndbn` longtext,
  `clndsdb` longtext,
  `clndsdbid` longtext,
  `cosmic68` longtext,
  `cosmic70` longtext,
  `domain` longtext,
  `endpos` varchar(30) DEFAULT NULL,
  `exacAFR` varchar(50) DEFAULT NULL,
  `exacAMR` varchar(50) DEFAULT NULL,
  `exacAll` varchar(50) DEFAULT NULL,
  `exacEAS` varchar(50) DEFAULT NULL,
  `exacFIN` varchar(50) DEFAULT NULL,
  `exacNFE` varchar(50) DEFAULT NULL,
  `exacOTH` varchar(50) DEFAULT NULL,
  `exacSAS` varchar(50) DEFAULT NULL,
  `exonicFuncRefGene` varchar(30) DEFAULT NULL,
  `filter` text,
  `format` longtext,
  `funcKnownGene` varchar(30) DEFAULT NULL,
  `geneDetail` longtext,
  `geneRefGene` varchar(200) DEFAULT NULL,
  `geneType` varchar(100) DEFAULT NULL,
  `hdivPred` varchar(50) DEFAULT NULL,
  `hdivScore` varchar(50) DEFAULT NULL,
  `hvarPred` varchar(50) DEFAULT NULL,
  `hvarScore` varchar(50) DEFAULT NULL,
  `info` longtext,
  `omimNo` longtext,
  `qual` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `sampleId` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `siftPred` varchar(50) DEFAULT NULL,
  `siftScore` varchar(50) DEFAULT NULL,
  `siv2Aa` varchar(50) DEFAULT NULL,
  `siv2All` varchar(50) DEFAULT NULL,
  `siv2Ea` varchar(50) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `mutationFrequency` varchar(20) DEFAULT NULL,
  `coverage` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`multiannoAnadetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_multiannoanadet
-- ----------------------------

-- ----------------------------
-- Table structure for tum_multiannolib
-- ----------------------------
DROP TABLE IF EXISTS `tum_multiannolib`;
CREATE TABLE `tum_multiannolib` (
  `multiannoLibId` int(11) NOT NULL AUTO_INCREMENT,
  `aaChangeRefGene` longtext,
  `alt` varchar(100) DEFAULT NULL,
  `chr` varchar(30) DEFAULT NULL,
  `drugIndication` varchar(30) DEFAULT NULL,
  `drugIntroduction` varchar(1500) DEFAULT NULL,
  `effectForcast` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `evidence` longtext,
  `geneMutation` varchar(150) DEFAULT NULL,
  `geneRefGene` varchar(200) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `isHaveLiterature` varchar(30) DEFAULT NULL,
  `medicine` varchar(30) DEFAULT NULL,
  `ref` varchar(200) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `mutationFrequency` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`multiannoLibId`),
  KEY `alt` (`alt`,`chr`,`endpos`,`ref`,`startpos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_multiannolib
-- ----------------------------

-- ----------------------------
-- Table structure for tum_multiannoreaddet
-- ----------------------------
DROP TABLE IF EXISTS `tum_multiannoreaddet`;
CREATE TABLE `tum_multiannoreaddet` (
  `multiannoReaddetId` int(11) NOT NULL AUTO_INCREMENT,
  `aaChangeRefGene` longtext,
  `alt` varchar(30) DEFAULT NULL,
  `avsnp142` varchar(30) DEFAULT NULL,
  `chr` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `exonicFuncRefGene` varchar(30) DEFAULT NULL,
  `funcKnownGene` varchar(30) DEFAULT NULL,
  `geneRefGene` varchar(30) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `readLibID` varchar(30) DEFAULT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `sampleReadId` varchar(30) DEFAULT NULL,
  `sampleReadNo` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`multiannoReaddetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_multiannoreaddet
-- ----------------------------

-- ----------------------------
-- Table structure for tum_package
-- ----------------------------
DROP TABLE IF EXISTS `tum_package`;
CREATE TABLE `tum_package` (
  `tumPackageId` int(11) NOT NULL AUTO_INCREMENT,
  `proID` int(11) DEFAULT NULL,
  `reportTemplate` varchar(120) DEFAULT NULL,
  `tum_package` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `tumProductId` int(11) NOT NULL,
  PRIMARY KEY (`tumPackageId`),
  KEY `FK9AC9D1139CA9D3B0` (`tumProductId`),
  CONSTRAINT `FK9AC9D1139CA9D3B0` FOREIGN KEY (`tumProductId`) REFERENCES `tum_product` (`tumProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_package
-- ----------------------------

-- ----------------------------
-- Table structure for tum_personmanagerofxxgl
-- ----------------------------
DROP TABLE IF EXISTS `tum_personmanagerofxxgl`;
CREATE TABLE `tum_personmanagerofxxgl` (
  `personmanagerofxxglId` int(11) NOT NULL AUTO_INCREMENT,
  `pacId` int(11) NOT NULL,
  `person` varchar(30) DEFAULT NULL,
  `proId` int(11) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`personmanagerofxxglId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_personmanagerofxxgl
-- ----------------------------

-- ----------------------------
-- Table structure for tum_personmanagerofycjd
-- ----------------------------
DROP TABLE IF EXISTS `tum_personmanagerofycjd`;
CREATE TABLE `tum_personmanagerofycjd` (
  `personmanagerofycjdId` int(11) NOT NULL AUTO_INCREMENT,
  `pacId` int(11) NOT NULL,
  `person` varchar(30) DEFAULT NULL,
  `proId` int(11) NOT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`personmanagerofycjdId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_personmanagerofycjd
-- ----------------------------

-- ----------------------------
-- Table structure for tum_product
-- ----------------------------
DROP TABLE IF EXISTS `tum_product`;
CREATE TABLE `tum_product` (
  `tumProductId` int(11) NOT NULL AUTO_INCREMENT,
  `tum_product` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`tumProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_product
-- ----------------------------

-- ----------------------------
-- Table structure for tum_reportpersonalization
-- ----------------------------
DROP TABLE IF EXISTS `tum_reportpersonalization`;
CREATE TABLE `tum_reportpersonalization` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `agent` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cityContacts` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `saleName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `checkHospital` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `showHospital` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `edition` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `recipient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `haveCopies` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `isLabel` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `updateName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `inputTime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `inputName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `checkProject` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tum_reportpersonalization
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tentumournccn
-- ----------------------------
DROP TABLE IF EXISTS `tum_tentumournccn`;
CREATE TABLE `tum_tentumournccn` (
  `tenTumourNccnId` int(11) NOT NULL AUTO_INCREMENT,
  `inputName` varchar(30) NOT NULL,
  `inputTime` varchar(30) NOT NULL,
  `nccnMedicine` varchar(120) DEFAULT NULL,
  `readDiagnosis` varchar(120) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`tenTumourNccnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tentumournccn
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tumourana
-- ----------------------------
DROP TABLE IF EXISTS `tum_tumourana`;
CREATE TABLE `tum_tumourana` (
  `tumouranaId` int(11) NOT NULL AUTO_INCREMENT,
  `analysisState` varchar(30) DEFAULT NULL,
  `analysisTime` varchar(30) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `photoPath` varchar(100) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `uploadState` varchar(30) DEFAULT NULL,
  `emailState` varchar(30) DEFAULT NULL,
  `fxName` varchar(30) DEFAULT NULL,
  `fxTime` varchar(20) DEFAULT NULL,
  `jdName` varchar(20) DEFAULT NULL,
  `jdTime` varchar(20) DEFAULT NULL,
  `tonglumiaoshu` text,
  PRIMARY KEY (`tumouranaId`),
  KEY `sampleNo` (`sampleNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tumourana
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tumourcheckproject
-- ----------------------------
DROP TABLE IF EXISTS `tum_tumourcheckproject`;
CREATE TABLE `tum_tumourcheckproject` (
  `tumourCheckProjectId` int(11) NOT NULL AUTO_INCREMENT,
  `tumourCheckProject` varchar(100) DEFAULT NULL,
  `tumourGene` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tumourCheckProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tumourcheckproject
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tumourcnv
-- ----------------------------
DROP TABLE IF EXISTS `tum_tumourcnv`;
CREATE TABLE `tum_tumourcnv` (
  `cnvId` int(11) NOT NULL AUTO_INCREMENT,
  `chromosome` varchar(30) DEFAULT NULL,
  `cn` varchar(30) DEFAULT NULL,
  `end` varchar(30) DEFAULT NULL,
  `gene` varchar(30) DEFAULT NULL,
  `log2` varchar(30) DEFAULT NULL,
  `probes` varchar(30) DEFAULT NULL,
  `sampleID` varchar(30) DEFAULT NULL,
  `start` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `checkResult` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cnvId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tumourcnv
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tumourpaper
-- ----------------------------
DROP TABLE IF EXISTS `tum_tumourpaper`;
CREATE TABLE `tum_tumourpaper` (
  `tumourPaperId` int(11) NOT NULL AUTO_INCREMENT,
  `interpretationState` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `tumour` varchar(30) DEFAULT NULL,
  `tumourMedication` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`tumourPaperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tumourpaper
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tumourread
-- ----------------------------
DROP TABLE IF EXISTS `tum_tumourread`;
CREATE TABLE `tum_tumourread` (
  `tumourreadId` int(11) NOT NULL AUTO_INCREMENT,
  `analysisTime` varchar(30) DEFAULT NULL,
  `interpretationState` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  PRIMARY KEY (`tumourreadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tumourread
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tumourreportissue
-- ----------------------------
DROP TABLE IF EXISTS `tum_tumourreportissue`;
CREATE TABLE `tum_tumourreportissue` (
  `tumourReportIssueId` int(11) NOT NULL AUTO_INCREMENT,
  `pdfPath` varchar(100) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(20) DEFAULT NULL,
  `wrongState` varchar(30) DEFAULT NULL,
  `wrongMessage` varchar(100) DEFAULT NULL,
  `tumourName` varchar(30) DEFAULT NULL,
  `tumPackage` varchar(30) DEFAULT NULL,
  `tumProduct` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `cityContacts` varchar(30) DEFAULT NULL,
  `saleName` varchar(30) DEFAULT NULL,
  `hospital` varchar(50) DEFAULT NULL,
  `cusMobile` varchar(20) DEFAULT NULL,
  `reportState` varchar(20) DEFAULT NULL,
  `haveCopies` varchar(20) DEFAULT NULL,
  `reportRecipient` varchar(100) DEFAULT NULL,
  `reportPerson` varchar(100) DEFAULT NULL,
  `expressNo` varchar(50) DEFAULT NULL,
  `expressCompany` varchar(30) DEFAULT NULL,
  `reportTemplate` varchar(30) DEFAULT NULL,
  `reportDate` varchar(30) DEFAULT NULL,
  `codeState` varchar(30) DEFAULT NULL,
  `codePrintDate` varchar(30) DEFAULT NULL,
  `codePerson` varchar(30) DEFAULT NULL,
  `emailState` varchar(30) DEFAULT NULL,
  `emailUpdateName` varchar(30) DEFAULT '',
  `emailUpdateTime` varchar(30) DEFAULT '',
  `emailSendName` varchar(30) DEFAULT '',
  `emailSendTime` varchar(30) DEFAULT '',
  PRIMARY KEY (`tumourReportIssueId`),
  KEY `count_sampleNo` (`sampleNo`) USING BTREE,
  KEY `count_reportid` (`tumourReportIssueId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tumourreportissue
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tumourreportreview
-- ----------------------------
DROP TABLE IF EXISTS `tum_tumourreportreview`;
CREATE TABLE `tum_tumourreportreview` (
  `tumourReportReviewId` int(11) NOT NULL AUTO_INCREMENT,
  `pdfPath` varchar(100) DEFAULT NULL,
  `reportOpinion` longtext,
  `reportReviewName` varchar(30) DEFAULT NULL,
  `reportReviewTime` varchar(30) DEFAULT NULL,
  `reportState` varchar(30) DEFAULT NULL,
  `sampleNo` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(20) DEFAULT NULL,
  `tumourName` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `tumProduct` varchar(30) DEFAULT NULL,
  `tumPackage` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `custReportOpinion` longtext,
  `custReportReviewName` varchar(30) DEFAULT NULL,
  `custReportReviewTime` varchar(30) DEFAULT NULL,
  `errorType` varchar(50) DEFAULT '',
  `errorContent` varchar(200) DEFAULT '',
  `errorFind` varchar(50) DEFAULT '',
  `errorPerson` varchar(50) DEFAULT '',
  `errorSpan` varchar(50) DEFAULT '',
  `errorBefore` varchar(50) DEFAULT '',
  `errorInputTime` varchar(50) DEFAULT '',
  `errorUpdateName` varchar(50) DEFAULT '',
  `errorUpdateTime` varchar(50) DEFAULT '',
  PRIMARY KEY (`tumourReportReviewId`),
  KEY `sampleNo` (`sampleNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tumourreportreview
-- ----------------------------

-- ----------------------------
-- Table structure for tum_tumourtemporary
-- ----------------------------
DROP TABLE IF EXISTS `tum_tumourtemporary`;
CREATE TABLE `tum_tumourtemporary` (
  `TumourTemporaryId` int(11) NOT NULL AUTO_INCREMENT,
  `tumourAge` varchar(30) DEFAULT NULL,
  `tumourCheckHospital` varchar(30) DEFAULT NULL,
  `tumourDiagnosis` varchar(120) DEFAULT '',
  `tumourFamily` varchar(200) DEFAULT NULL,
  `tumourHistory` varchar(200) DEFAULT NULL,
  `tumourName` varchar(30) DEFAULT NULL,
  `tumourSampleNo` varchar(30) DEFAULT NULL,
  `tumourSampleType` varchar(255) DEFAULT NULL,
  `tumourSex` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) NOT NULL,
  `updateTime` varchar(20) NOT NULL,
  `readDiagnosis` varchar(120) DEFAULT '',
  `tumourMobile` varchar(30) DEFAULT NULL,
  `tumourIdcard` varchar(30) DEFAULT NULL,
  `tumourCheckType` varchar(100) DEFAULT NULL,
  `pacId` int(11) DEFAULT NULL,
  `proId` int(11) DEFAULT NULL,
  `collectionTime` varchar(30) DEFAULT NULL,
  `outSampleTime` varchar(30) DEFAULT NULL,
  `reportTime` varchar(30) DEFAULT NULL,
  `familyHistory` varchar(255) DEFAULT NULL,
  `smokeHistory` varchar(30) DEFAULT NULL,
  `poisonHistory` varchar(30) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `tumourCheckProject` varchar(100) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `relationSampleNo` varchar(30) DEFAULT NULL,
  `template` varchar(30) DEFAULT NULL,
  `emailState` int(11) DEFAULT '0',
  `readHelp` varchar(100) DEFAULT NULL,
  `qznl` varchar(30) DEFAULT NULL,
  `lczd` varchar(255) DEFAULT NULL,
  `lcfq` varchar(255) DEFAULT NULL,
  `jcjg` varchar(255) DEFAULT NULL,
  `zls` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TumourTemporaryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tum_tumourtemporary
-- ----------------------------

-- ----------------------------
-- Table structure for twooneresult
-- ----------------------------
DROP TABLE IF EXISTS `twooneresult`;
CREATE TABLE `twooneresult` (
  `tid` int(50) NOT NULL AUTO_INCREMENT,
  `fffs` varchar(50) DEFAULT NULL,
  `yqffl` varchar(50) DEFAULT NULL,
  `fffx` varchar(50) DEFAULT NULL,
  `sampleNo` varchar(50) DEFAULT NULL,
  `inputTime` varchar(50) DEFAULT NULL,
  `inputName` varchar(50) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of twooneresult
-- ----------------------------

-- ----------------------------
-- Table structure for wk_daycheck
-- ----------------------------
DROP TABLE IF EXISTS `wk_daycheck`;
CREATE TABLE `wk_daycheck` (
  `wid` int(20) NOT NULL AUTO_INCREMENT,
  `days` varchar(30) CHARACTER SET utf8 NOT NULL,
  `isHoliday` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `weeks` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wk_daycheck
-- ----------------------------

-- ----------------------------
-- Table structure for wk_daycheck_br
-- ----------------------------
DROP TABLE IF EXISTS `wk_daycheck_br`;
CREATE TABLE `wk_daycheck_br` (
  `wid` int(20) NOT NULL AUTO_INCREMENT,
  `days` varchar(30) CHARACTER SET utf8 NOT NULL,
  `isHoliday` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `weeks` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wk_daycheck_br
-- ----------------------------

-- ----------------------------
-- Table structure for yesuanresult_child
-- ----------------------------
DROP TABLE IF EXISTS `yesuanresult_child`;
CREATE TABLE `yesuanresult_child` (
  `tid` int(30) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(100) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `gene` varchar(50) DEFAULT NULL,
  `rsN` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `alt` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `excelUrl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yesuanresult_child
-- ----------------------------

-- ----------------------------
-- Table structure for yesuan_result
-- ----------------------------
DROP TABLE IF EXISTS `yesuan_result`;
CREATE TABLE `yesuan_result` (
  `tid` int(30) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(100) DEFAULT NULL,
  `ct` varchar(50) DEFAULT NULL,
  `ac` varchar(50) DEFAULT NULL,
  `ag` varchar(50) DEFAULT NULL,
  `inputTime` varchar(100) DEFAULT NULL,
  `inputName` varchar(100) DEFAULT NULL,
  `updateTime` varchar(100) DEFAULT NULL,
  `updateName` varchar(100) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yesuan_result
-- ----------------------------

-- ----------------------------
-- Table structure for yxy_exceldata
-- ----------------------------
DROP TABLE IF EXISTS `yxy_exceldata`;
CREATE TABLE `yxy_exceldata` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `chr` varchar(50) DEFAULT NULL,
  `startpos` varchar(50) DEFAULT NULL,
  `endpos` varchar(50) DEFAULT NULL,
  `length` varchar(50) DEFAULT NULL,
  `cn` varchar(30) DEFAULT NULL,
  `band1` varchar(50) DEFAULT NULL,
  `band2` varchar(50) DEFAULT NULL,
  `dgv` varchar(50) DEFAULT NULL,
  `sampleNo` varchar(50) DEFAULT NULL,
  `jdState` varchar(30) DEFAULT NULL,
  `zbxpd` varchar(100) DEFAULT NULL,
  `dgvr` varchar(100) DEFAULT NULL,
  `decipher` varchar(255) DEFAULT NULL,
  `blzbx` varchar(100) DEFAULT NULL,
  `shbl` varchar(100) DEFAULT NULL,
  `bllcbx` varchar(100) DEFAULT NULL,
  `qyshjy` varchar(100) DEFAULT NULL,
  `jyzbx` varchar(100) DEFAULT NULL,
  `jyjlxy` varchar(100) DEFAULT NULL,
  `advice` varchar(300) DEFAULT NULL,
  `refer` longtext,
  `tableyn` varchar(30) DEFAULT NULL,
  `jcjg` varchar(200) DEFAULT NULL COMMENT '三体字段:检测结果',
  `jgsm` varchar(5000) DEFAULT NULL COMMENT '三体字段:结果说明',
  `isFilter` int(30) DEFAULT NULL COMMENT '是否过滤',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yxy_exceldata
-- ----------------------------

-- ----------------------------
-- Table structure for yxy_readfilter
-- ----------------------------
DROP TABLE IF EXISTS `yxy_readfilter`;
CREATE TABLE `yxy_readfilter` (
  `readFilterId` int(11) NOT NULL AUTO_INCREMENT,
  `entityName` varchar(50) DEFAULT NULL,
  `readId` int(11) DEFAULT NULL,
  `sampleNo` varchar(50) DEFAULT NULL,
  `sscp` varchar(50) DEFAULT NULL,
  `sstc` varchar(50) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`readFilterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yxy_readfilter
-- ----------------------------

-- ----------------------------
-- Table structure for yxy_result
-- ----------------------------
DROP TABLE IF EXISTS `yxy_result`;
CREATE TABLE `yxy_result` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(50) DEFAULT NULL,
  `excelUrl` varchar(100) DEFAULT NULL,
  `jdState` varchar(50) DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  `jdName` varchar(50) DEFAULT NULL,
  `jdTime` varchar(50) DEFAULT NULL,
  `imgUrl` varchar(100) DEFAULT NULL,
  `inputName` varchar(50) DEFAULT NULL,
  `inputTime` varchar(50) DEFAULT NULL,
  `pdfState` varchar(50) DEFAULT NULL,
  `emailState` varchar(50) DEFAULT NULL,
  `fkState` varchar(50) DEFAULT NULL,
  `fkinputTime` varchar(50) DEFAULT NULL,
  `fkupdateTime` varchar(50) DEFAULT NULL,
  `fkinputName` varchar(50) DEFAULT NULL,
  `fkupdateName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yxy_result
-- ----------------------------

-- ----------------------------
-- Table structure for yxy_table
-- ----------------------------
DROP TABLE IF EXISTS `yxy_table`;
CREATE TABLE `yxy_table` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `bh` varchar(50) DEFAULT NULL,
  `jy` varchar(100) DEFAULT NULL,
  `gnms` varchar(100) DEFAULT NULL,
  `jbxg` varchar(100) DEFAULT NULL,
  `ycms` varchar(100) DEFAULT NULL,
  `eid` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yxy_table
-- ----------------------------

-- ----------------------------
-- Table structure for yy_analyse
-- ----------------------------
DROP TABLE IF EXISTS `yy_analyse`;
CREATE TABLE `yy_analyse` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `sampleNo` varchar(255) DEFAULT NULL,
  `analysisState` varchar(255) DEFAULT NULL,
  `analysisTime` varchar(255) DEFAULT NULL,
  `emailState` varchar(255) DEFAULT NULL,
  `fxName` varchar(255) DEFAULT NULL,
  `fxTime` varchar(255) DEFAULT NULL,
  `interpretationState` varchar(255) DEFAULT NULL,
  `jdName` varchar(255) DEFAULT NULL,
  `jdTime` varchar(255) DEFAULT NULL,
  `photoPath` varchar(255) DEFAULT NULL,
  `updateName` varchar(255) NOT NULL,
  `updateTime` varchar(255) NOT NULL,
  `uploadState` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yy_analyse
-- ----------------------------

-- ----------------------------
-- Table structure for yy_analyse_details
-- ----------------------------
DROP TABLE IF EXISTS `yy_analyse_details`;
CREATE TABLE `yy_analyse_details` (
  `tid` int(50) NOT NULL AUTO_INCREMENT,
  `start` varchar(100) DEFAULT NULL,
  `chr` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `sampleID` varchar(100) DEFAULT NULL,
  `aaChangeEns` text,
  `aaChangeKnown` text,
  `exonicFunc` varchar(100) DEFAULT NULL,
  `funcRefGene` varchar(100) DEFAULT NULL,
  `aaChangeRef` text,
  `alt` text,
  `aug_AFR` text,
  `aug_ALL` text,
  `aug_AMR` text,
  `aug_EAS` text,
  `aug_EUR` text,
  `aug_SAS` text,
  `avsnp142` text,
  `cadd_phred` text,
  `cadd_raw` text,
  `clindsdbid` text,
  `clinsig` text,
  `clnacc` text,
  `clndbn` text,
  `clndsdb` text,
  `confidence_value` text NOT NULL,
  `cosmic68wgs` text,
  `cosmic70` text,
  `cytoBand` text,
  `dann_score` text,
  `dbsc_ADA` text,
  `dbsc_RF` text,
  `eigen` text,
  `end` text,
  `esp_aa` text,
  `esp_all` text,
  `esp_ea` text,
  `exAC_AFR` text,
  `exAC_ALL` text,
  `exAC_AMR` text,
  `exAC_EAS` text,
  `exAC_FIN` text,
  `exAC_NFE` text,
  `exAC_OTH` text,
  `exAC_SAS` text,
  `exonicFuncEns` text,
  `exonicFuncKnown` text,
  `fathmmPred` text,
  `fathmmScore` text,
  `fathmm_pred` text,
  `fathmm_score` text,
  `fitCons_score` text,
  `funcEnsGene` text,
  `funcKnown` text,
  `geneDetail` text,
  `geneDetailEns` text,
  `geneDetailKnown` text,
  `geneEnsGene` text,
  `geneKnown` text,
  `geneRefGene` text,
  `genomic` text,
  `genotype` text,
  `gerpRS` text,
  `gwasCatalog` text,
  `interpro` text,
  `kaviar_AC` text,
  `kaviar_AF` text,
  `kaviar_AN` text,
  `lrt_pred` text,
  `lrt_score` text,
  `metaLR_pred` text,
  `metaLR_score` text,
  `metaSVM_pred` text,
  `metaSVM_score` text,
  `mutA_pred` text,
  `mutA_score` text,
  `mutT_pred` text,
  `mutT_score` text,
  `nci60` text,
  `omimID` text,
  `othera` text,
  `otherb` text,
  `otherc` text,
  `otherd` text,
  `othere` text,
  `otherf` text,
  `otherg` text,
  `otherh` text,
  `otheri` text,
  `otherinfo` text,
  `phastCons` text,
  `phastCons20way` text,
  `phastCons7way` text,
  `phyloP20way` text,
  `phyloP7way` text,
  `polyHDIV_pred` text,
  `polyHDIV_score` text,
  `polyHVAR_pred` text,
  `polyHVAR_score` text,
  `provean_pred` text,
  `provean_score` text,
  `ref` text,
  `region` text,
  `siPhy` varchar(100) DEFAULT NULL,
  `sift_pred` varchar(100) DEFAULT NULL,
  `sift_score` varchar(100) DEFAULT NULL,
  `snp138` varchar(100) DEFAULT NULL,
  `snp138Non` varchar(100) DEFAULT NULL,
  `targetScanS` varchar(100) DEFAULT NULL,
  `tss` varchar(100) DEFAULT NULL,
  `unmatched` varchar(100) DEFAULT NULL,
  `vest3_score` varchar(100) DEFAULT NULL,
  `wgRna` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yy_analyse_details
-- ----------------------------

-- ----------------------------
-- Table structure for yy_analyse_disease
-- ----------------------------
DROP TABLE IF EXISTS `yy_analyse_disease`;
CREATE TABLE `yy_analyse_disease` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `guide` longtext,
  `name` varchar(30) DEFAULT NULL,
  `summary` longtext,
  `sstc` varchar(255) DEFAULT NULL,
  `fmale` int(11) DEFAULT NULL,
  `male` int(11) DEFAULT NULL,
  `cztc` int(11) DEFAULT NULL,
  `shjy` text,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yy_analyse_disease
-- ----------------------------

-- ----------------------------
-- Table structure for yy_analyse_gene
-- ----------------------------
DROP TABLE IF EXISTS `yy_analyse_gene`;
CREATE TABLE `yy_analyse_gene` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `gene` varchar(30) DEFAULT NULL,
  `des` longtext,
  `sstc` varchar(200) DEFAULT NULL,
  `zfl` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yy_analyse_gene
-- ----------------------------

-- ----------------------------
-- Table structure for yy_analyse_lib
-- ----------------------------
DROP TABLE IF EXISTS `yy_analyse_lib`;
CREATE TABLE `yy_analyse_lib` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `aaChangeRef` longtext,
  `base` longtext,
  `bz` text,
  `diseaseId` varchar(30) DEFAULT NULL,
  `docId` longtext,
  `embody` varchar(30) DEFAULT NULL,
  `exonicFunc` varchar(100) DEFAULT NULL,
  `gene` varchar(30) DEFAULT NULL,
  `hazard` text,
  `hcbeas` longtext,
  `interpretationState` varchar(30) DEFAULT NULL,
  `isHaveLiterature` varchar(30) DEFAULT NULL,
  `oor` varchar(30) DEFAULT NULL,
  `people` varchar(30) DEFAULT NULL,
  `pvalue` varchar(30) DEFAULT NULL,
  `readCotent` longtext,
  `risk` longtext,
  `ror` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `rror` varchar(30) DEFAULT NULL,
  `snp` varchar(100) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `chr` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `alt` varchar(30) DEFAULT NULL,
  `funcRefGene` varchar(30) DEFAULT NULL,
  `genotype` varchar(100) DEFAULT NULL,
  `aug_EAS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yy_analyse_lib
-- ----------------------------

-- ----------------------------
-- Table structure for yy_analyse_plus
-- ----------------------------
DROP TABLE IF EXISTS `yy_analyse_plus`;
CREATE TABLE `yy_analyse_plus` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `aaChangeRef` longtext,
  `base` longtext,
  `bz` varchar(30) DEFAULT NULL,
  `diseaseId` varchar(30) DEFAULT NULL,
  `docId` longtext,
  `embody` varchar(30) DEFAULT NULL,
  `exonicFunc` varchar(100) DEFAULT NULL,
  `gene` varchar(30) DEFAULT NULL,
  `hazard` text,
  `hcbeas` longtext,
  `interpretationState` varchar(30) DEFAULT NULL,
  `isHaveLiterature` varchar(30) DEFAULT NULL,
  `oor` varchar(30) DEFAULT NULL,
  `people` varchar(30) DEFAULT NULL,
  `pvalue` varchar(30) DEFAULT NULL,
  `readCotent` longtext,
  `risk` longtext,
  `ror` varchar(30) DEFAULT NULL,
  `rr` varchar(30) DEFAULT NULL,
  `rror` varchar(30) DEFAULT NULL,
  `snp` varchar(30) DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `updateTime` varchar(30) DEFAULT NULL,
  `chr` varchar(30) DEFAULT NULL,
  `startpos` varchar(30) DEFAULT NULL,
  `endpos` varchar(30) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `alt` varchar(30) DEFAULT NULL,
  `funcRefGene` varchar(30) DEFAULT NULL,
  `genotype` varchar(100) DEFAULT NULL,
  `bs` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yy_analyse_plus
-- ----------------------------

-- ----------------------------
-- Table structure for zljy_zcyb
-- ----------------------------
DROP TABLE IF EXISTS `zljy_zcyb`;
CREATE TABLE `zljy_zcyb` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `sampleno` char(20) DEFAULT NULL,
  `jcdl` varchar(30) DEFAULT NULL,
  `yblx` varchar(50) DEFAULT NULL,
  `zcyy` text,
  `imgpath` varchar(255) DEFAULT NULL,
  `zt` varchar(1) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `inputtime` varchar(30) DEFAULT NULL,
  `inputname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zljy_zcyb
-- ----------------------------

-- ----------------------------
-- Table structure for zl_readfilter
-- ----------------------------
DROP TABLE IF EXISTS `zl_readfilter`;
CREATE TABLE `zl_readfilter` (
  `readFilterId` int(11) NOT NULL AUTO_INCREMENT,
  `entityName` varchar(50) DEFAULT NULL,
  `readId` int(11) DEFAULT NULL,
  `sampleNo` varchar(50) DEFAULT NULL,
  `sscp` varchar(50) DEFAULT NULL,
  `sstc` varchar(50) DEFAULT NULL,
  `exonicFuncRefGene` varchar(100) DEFAULT NULL,
  `inputTime` varchar(30) DEFAULT NULL,
  `inputName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`readFilterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zl_readfilter
-- ----------------------------
