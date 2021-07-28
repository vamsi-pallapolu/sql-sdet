-- nth highest salry
-- 3rd highest salry
use hr;
select first_name, salary from employees e1 where 4=
(select count(distinct salary) from employees e2 where e2.salary > e1.salary); 

use db;
drop table student;
create table student(
sid int(2),
sname varchar(10),
marks int(2)
);
insert into student values(1, 'ram', 90);
insert into student values(2, 'bob', 95);
insert into student values(3, 'sam', 99);
insert into student values(4, 'John', 97);
select * from student;