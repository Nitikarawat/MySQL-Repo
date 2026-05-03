-- find highest salary without using max() function
use sql_hr;
select * from employees order by salary desc limit 1;
-- for more complex logic use all functoin
select * from employees where salary >= ALL(select e2.salary from employees e2);
 
