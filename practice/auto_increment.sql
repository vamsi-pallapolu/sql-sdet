use db;
create table student2(
sno int(3) primary key auto_increment,
sname varchar(10),
marks int(3)
);

insert into student2(sname, marks) values('vamsi', 92);
insert into student2(sname, marks) values('krishna', 94);
insert into student2(sname, marks) values('pallapolu', 96); 

select * from student2;

set sql_safe_updates=0;
delete from student2;
alter table student2 auto_increment=100;
 
 
-- limit keyword
use hr;
select * from employees limit 10;
select * from employees limit 5, 10;

-- 3rd highest salry
select distinct salary from employees order by salary desc limit 2,1;

-- 4th highest salry
select distinct salary from employees order by salary desc limit 3,1;

