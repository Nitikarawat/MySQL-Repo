select name, floor(datediff(curdate(), dob)/365) as age from employee_details;
