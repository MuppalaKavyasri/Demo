CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."PARA" (cnt out int) AS
-- PGV moved types start

-- PGV moved types end
 
    BEGIN
      SELECT /*+ parallel(4) */ COUNT(*) INTO cnt FROM emp;
      DBMS_OUTPUT.PUT_LINE(cnt);
    END ;

/
