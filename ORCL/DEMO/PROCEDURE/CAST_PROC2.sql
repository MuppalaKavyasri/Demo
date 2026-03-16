CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CAST_PROC2" 
AS
-- PGV moved types start

-- PGV moved types end

l_date date;
v_date date;
BEGIN
SELECT hiredate,
CAST(hiredate AS TIMESTAMP) AS OUTPUT_VALUE
into l_date,v_date 
FROM DEMO.EMPLOYEE;
DBMS_OUTPUT.PUT_LINE(l_date||v_date);
Exception
   when others then
   Null;
END;
/
