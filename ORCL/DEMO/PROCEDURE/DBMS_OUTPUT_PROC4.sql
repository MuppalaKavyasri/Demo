CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_OUTPUT_PROC4" ( id number )
AS
-- PGV moved types start

-- PGV moved types end

CURSOR c1 IS 
 SELECT e.empno,e.ename,d.dname,d.loc 
 from DEMO.EMPLOYEE E, DEMO.DEPT D
 where 1=1
 and e.deptno = d.deptno
 and e.deptno = id;
 BEGIN
 FOR row IN c1 
 LOOP 
   DBMS_OUTPUT.PUT_LINE('empno' || 'ename' || 'dname' || 'loc');
   END LOOP; 
END; 
/
