-- number of employee in each dept
select office_id as department_id, count(*) as 'number of employee' from employees group by office_id;
-- highest salary in each dept
select office_id as department_id, max(salary) as highest_salary, count(salary)  from employees group by office_id;
select * from employees;
