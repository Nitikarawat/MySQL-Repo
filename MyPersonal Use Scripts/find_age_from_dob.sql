select name, floor(datediff(curdate(), dob)/365) as age from employee_details;
-- based on year current year and dob year ke basis pe
select name, year(curdate())-year(dob) as age from employee_details;
