CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_RANDOM_PROC3" 
as
-- PGV moved types start

-- PGV moved types end

BEGIN
  FOR i IN 1 .. 5 LOOP
    DBMS_OUTPUT.put_line('string(''L'',?)= ' || DBMS_RANDOM.string('L',TRUNC(DBMS_RANDOM.value(10,21))));
  END LOOP;
END;
/
