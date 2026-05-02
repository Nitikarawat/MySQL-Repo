SELECT table_name AS "Table",
       round(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
FROM information_schema.TABLES
WHERE -- table_schema = 'database'
  -- AND
  table_name in ('table1', 'table2','table 3', …..);
