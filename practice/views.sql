use hr;
select * from employees;
create view emp_v1 as select * from employees limit 10;
select * from emp_v1;
drop view emp_v1;

create index idx_employees on employees(first_name);