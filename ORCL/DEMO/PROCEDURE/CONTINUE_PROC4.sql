CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CONTINUE_PROC4" as
-- PGV moved types start

-- PGV moved types end

  l_number    NUMBER := 0;
BEGIN
  FOR i IN 1 .. 100 LOOP
    CONTINUE WHEN MOD(i,2) = 0;
    l_number := l_number + 1;
  END LOOP;
  DBMS_OUTPUT.put_line('CONTINUE WHEN : ' || l_number);
  l_number := 0;
  FOR i IN 1 .. 100 LOOP
    IF MOD(i,2) = 0 THEN
      CONTINUE;
    END IF;
    l_number := l_number + 1;
  END LOOP;
  DBMS_OUTPUT.put_line('IF .. CONTINUE: ' || l_number);
END;
/
