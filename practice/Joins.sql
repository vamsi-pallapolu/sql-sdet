use db;
CREATE TABLE TAB1(NUMID INT(3));
CREATE TABLE TAB2(NUMID INT(3));
INSERT INTO TAB1 VALUES(10);
INSERT INTO TAB1 VALUES(11);
INSERT INTO TAB1 VALUES(12);
INSERT INTO TAB1 VALUES(14);
INSERT INTO TAB2 VALUES(11);
INSERT INTO TAB2 VALUES(12);
INSERT INTO TAB2 VALUES(13);
INSERT INTO TAB2 VALUES(15);

select * from tab1;
select * from tab2;

select tab1.numid, tab2.numid from tab1 inner join tab2 on tab1.numid=tab2.numid;
select tab1.numid, tab2.numid from tab1 left outer join tab2 on tab1.numid=tab2.numid;
select tab1.numid, tab2.numid from tab1 right outer join tab2 on tab1.numid=tab2.numid;
describe tab1;
describe tab2;

use hr;
select * from employees;
select * from departments;
select * from employees inner join departments on employees.department_id<>departments.department_id;
select first_name, salary, employees.department_id from employees 
inner join departments on
employees.department_id=departments.department_id;

select first_name, salary, emp.department_id from employees emp
left join departments dep on
emp.department_id=dep.department_id;

-- Self Join --
select * from employees;
select  E.EMPLOYEE_ID, E.FIRST_NAME, M.manager_id, M.FIRST_NAME from employees e, employees m where e.manager_id=m.manager_id;












