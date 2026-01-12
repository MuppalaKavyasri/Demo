CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "DEMO"."EMP_DEPT_OJ1" ("EMPNO", "ENAME", "DEPTNO", "LOC", "DNAME") AS 
  SELECT e."EMPNO",e."ENAME",e."DEPTNO", Loc, d.dname
        FROM emp_v e, dept d
            WHERE e.deptno = d.deptno (+);
