-- all tables without any primary key
SELECT t.TABLE_SCHEMA, t.TABLE_NAME
FROM information_schema.TABLES t
LEFT JOIN information_schema.TABLE_CONSTRAINTS tc
    ON t.TABLE_SCHEMA = tc.TABLE_SCHEMA
    AND t.TABLE_NAME = tc.TABLE_NAME
    AND tc.CONSTRAINT_TYPE = 'PRIMARY KEY'
WHERE t.TABLE_SCHEMA NOT IN ('mysql','information_schema',
                              'performance_schema','sys')
  AND tc.CONSTRAINT_NAME IS NULL
  AND t.TABLE_TYPE = 'BASE TABLE';
  
select * from  information_schema.TABLE_CONSTRAINTS ;

-- get data about table rows, data size and index size -- total size is data+index length 
-- get fregmentation in tables -- use data_length & index length
select * from  information_schema.TABLES ;

-- both statements are equivalent
select * from  information_schema.STATISTICS ;
SHOW INDEX FROM sql_hr.employees;
