CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CONCAT_PROC3" (p1 out Varchar2) as
-- PGV moved types start

-- PGV moved types end

pl varchar2(50);
BEGIN
SELECT CONCAT(empno,ename) as CONCAT into pl  from DEMO.EMPLOYEE;
dbms_output.put_line(p1);
EXCEPTION
     WHEN OTHERS THEN
     NULL;
END ;
/
