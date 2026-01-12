CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."CONTINUE_PROC3" as
-- PGV moved types start

-- PGV moved types end

  x NUMBER := 0;  
BEGIN  
  LOOP 
    DBMS_OUTPUT.PUT_LINE ('Inside loop:  x = ' || TO_CHAR(x));  
    x := x + 1;  
    IF x < 3 THEN  
      CONTINUE;  
    END IF;  
    DBMS_OUTPUT.PUT_LINE  
      ('Inside loop, after CONTINUE:  x = ' || TO_CHAR(x));  
    EXIT WHEN x = 5;  
  END LOOP;   
  DBMS_OUTPUT.PUT_LINE (' After loop:  x = ' || TO_CHAR(x));  
END;  
/
