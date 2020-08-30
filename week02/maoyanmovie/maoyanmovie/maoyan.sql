

DROP TABLE IF EXISTS `tbl_maoyan_movie`;

CREATE TABLE `tbl_maoyan_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mtype` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `releasetime` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;