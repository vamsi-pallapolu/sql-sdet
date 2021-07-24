use hr;
select * from employees;

select department_id,  max(salary) from employees group by department_id;
select job_id, count(*) from employees group by job_id;
select job_id, department_id, count(*) from employees group by job_id, department_id;

select department_id, sum(salary) from employees group by department_id having sum(salary)>20000;

select department_id, sum(salary) from employees group by department_id having sum(salary)>20000 order by sum(salary);

select department_id, sum(salary) from employees where department_id <> 50 group by department_id having sum(salary)>20000 order by sum(salary);

select * from employees order by department_id desc;

select * from employees order by salary desc;

select first_name, last_name, salary, max(salary) from employees;
select first_name, last_name, salary, max(salary) from employees where salary not in(select max(salary) from employees);