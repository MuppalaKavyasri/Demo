CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."CHILD_PGM_PRAGMA_SAMPLE" as
-- PGV moved types start

-- PGV moved types end

PRAGMA AUTONOMOUS_TRANSACTION;
  --ex_continue Exception;
  l_number    NUMBER := 0;
    new_number NUMBER := 10;
BEGIN

  DBMS_OUTPUT.put_line('First Record');
  Insert into TEST_PRAG(message) Values('Record CH2.1 from CHILD'||new_number);
  new_number := new_number + 1;
  Insert into TEST_PRAG(message) Values('Record CH2.2 from CHILD'||new_number);
  COMMIT;

END;
/
