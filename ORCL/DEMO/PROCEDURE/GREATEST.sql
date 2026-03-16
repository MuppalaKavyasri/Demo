CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."greatest" (cnt out int) AS
-- PGV moved types start

-- PGV moved types end
 
    BEGIN
select greatest(5,4,7,2,6,1)  INTO cnt from  dual;
      DBMS_OUTPUT.PUT_LINE(cnt);
    END ;
/
