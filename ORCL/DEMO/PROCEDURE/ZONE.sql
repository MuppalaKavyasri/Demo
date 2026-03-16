CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."zone" (cnt out date) AS
-- PGV moved types start

-- PGV moved types end
 
    BEGIN
      select sysdate  INTO cnt from  dual;
      DBMS_OUTPUT.PUT_LINE(cnt);
    END ;

/
