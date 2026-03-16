CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."TESTPROCEDURE" 
(
  name IN VARCHAR2 ,
  ur_name out VARCHAR2
) AS
-- PGV moved types start

-- PGV moved types end
 
BEGIN 
  ur_name := NAME;

END TESTPROCEDURE;
/
