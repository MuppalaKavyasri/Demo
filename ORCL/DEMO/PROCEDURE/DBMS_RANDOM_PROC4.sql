CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_RANDOM_PROC4" 
as
-- PGV moved types start

-- PGV moved types end

BEGIN
  FOR i IN 1 .. 5 LOOP
    DBMS_OUTPUT.put_line('date= ' || TRUNC(SYSDATE + DBMS_RANDOM.value(0,366)));
  END LOOP;
END;
/
