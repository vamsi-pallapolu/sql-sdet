use mydb;
drop table student;
create table student(
sid int(4),
sname varchar(15)
);
describe student;
insert into student values(101,'DAVID');
insert into student values(102,'SMITH');
insert into student values(103,'SCOTT');

select * from student;

alter table student add(grade varchar(2));
alter table student drop column grade;
alter table student modify column grade varchar(20);
alter table student rename column sname to stuname;

set autocommit=0;
set sql_safe_updates=0;
delete from student;
commit;
rollback;

truncate table student;
drop table student;

rename table student to students;
select * from students;
