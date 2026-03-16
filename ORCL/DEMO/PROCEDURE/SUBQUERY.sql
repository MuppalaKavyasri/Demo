CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."SUBQUERY" AS
-- PGV moved types start

-- PGV moved types end
 
BEGIN
  SELECT eName 
FROM testconst.emp
WHERE eName NOT IN
    (SELECT ename
     FROM testconst.emp
     WHERE ename='');

END SUBQUERY;
/
