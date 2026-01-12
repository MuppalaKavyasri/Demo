CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CONCAT_EX3" (p1 out Varchar2) as
-- PGV moved types start

-- PGV moved types end

pl varchar2(50);
BEGIN
SELECT CONCAT('Oracle', ' is in my database.') as CONCAT into pl  from dual;
dbms_output.put_line(p1);
END ;
/
