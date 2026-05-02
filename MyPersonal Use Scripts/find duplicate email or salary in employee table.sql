select * from employees;
show variables where variable_name='sql_mode';
set sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' ;
-- ONLY_FULL_GROUP_BY removed
select salary, count(salary) from employees group by salary having count(salary)>1;
