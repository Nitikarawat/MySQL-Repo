-- nth salary
use sql_hr;
with rank_salary as (
select concat(first_name,' ', last_name) as name, salary, dense_rank() over (order by salary desc) as salary_rank from  employees 
)
select name, salary
from rank_salary where salary_rank=3;


select  * from employees;
