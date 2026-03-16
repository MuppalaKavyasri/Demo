CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."LAPPEND" (cnt out varchar) AS
-- PGV moved types start

-- PGV moved types end
 
    BEGIN
INSERT /*+ APPEND_VALUES */ INTO MEMBERS VALUES (1,'a','b','c');
select 'success' into cnt from dual;
      DBMS_OUTPUT.PUT_LINE('test');
    END ;
/
