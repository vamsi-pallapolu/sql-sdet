-- string functions --
select lower('VAMSI');
select upper('vamsi') from dual;
use hr;
select length(first_name) from employees;
select * from employees where length(first_name)=4;
select trim('  vamsi ') from dual;
select trim('z' from 'zzoraclez') from dual;
select instr('oracle','a');
select substr('oracle',2,3);  
select substring('oracle',2,3);

-- print only first 3 charcters of first_name 
select substring(first_name,1,3) from employees;

select concat('vamsi', 'krishna');
select first_name, last_name, concat(first_name, last_name) fullname from employees;

-- Numeric functions --
select abs(-40);
select abs(40);

select sqrt(25);
select pow(2,3);
select mod(4,2);

select truncate(12345.6789,3);
select truncate(12345.6789,2);
select truncate(12345.6789,1);
select truncate(1239,-1);
select truncate(1239,-2);
select truncate(1239,-3);

select greatest(10,20,30,40.5,61.2);
select least(10,20,30,40.5,61.2);

-- date functions --
select curdate();
select current_date();
select curtime();
select current_time();
select sysdate();
select now();
select year('2021-07-19');
select month('2021-07-19');
select monthname('2021-07-19');
select day('2021-07-19');

use hr;
select * from employees;
select * from employees where year(hire_date)="1987";
select * from employees where monthname(hire_date)='June';

-- Aggregate functions --
select max(salary) from employees;
select min(salary) from employees;
select sum(salary) from employees;
select avg(salary) from employees;
select count(*) from employees;
