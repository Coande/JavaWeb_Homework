/*
	author: Caonde
	desc: 添加约束
*/

# 选定数据库进行操作
use coande;

alter table admins modify id int primary key auto_increment;
alter table admins add unique (username);
alter table admins modify username varchar(16) not null;
alter table admins modify password varchar(32) not null;


