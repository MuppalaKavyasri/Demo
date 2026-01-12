CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CONCAT_PROC4" (id number,p1 out Varchar2) as
-- PGV moved types start

-- PGV moved types end

pl varchar2(50);
BEGIN
SELECT CONCAT(deptno,dname) as CONCAT into pl  
from DEMO.dept
WHERE Deptno = id;
dbms_output.put_line(p1);
EXCEPTION
     WHEN OTHERS THEN
     NULL;
END ;
/
