-- create table structure from existing table
create table if not exists sql_hr.dup_employees2 like sql_hr.employees2;
select * from sql_hr.employees2;
SELECT * FROM sql_hr.dup_employees2;

-- create table with data as well
create table if not exists sql_hr.dup_employees2 as select * from  sql_hr.employees2;
