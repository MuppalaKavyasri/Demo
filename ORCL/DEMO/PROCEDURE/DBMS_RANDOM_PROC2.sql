CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_RANDOM_PROC2" 
as
-- PGV moved types start

-- PGV moved types end

BEGIN
  FOR cur_rec IN 1 ..5 LOOP
    DBMS_OUTPUT.put_line('value(1,100)= ' || DBMS_RANDOM.value(1,100));
  END LOOP;
END;
/
