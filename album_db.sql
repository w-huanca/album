-- DROP DATABASE album_db;
CREATE DATABASE album_db;
USE album_db;

CREATE TABLE `album_db_user` (
  `userId` int AUTO_INCREMENT COMMENT '用户编号 主键',
  `userName` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `userStatue` int DEFAULT 1 COMMENT '用户状态 0禁用 1有效',
  `userNum` varchar(100) DEFAULT NULL COMMENT '用户帐号',
  `userPwd` varchar(100) DEFAULT NULL COMMENT '用户密码',
  `userRight` int DEFAULT 0 COMMENT '用户权限 0用户 1管理员',
  `phone` varchar(30) DEFAULT NULL COMMENT '用户电话',
  `address` varchar(100) DEFAULT NULL COMMENT '用户地址',
  `qqCode` varchar(30) DEFAULT NULL COMMENT '用户QQ',
  `remark` varchar(100) DEFAULT NULL COMMENT '用户备注',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表：普通用户和管理员';

CREATE TABLE `album_db_album` (
  `albumId` int AUTO_INCREMENT COMMENT '相册编号 主键',
  `userId` int DEFAULT NULL COMMENT '所属用户编号 外键',
  `albumName` varchar(100) DEFAULT NULL COMMENT '相册名称',
  `albumStatue` int DEFAULT 0 COMMENT '相册状态、1有效，0禁用',
  `albumRight` int DEFAULT 1 COMMENT '相册权限、1可访问，0不可访问',
  `albumTime` datetime DEFAULT NULL COMMENT '相册创建时间',
  `albumFace` varchar(100) DEFAULT NULL COMMENT '相册封面',
  PRIMARY KEY (`albumId`),
  KEY `album_db_album_FK` (`userId`),
  CONSTRAINT `album_db_album_FK` FOREIGN KEY (`userId`) REFERENCES `album_db_user` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='相册信息表';

CREATE TABLE `album_db_picture` (
  `photoId` int AUTO_INCREMENT COMMENT '照片编号 主键',
  `albumId` int DEFAULT NULL COMMENT '相册编号 外键',
  `photoUserId` int DEFAULT NULL COMMENT '图片所属用户的ID 外键',
  `photoName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '照片名称',
  `photoStatue` int DEFAULT 0 COMMENT '照片状态 1有效，0禁用',
  `photoRight` int DEFAULT 1 COMMENT '照片权限 1可访问，0 不可访问',
  `photoIntro` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '照片详情说明（图片描述）',
  `photoUrl` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '照片路径',
  PRIMARY KEY (`photoId`),
  KEY `album_db_picture_FK` (`albumId`),
  KEY `album_db_picture_FK_1` (`photoUserId`),
  CONSTRAINT `album_db_picture_FK` FOREIGN KEY (`albumId`) REFERENCES `album_db_album` (`albumId`) ON DELETE CASCADE,
  CONSTRAINT `album_db_picture_FK_1` FOREIGN KEY (`photoUserId`) REFERENCES `album_db_user` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='照片信息表';

CREATE TABLE `album_db_remark` (
  `remarkId` int AUTO_INCREMENT COMMENT '评论编号 主键',
  `albumId` int DEFAULT NULL COMMENT '相册编号 外键',
  `userId` int DEFAULT NULL COMMENT '发布评论的用户ID 外键',
  `remarkInfo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '评论信息',
  `remarkStatue` int DEFAULT 0 COMMENT '评论状态 0等待审核 1审核完成',
  `commentDate` datetime DEFAULT NULL COMMENT '评论发布时间',
  PRIMARY KEY (`remarkId`),
  KEY `album_db_review_FK_3` (`albumId`),
  KEY `album_db_remark` (`userId`),
  CONSTRAINT `album_db_remark_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `album_db_user` (`userId`) ON DELETE CASCADE,
  CONSTRAINT `album_db_review_FK_3` FOREIGN KEY (`albumId`) REFERENCES `album_db_album` (`albumId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='评论信息表';

INSERT INTO `album_db_user` (userName, userNum, userPwd, userRight) values
('admin', 'admin01', '1234567', 1),
('test1', 'test001', '1234567', 0);