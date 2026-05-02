select office_id as department_id, max(salary) as highest_salary, count(salary)  from employees group by office_id;
select * from employees;
