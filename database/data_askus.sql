
INSERT INTO `askus_db`.`role` (`id`, `role_code`, `role_name`) VALUES ('1', 'QTV', 'Quản Trị Viên');
INSERT INTO `askus_db`.`role` (`id`, `role_code`, `role_name`) VALUES ('2', 'MEM', 'Thành Viên');

INSERT INTO `askus_db`.`status` (`id`, `status_name`, `status_code`) VALUES ('1', 'Đã Tạo','DT');
INSERT INTO `askus_db`.`status` (`id`, `status_name`,`status_code`) VALUES ('2', 'Đã Sửa','DS');
INSERT INTO `askus_db`.`status` (`id`, `status_name`,`status_code`) VALUES ('3', 'Đã Xóa','DX');

INSERT INTO `type_of_post` VALUES (1,'dt','Điện thoại'),(2,'mt','Máy tính'),(3,'cm','Camera'),(4,'ddt','Đồ điện tử'),(5,'dl','Du lịch'),(6,'at','Ẩm thực'),(7,'khcn','Khoa học công nghệ');

INSERT INTO `type_of_report` VALUES (1,'ndnc','Nội dung nhạy cảm'),(2,'bl','Bạo lực'),(3,'ld','Lừa đảo'),(4,'tg','Tin giả'),(5,'tr','Thư rác');



INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES ('Đoàn Hoàng Tính', 'dhtinh', 'dhtinh', 'dhtinh@gmail.com', 1, '1');
INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES ('Hà Tấn Lộc', 'htloc', 'htloc', 'htloc@gmail.com', 1, '1');
INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES ('Huỳnh Tấn Kỷ', 'htky', 'htky', 'htky@gmail.com', 1, '1');
INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES ('Nguyễn Văn An', 'nvan', 'nvan', 'nvan@gmail.com', 1, '2');
INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES ('Trần Văn Bảo', 'tvbao', 'tvbao', 'tvbao@gmail.com', 1, '2');
INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES (' Nguyễn Ái Hồng', 'nahong', 'naihong', 'naihong@gmail.com', 1, '2');
INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES ('Nguyễn Ánh Dương', 'naduong', 'naduong', 'naduong@gmail.com', 1, '2');
INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES ('Nguyễn Anh Thư', 'nathu', 'nathu', 'nathu@gmail.com', 1, '2');
INSERT INTO `askus_db`.`user` (`full_name`, `username`, `password`, `email`, `gender`, `role_id`) VALUES ('Nguyễn Bảo Ngọc', 'nbngoc', 'nbngoc', 'nbngoc@gmail.com', 1, '2');

INSERT INTO `askus_db`.`post` (`user_id`, `title`, `content`, `type_of_post_id`, `status_id`) VALUES ('4', 'Làm cách nào để cài lại Windows 10', 'Máy tính tôi bị nhiễm Virus tôi muốn cài lại Win nhưng không muốn mất dữ liệu', '2', '1');
INSERT INTO `askus_db`.`post` (`user_id`, `title`, `content`, `type_of_post_id`, `history_of_post_id`, `status_id`) VALUES ('4', 'Làm cách nào để cài lại Windows 10', 'Máy tính tôi bị nhiễm Virus tôi muốn cài lại Win nhưng không muốn mất dữ liệu', '2','1', '1');

INSERT INTO `askus_db`.`post` (`user_id`, `title`, `content`, `type_of_post_id`, `time`, `status_id`) VALUES ('5', 'Tôi muốn khôi phục lại điện thoại Samsung S20', 'Điện thoại của tôi quá lag nên cần phải khôi phục lại xin nhờ giúp đỡ', '1', '2021-02-22 18:55:00', '1');
INSERT INTO `askus_db`.`post` (`user_id`, `title`, `content`, `type_of_post_id`,`history_of_post_id`, `time`, `status_id`) VALUES ('5', 'Tôi muốn khôi phục lại điện thoại Samsung S20', 'Điện thoại của tôi quá lag nên cần phải khôi phục lại xin nhờ giúp đỡ', '1','3', '2021-02-22 18:55:00', '1');


INSERT INTO `askus_db`.`comment` (`content`, `post_id`, `user_id`, `status_id`) VALUES ('Lên Youtube xem', '1', '6', '1');
INSERT INTO `askus_db`.`comment` (`content`, `post_id`, `user_id`, `history_of_comment_id`, `status_id`) VALUES ('Lên Youtube xem', '1', '6', '1', '1');
INSERT INTO `askus_db`.`comment` (`content`, `post_id`, `user_id`, `history_of_comment_id`, `status_id`) VALUES ('Thanks bạn', '1', '4', '1', '1');

INSERT INTO `askus_db`.`comment` (`content`, `post_id`, `user_id`, `child_of_comment_id`, `history_of_comment_id`, `time`, `status_id`) VALUES ('Thanks bạn', '1', '4', '1', '3', '2021-02-22 18:59:00', '1');






