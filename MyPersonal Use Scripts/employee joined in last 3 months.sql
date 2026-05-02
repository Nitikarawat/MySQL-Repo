
select * from employee where datediff(curdate(), joining_date)<=90; -- if difference between cirrent date and joining date of employee 
-- has less than 90 days of difference then employee joing in last 3 months
select * from employee where  joining_date >= (curdate()-interval 3 month);
