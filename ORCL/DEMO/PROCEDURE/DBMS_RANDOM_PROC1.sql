CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_RANDOM_PROC1" 
as
-- PGV moved types start

-- PGV moved types end

BEGIN
  FOR cur_rec IN 1 ..5 LOOP
    DBMS_OUTPUT.put_line('value= ' || DBMS_RANDOM.value);
  END LOOP;
END; 
/
