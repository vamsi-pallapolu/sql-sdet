/* sub queries
Contains two parts:
-> Outer Query
-> Inner Querey
Two Types
-> Single row sub query (<=, >=, !=)
-> Multiple row sub query (in, any, all)
*/
-- Single Row Sub Queries
-- display employees name whose salary is less than ellen's
use hr;
select salary from employees where first_name='ELLEN'; 
select * from employees where salary<11000;
select * from employees where salary<(select salary from employees where first_name='ELLEN');

-- 2nd max salary
select max(salary) from employees where salary < (select max(salary) from employees);

-- 3rd max salary from employees
select max(salary) from employees where salary <
(select max(salary) from employees where salary <
(select max(salary) from employees)
);

-- multile row sub queries
select salary from employees where department_id=30;
select first_name, department_id, salary from employees where salary in(select salary from employees where department_id=30);

select first_name, department_id, salary from employees where salary > any(select salary from employees where department_id=30);
select first_name, department_id, salary from employees where salary < any(select salary from employees where department_id=30);

select first_name, department_id, salary from employees where salary > all(select salary from employees where department_id=30);
select first_name, department_id, salary from employees where salary < all(select salary from employees where department_id=30);

select * from departments;
select first_name, last_name , d.department_name from employees e, departments d where e.department_id=d.department_id;

-- List out the employees who are having salary less than the maximum salary
-- and
-- also having the hire date greater than the hire date of the employee who is having maximum salary

select * from employees where 
salary < (select max(salary) from employees) 
and
hire_date > (select hire_date from employees where salary=(select max(salary) from employees))
order by hire_date;




