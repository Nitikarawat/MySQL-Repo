-- ftech common records from two tables w/o join
-- 1st way
select * from employees
INTERSECT
select * from employees2;

-- 2nd way
select  e1.employee_id, e1.first_name, e1.last_name, e1.job_title, e1.salary, e1.reports_to, e1.office_id 
		from employees e1, employees2 e2 
        where e1.employee_id=e2.employee_id;
-- 3rd way
select  e1.employee_id, e1.first_name, e1.last_name, e1.job_title, e1.salary, e1.reports_to, e1.office_id 
		from employees e1
        where e1.employee_id in (select  e2.employee_id	from employees2 e2 );
