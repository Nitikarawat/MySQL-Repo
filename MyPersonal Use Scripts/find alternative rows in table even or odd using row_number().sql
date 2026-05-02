-- for odd rows
with rowcte as (
		select *, row_number() over ( order by employee_id) as row_num from employees
) 
select * from rowcte where mod(row_num,2)=1;

-- for even rows
with rowcte as (
		select *, row_number() over ( order by employee_id) as row_num from employees
) 
select * from rowcte where mod(row_num,2)=0;
