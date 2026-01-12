CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."TABPART" (p1 out varchar) AS
-- PGV moved types start

-- PGV moved types end
 
BEGIN
select partition_name into p1 from user_tab_partitions;
 dbms_output.put_line(p1);
END ;

/
