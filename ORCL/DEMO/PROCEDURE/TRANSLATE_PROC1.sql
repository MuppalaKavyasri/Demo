CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."TRANSLATE_PROC1" (pl out Varchar2) AS
-- PGV moved types start

-- PGV moved types end

BEGIN
SELECT TRANSLATE( 'KINDER', 'D', 'DET' ) into pl  from dual;
dbms_output.put_line(pl);
END ;
/
