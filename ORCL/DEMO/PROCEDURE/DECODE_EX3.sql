CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DECODE_EX3" (p1 out VARCHAR2) AS
-- PGV moved types start

-- PGV moved types end

BEGIN
select DECODE(3, 1, 'One',  2, 'Two', 'Not one or two') AS DECODE into p1 from dual;
dbms_output.put_line(p1);
END ;
/
