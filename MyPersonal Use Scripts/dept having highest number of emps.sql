select * from employees2;
-- find department with highest number of employees
select office_id, count(employee_id) as num_of_employees from employees2 group by office_id order by num_of_employees desc limit 1;
 
 -- 
 select office_id, max(num_of_employees ) from (
			select *, count(employee_id) as num_of_employees from employees2 
			group by office_id 
             ) as count order by num_of_employees desc;
             
-- depts with same number of max employees
WITH dept_counts AS (
    SELECT office_id, COUNT(employee_id) AS num_of_employees
    FROM employees2
    GROUP BY office_id
)
SELECT *
FROM dept_counts
WHERE num_of_employees = (
    SELECT MAX(num_of_employees) FROM dept_counts
);

-- similar to above
SELECT office_id, COUNT(employee_id) AS num_of_employees
FROM employees2
GROUP BY office_id
HAVING COUNT(employee_id) = (
    SELECT MAX(emp_count)
    FROM (
        SELECT COUNT(employee_id) AS emp_count
        FROM employees2
        GROUP BY office_id
    ) AS temp
);
