CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."SESSIONTIME" (p1 out varchar2) AS
-- PGV moved types start

-- PGV moved types end

BEGIN
select to_char(CURRENT_TIMESTAMP AT TIME ZONE SESSIONTIMEZONE,'YYYY-MM-DD') into p1 from dual;
dbms_output.put_line(p1);
END ;

/
