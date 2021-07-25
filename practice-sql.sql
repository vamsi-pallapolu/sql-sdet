-- nth highest salry
-- 3rd highest salry
use hr;
select first_name, salary from employees e1 where 4=
(select count(distinct salary) from employees e2 where e2.salary > e1.salary); 