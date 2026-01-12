CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CAST_PROC3" (id number )
AS
-- PGV moved types start

-- PGV moved types end

v_name varchar2(500);
BEGIN

  SELECT LISTAGG(ename, ', ') WITHIN GROUP (ORDER BY ename)
    INTO v_name
    FROM demo.employee
    WHERE deptno = 10;

DBMS_OUTPUT.PUT_LINE(v_name);
Exception
   when others then
   Null;
END;

/
