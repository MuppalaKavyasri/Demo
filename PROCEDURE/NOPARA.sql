CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."NOPARA" (cnt out number) AS
-- PGV moved types start

-- PGV moved types end
 
BEGIN
  SELECT /*+ no_parallel(d) */ COUNT(*) INTO cnt FROM all_bill_resources d;
  DBMS_OUTPUT.PUT_LINE(cnt);
END ;

/
