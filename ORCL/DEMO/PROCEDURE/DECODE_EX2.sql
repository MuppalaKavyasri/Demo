CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DECODE_EX2" (p1 out VARCHAR2) AS
-- PGV moved types start

-- PGV moved types end

BEGIN
SELECT DECODE(1, 2, 'One','Not one') AS DECODE into p1 from dual;
dbms_output.put_line(p1);
END ;
/
