use db;
drop table if exists school;
create table school(
sno int(3),
sname varchar(15),
marks int(3),
primary key(sno)
);
insert into school values(101, 'arun', 90);
insert into school values(102, 'kiran', 70);
insert into school values(103, 'amit', 80);
select * from school;

drop table if exists library;
create table library(
sno int(3) , 
book_name varchar(10),
foreign key(sno) references school(sno) on delete cascade
);
insert into library values(102, 'Java');
insert into library values(103, 'C');
insert into library values(null, 'dot net');

select * from library;

select * from school;
delete from school where sno=102;

delete from library where sno=102;
drop table library;

drop table if exists student1;
create table student1(
sno int(3) unique,
sname varchar(10),
marks int(5) check(marks between 1 and 10)
);

insert into student1 values(1,'a', 1);
insert into student1 values(2,'b', 11);
select * from student1;

create table location(
city varchar(10) check(city in('hyd','blor','chen')),
country varchar(5),
pin int(5)
);

insert into location values('hyd','india',1);
insert into location values('pune','india',1);
select * from location;

create table orders(
id int(5),
orderDate datetime default now() 
);

insert into orders(id, orderDate) values(1, '2021-07-25 12:32:53');
insert into orders(id, orderDate) values(2);
insert into orders(id, orderDate) values(3);
select * from orders;

