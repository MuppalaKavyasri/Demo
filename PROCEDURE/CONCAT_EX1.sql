CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CONCAT_EX1" (p1 out varchar2) AS
-- PGV moved types start

-- PGV moved types end

BEGIN
SELECT CONCAT(CONCAT('A', 'B'),'C') AS CONCAT into p1 from dual;
dbms_output.put_line(p1);
END ;
/
