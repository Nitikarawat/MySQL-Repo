SELECT * FROM sql_invoicing.invoices where mod(invoice_id,2)=0; -- even
SELECT * FROM sql_invoicing.invoices where mod(invoice_id,2)=1; -- odd
