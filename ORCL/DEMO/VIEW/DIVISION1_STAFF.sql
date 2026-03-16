CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "DEMO"."DIVISION1_STAFF" ("ENAME", "EMPNO", "JOB", "DNAME") AS 
  SELECT ename, empno, job, dname
      FROM emp, dept
      WHERE emp.deptno IN (10, 30)
         AND emp.deptno = dept.deptno;
