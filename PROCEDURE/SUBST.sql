CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."SUBST" (v1 out varchar2) AS
-- PGV moved types start

-- PGV moved types end
 
BEGIN
select SUBSTR('This is a test', 6, 2) into v1 from dual;
 dbms_output.put_line(v1);
END ;

/
