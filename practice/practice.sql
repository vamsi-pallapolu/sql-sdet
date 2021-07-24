create database if not exists mydb;
use mydb;
create table student(
sno int(3),
sname varchar(10),
marks int(3)
);
describe student;

insert into student values(101, 'vamsi',30);
insert into student(sname,sno,marks) values('krishna',102,35);
insert into student values(103, 'pallapolu',null);

select * from student;