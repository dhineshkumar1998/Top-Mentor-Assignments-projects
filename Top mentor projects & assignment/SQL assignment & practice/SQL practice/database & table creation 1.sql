show databases;
create database Radse;
drop database Radse;
drop schema Radse;
drop database if exists Radse;
use Radse;
create table student (
id int primary key,
name varchar(50),
gpa decimal (3,2)
);
drop table student;
describe table student;
alter table student add department varchar (50);
Alter table student drop department
Insert into student values(1, "RADSE", 9.8);
Insert into student values(2, "HARI", 9.8);
Insert into student values(3, "HE", 9.8);
Insert into student values(4, "SHE", 9.8);
Insert into student (ID,NAME) values(5, "THEM");

select*from student;