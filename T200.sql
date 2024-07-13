/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t200`;
CREATE DATABASE IF NOT EXISTS `t200` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t200`;

DROP TABLE IF EXISTS `chengji`;
CREATE TABLE IF NOT EXISTS `chengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `keti_id` int DEFAULT NULL COMMENT '课题',
  `chengji_number` int DEFAULT NULL COMMENT '成绩',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='最终成绩';

DELETE FROM `chengji`;
INSERT INTO `chengji` (`id`, `jiaoshi_id`, `yonghu_id`, `keti_id`, `chengji_number`, `create_time`) VALUES
	(6, 3, 1, 2, 100, '2022-04-01 03:39:15'),
	(7, 3, 2, 1, 20, '2022-03-31 03:50:59'),
	(8, 1, 3, 3, 600, '2022-03-31 05:17:40');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'keti_types', '课题类型', 1, '课题类型1', NULL, NULL, '2022-03-31 01:59:00'),
	(2, 'keti_types', '课题类型', 2, '课题类型2', NULL, NULL, '2022-03-31 01:59:00'),
	(3, 'keti_types', '课题类型', 3, '课题类型3', NULL, NULL, '2022-03-31 01:59:00'),
	(4, 'keti_yesno_types', '申请状态', 1, '审核中', NULL, NULL, '2022-03-31 01:59:00'),
	(5, 'keti_yesno_types', '申请状态', 2, '可选题', NULL, NULL, '2022-03-31 01:59:00'),
	(6, 'keti_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-03-31 01:59:00'),
	(7, 'keti_yesno_types', '申请状态', 4, '申请中', NULL, NULL, '2022-03-31 01:59:00'),
	(8, 'keti_yesno_types', '申请状态', 5, '已选', NULL, NULL, '2022-03-31 01:59:00'),
	(9, 'xuantishenqing_yesno_types', '申请状态', 1, '审核中', NULL, NULL, '2022-03-31 01:59:00'),
	(10, 'xuantishenqing_yesno_types', '申请状态', 2, '通过', NULL, NULL, '2022-03-31 01:59:00'),
	(11, 'xuantishenqing_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-03-31 01:59:00'),
	(12, 'ketirenwu_types', '任务类型', 1, '任务类型1', NULL, NULL, '2022-03-31 01:59:00'),
	(13, 'ketirenwu_types', '任务类型', 2, '任务类型2', NULL, NULL, '2022-03-31 01:59:00'),
	(14, 'ketirenwu_types', '任务类型', 3, '任务类型3', NULL, NULL, '2022-03-31 01:59:00'),
	(15, 'ketirenwu_yesno_types', '申请状态', 1, '审核中', NULL, NULL, '2022-03-31 01:59:00'),
	(16, 'ketirenwu_yesno_types', '申请状态', 2, '通过', NULL, NULL, '2022-03-31 01:59:00'),
	(17, 'ketirenwu_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-03-31 01:59:00'),
	(18, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-31 01:59:01'),
	(19, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-31 01:59:01'),
	(20, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-31 01:59:01'),
	(21, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-31 01:59:01'),
	(22, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-31 01:59:01'),
	(23, 'xueyuan_types', '学院', 1, '学院1', NULL, NULL, '2022-03-31 01:59:01'),
	(24, 'xueyuan_types', '学院', 2, '学院2', NULL, NULL, '2022-03-31 01:59:01'),
	(25, 'xueyuan_types', '学院', 3, '学院3', NULL, NULL, '2022-03-31 01:59:01'),
	(26, 'banji_types', '班级', 1, '班级1', NULL, NULL, '2022-03-31 01:59:01'),
	(27, 'banji_types', '班级', 2, '班级2', NULL, NULL, '2022-03-31 01:59:01'),
	(28, 'banji_types', '班级', 3, '班级3', NULL, NULL, '2022-03-31 01:59:01');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `sex_types`, `jiaoshi_phone`, `jiaoshi_id_number`, `jiaoshi_email`, `create_time`) VALUES
	(1, '教师1', '123456', '教师姓名1', 2, '17703786901', '410224199610232001', '1@qq.com', '2022-03-31 01:59:37'),
	(2, '教师2', '123456', '教师姓名2', 2, '17703786902', '410224199610232002', '2@qq.com', '2022-03-31 01:59:37'),
	(3, '教师3', '123456', '教师姓名3', 2, '17703786903', '410224199610232003', '3@qq.com', '2022-03-31 01:59:37');

DROP TABLE IF EXISTS `keti`;
CREATE TABLE IF NOT EXISTS `keti` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keti_name` varchar(200) DEFAULT NULL COMMENT '课题名称 Search111',
  `keti_types` int DEFAULT NULL COMMENT '课题类型 Search111',
  `keti_text` text COMMENT '课题内容',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `keti_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `keti_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='课题信息';

DELETE FROM `keti`;
INSERT INTO `keti` (`id`, `keti_name`, `keti_types`, `keti_text`, `jiaoshi_id`, `keti_yesno_types`, `keti_yesno_text`, `create_time`) VALUES
	(1, '课题名称1', 1, '课题内容1', 3, 4, '通过', '2022-03-31 01:59:37'),
	(2, '课题名称2', 1, '课题内容2', 2, 4, '通过', '2022-03-31 01:59:37'),
	(3, '课题名称3', 3, '课题内容3', 1, 5, '332211', '2022-03-31 01:59:37'),
	(4, '课题名称4', 1, '课题内容4', 3, 3, '123', '2022-03-31 01:59:37'),
	(5, '课题名称5', 3, '课题内容5', 2, 2, '通过审核111', '2022-03-31 01:59:37');

DROP TABLE IF EXISTS `ketirenwu`;
CREATE TABLE IF NOT EXISTS `ketirenwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `xuantishenqing_id` int DEFAULT NULL COMMENT '选题申请',
  `ketirenwu_name` varchar(200) DEFAULT NULL COMMENT '课题任务  Search111 ',
  `ketirenwu_types` int DEFAULT NULL COMMENT '任务类型  Search111 ',
  `ketirenwu_file` varchar(200) DEFAULT NULL COMMENT '参考文献',
  `ketirenwu_huida_file` varchar(200) DEFAULT NULL COMMENT '阶段文档',
  `ketirenwu_yesno_types` int DEFAULT NULL COMMENT '审核结果',
  `ketirenwu_yesno_text` text COMMENT '教师打分',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='课题任务';

DELETE FROM `ketirenwu`;
INSERT INTO `ketirenwu` (`id`, `jiaoshi_id`, `xuantishenqing_id`, `ketirenwu_name`, `ketirenwu_types`, `ketirenwu_file`, `ketirenwu_huida_file`, `ketirenwu_yesno_types`, `ketirenwu_yesno_text`, `insert_time`, `create_time`) VALUES
	(6, 3, 7, '课题任务1', 1, 'http://localhost:8080/biyeshejixitong/upload/1648696452930.rar', 'http://localhost:8080/biyeshejixitong/upload/1648697400666.xls', 1, '拒绝通过 修改内容 1、123；2、321 ', '2022-03-31 03:14:14', '2022-03-31 03:14:14'),
	(7, 1, 13, '发布开题报告之类的任务', 2, 'http://localhost:8080/biyeshejixitong/upload/1648703578160.xls', 'http://localhost:8080/biyeshejixitong/upload/1648703616393.doc', 2, '50', '2022-03-31 05:13:00', '2022-03-31 05:13:00');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/biyeshejixitong/upload/news1.jpg', '2022-03-31 01:59:37', '公告详情1', '2022-03-31 01:59:37'),
	(2, '公告标题2', 1, 'http://localhost:8080/biyeshejixitong/upload/news2.jpg', '2022-03-31 01:59:37', '公告详情2', '2022-03-31 01:59:37'),
	(3, '公告标题3', 2, 'http://localhost:8080/biyeshejixitong/upload/news3.jpg', '2022-03-31 01:59:37', '公告详情3', '2022-03-31 01:59:37'),
	(4, '公告标题4', 3, 'http://localhost:8080/biyeshejixitong/upload/news4.jpg', '2022-03-31 01:59:37', '公告详情4', '2022-03-31 01:59:37'),
	(5, '公告标题5', 3, 'http://localhost:8080/biyeshejixitong/upload/news5.jpg', '2022-03-31 01:59:37', '公告详情5', '2022-03-31 01:59:37');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'oiv1oyj5ny3sfxbr1omtj0ywq3n5fbop', '2022-03-31 02:09:05', '2024-05-17 04:07:37'),
	(2, 1, 'a1', 'jiaoshi', '教师', 'hlyc9hv5oazkurlzg04j69c7e651y1po', '2022-03-31 02:11:54', '2024-05-17 04:08:39'),
	(3, 1, 'a1', 'yonghu', '学生', 'bkqg4b8leoj52p7uyvwjxjkmnznbuzs0', '2022-03-31 02:13:48', '2024-05-17 04:08:53'),
	(4, 2, 'a2', 'jiaoshi', '教师', '3wdtlnl2lan18ru6q5r31q48y61c11ul', '2022-03-31 02:42:03', '2022-03-31 04:46:20'),
	(5, 3, 'a3', 'jiaoshi', '教师', 'wtegk77smtx4sgg22rh3q1j8fyaqg3nd', '2022-03-31 02:42:13', '2022-03-31 04:46:32'),
	(6, 2, 'a2', 'yonghu', '学生', '4svpj3o27cxc4weeay67ztpmcyqefk85', '2022-03-31 03:14:30', '2022-03-31 04:45:39'),
	(7, 3, 'a3', 'yonghu', '学生', 'y7mxdkukv58120x81ag35arafi5vj3cl', '2022-03-31 05:10:16', '2022-03-31 06:16:11');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `xuantishenqing`;
CREATE TABLE IF NOT EXISTS `xuantishenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuantishenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '课题编号',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `keti_id` int DEFAULT NULL COMMENT '课题',
  `xuantishenqing_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `xuantishenqing_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='选题申请';

DELETE FROM `xuantishenqing`;
INSERT INTO `xuantishenqing` (`id`, `xuantishenqing_uuid_number`, `yonghu_id`, `keti_id`, `xuantishenqing_yesno_types`, `xuantishenqing_yesno_text`, `create_time`) VALUES
	(7, '1648693380112', 1, 2, 2, '通过2123', '2022-03-31 02:23:01'),
	(11, '1648698346157', 2, 1, 2, '通过123', '2022-03-31 03:45:48'),
	(12, '1648703428507', 3, 3, 3, '审核拒绝后学生可以在选择新的课题进行申请', '2022-03-31 05:10:30'),
	(13, '1648703504379', 3, 3, 2, '通过后 课题3就不能让其他学生申请了', '2022-03-31 05:11:46');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(255) DEFAULT NULL COMMENT '学号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '家庭地址 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `xueyuan_types` int DEFAULT NULL COMMENT '学院 Search111 ',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `yonghu_uuid_number`, `username`, `password`, `yonghu_name`, `yonghu_address`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `xueyuan_types`, `banji_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '164869197803112', '学生1', '123456', '学生姓名1', '家庭地址1', '17703786901', '410224199610232001', '1@qq.com', 2, 2, 3, 1, '2022-03-31 01:59:37'),
	(2, '16486919780314', '学生2', '123456', '学生姓名2', '家庭地址2', '17703786902', '410224199610232002', '2@qq.com', 1, 2, 2, 1, '2022-03-31 01:59:37'),
	(3, '16486919780310', '学生3', '123456', '学生姓名3', '家庭地址3', '17703786903', '410224199610232003', '3@qq.com', 1, 1, 1, 1, '2022-03-31 01:59:37');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
