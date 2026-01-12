CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CONTINUE_PROC2" as
-- PGV moved types start

-- PGV moved types end

BEGIN
  FOR n_index IN 1 .. 10
  LOOP
    -- skip odd numbers
    IF MOD( n_index, 2 ) = 1 THEN
      CONTINUE;
    END IF;
    DBMS_OUTPUT.PUT_LINE( n_index );
  END LOOP;
END;
/
