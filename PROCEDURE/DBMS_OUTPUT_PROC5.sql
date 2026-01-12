CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_OUTPUT_PROC5" 
AS
-- PGV moved types start

-- PGV moved types end

l_count Number;
BEGIN 
SELECT COUNT(*) INTO l_count 
FROM DEMO.EMPLOYEE 
WHERE ename like 'DA%';
DBMS_OUTPUT.PUT_LINE ('Number of employee ' ||l_count);
END; 
/
