CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_OUTPUT_PROC2" ( id number )
AS
-- PGV moved types start

-- PGV moved types end

CURSOR c1 IS 
 SELECT * from DEMO.EMPLOYEE where deptno = id;
 BEGIN
 FOR row IN c1 
 LOOP 
   DBMS_OUTPUT.PUT_LINE('empno' || 'ename');
   END LOOP; 
END; 
/
