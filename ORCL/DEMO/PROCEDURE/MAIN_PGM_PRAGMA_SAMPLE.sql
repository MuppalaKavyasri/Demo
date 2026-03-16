CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."MAIN_PGM_PRAGMA_SAMPLE" as
-- PGV moved types start

-- PGV moved types end

    l_number    NUMBER := 0;
    new_number NUMBER := 10;
BEGIN
  DBMS_OUTPUT.put_line('First Record');
  Insert into TEST_PRAG(message) Values('Record MAIN2.1 from CHILD'||new_number);
  new_number := new_number + 1;
  CHILD_PGM_PRAGMA_SAMPLE();
  Insert into TEST_PRAG(message) Values('Record MAIN2.3 from CHILD'||new_number);
  ROLLBACK;
END;
/
