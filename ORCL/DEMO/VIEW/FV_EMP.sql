CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEMO"."FV_EMP" ("EMPNO", "ENAME", "JOB", "MGR", "HIREDATE", "SAL", "COMM", "DEPTNO") AS 
  SELECT "EMPNO",
           "ENAME",
           "JOB",
           "MGR",
           "HIREDATE",
           "SAL",
           "COMM",
           "DEPTNO"
      FROM demo.emp;
