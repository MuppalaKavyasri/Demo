CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DECODE" (p1 out number) AS
-- PGV moved types start

-- PGV moved types end

BEGIN
select DECODE(1, 1, 'One') AS DECODE into p1 from dual;
dbms_output.put_line(p1);
END ;
/
