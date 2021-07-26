set autocommit=0;
use db;
select * from student;
describe student;
drop table if exists student; 
create table student(
sno int(2),
sname varchar(10),
marks int(3)
);
insert into student values(1, 'a', 1);
insert into student values(1, 'a', 1);
insert into student values(1, 'a', 1);
commit;
select * from student;
rollback;