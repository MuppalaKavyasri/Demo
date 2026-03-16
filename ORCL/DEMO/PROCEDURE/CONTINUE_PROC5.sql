CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CONTINUE_PROC5" as
-- PGV moved types start

-- PGV moved types end

  ex_continue EXCEPTION;
  l_number    NUMBER := 0;
BEGIN
  FOR i IN 1 .. 100 LOOP
    BEGIN
      IF MOD(i,2) != 0 THEN
        RAISE ex_continue;
      END IF;
      l_number := l_number + 1;
    EXCEPTION
      WHEN ex_continue THEN
        NULL;
    END;
  END LOOP;
  DBMS_OUTPUT.put_line('EXCEPTION: ' || l_number);
  l_number := 0;
  FOR i IN 1 .. 100 LOOP
    IF MOD(i,2) != 0 THEN
      l_number := l_number + 1;
    END IF;
  END LOOP;
  DBMS_OUTPUT.put_line('IF       : ' || l_number);
  l_number := 0;
  FOR i IN 1 .. 100 LOOP
    IF MOD(i,2) = 0 THEN
      GOTO label_continue;
    END IF;
    l_number := l_number + 1;
    << label_continue >>
    NULL;
  END LOOP;
  DBMS_OUTPUT.put_line('GOTO     : ' || l_number);
END;
/
