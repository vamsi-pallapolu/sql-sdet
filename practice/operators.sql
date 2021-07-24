use hr;
/* Logical Operators */
select * from employees where salary > 15000 and job_id='Ad_vp';
select * from employees where salary > 15000 or job_id='Ad_vp';
select * from employees where not first_name='david';

/* Between & IN Operators */
select * from employees where salary between 10000 and 12000;
select * from employees where salary not between 10000 and 12000;

select * from employees where salary=3400 or salary=2500 or salary=3000;
select * from employees where salary in(3400, 2500, 3000);
select * from employees where salary not in(3400, 2500, 3000);

/* Pattern Matching Operators */
select * from employees where first_name like 's%';
select * from employees where first_name like '%r';
select * from employees where first_name like 's%r';
select * from employees where first_name like '%m%';
select * from employees where first_name not like 's%';
select * from employees where first_name like '%e_';
select * from employees where first_name like '___';
