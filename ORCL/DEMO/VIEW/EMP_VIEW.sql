CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEMO"."EMP_VIEW" ("ENAME", "DEPT_NO", "LOC") AS 
  SELECT emp.Ename,dept.deptno,dept.loc
FROM emp,dept
WHERE emp.deptno=dept.deptno;
