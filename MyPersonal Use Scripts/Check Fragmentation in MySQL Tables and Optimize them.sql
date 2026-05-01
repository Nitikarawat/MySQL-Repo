CREATE INDEX idx_clients ON sql_invoicing.clients(client_id);
SHOW INDEXES FROM clients FROM sql_invoicing;


select * from information_schema.tables where TABLE_SCHEMA not in ('mysql', 'information_schema', 'performance_schema', 'sys', 'mysql');

select ENGINE, 
		CONCAT(TABLE_SCHEMA,'_',TABLE_NAME) AS Table_Name,
        ROUND(DATA_LENGTH/1024/1024, 2) AS Data_Length,
        ROUND(INDEX_LENGTH/1024/1024, 2) AS Index_Length,
        ROUND(DATA_FREE/1024/1024, 2) AS Data_Free,
        (Data_Free/(INDEX_LENGTH+DATA_FREE)) as Fragmentation_Ratio
	from
		information_schema.tables
	WHERE DATA_FREE>0 AND TABLE_SCHEMA not in ('mysql', 'information_schema', 'performance_schema', 'sys', 'mysql')
    ORDER BY Fragmentation_Ratio;


-- if any table have fragementation 
-- use optimize table cmd. or alter table ... ENGINE=InnoDB cmd. or drop index and create again or update table stats 
USE sql_invoicing;
CHECK TABLE sql_invoicing.clients ;
ANALYZE TABLE sql_invoicing.clients;
-- SHOW STATUS;
OPTIMIZE TABLE sql_invoicing.clients;

ALTER TABLE sql_invoicing.clients ENGINE=InnoDB;

DROP INDEX idx_clients ON sql_invoicing.clients;

        