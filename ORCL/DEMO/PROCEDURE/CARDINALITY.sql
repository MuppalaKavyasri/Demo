CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."cardinality" (cnt out int) AS
-- PGV moved types start

-- PGV moved types end
 
    BEGIN
     select /*+ cardinality(e,100) */ sal into cnt
from emp where ename='MILLER';
      DBMS_OUTPUT.PUT_LINE(cnt);
    END ;

/
