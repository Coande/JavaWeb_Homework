/*
	author: Caonde
	desc: 新建数据库和表
*/

# 如果数据库存在，则先删除
drop database if exists coande;
# 新建数据库
create database coande;

# 选定要操作的数据库
use coande;

# 创建表管理员表 admin
drop table if exists admins;
create table admins
(id int,username varchar(16),password varchar(32),role tinyint);

# 创建学生表 student
drop table if exists students;
create table students
(id int primary key auto_increment,name varchar(16),age tinyint,grade varchar(16),sex varchar(4),nation varchar(8),birthplace varchar(64));

show tables;
desc admins;
