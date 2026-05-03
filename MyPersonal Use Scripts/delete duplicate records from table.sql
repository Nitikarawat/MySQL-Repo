-- delete duplicate records from table
SELECT * FROM sql_hr.employees2;

-- 1st using cte and row_number()
with dup as (
		select employee_id, first_name, last_name, 
        row_number() over (partition by concat(first_name,last_name) order by employee_id) as row_num 
        from sql_hr.employees2
        )
delete from sql_hr.employees2 where employee_id in (select employee_id from dup where row_num>1);

-- 2nd way - distinct taking disctinct records in temp table and truncating table then inserting the temp data to table 
-- not recommended because what if after truncating temp table get deleted in transaction
-- not safe
Begin;
create temporary table temp as 
	select distinct * from employees2;
truncate table employees2;
insert into employees2 select * from temp;
drop temporary table temp;
commit;

-- 3rd way group by use
Begin;
create temporary table temp as select * from employees group by concat(first_name, last_name);
truncate table employees2;
insert into employees2 select * from temp;
drop temporary table temp;
commit;
