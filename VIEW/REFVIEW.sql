CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEMO"."REFVIEW" ("EMPNO", "ENAME", "JOB", "MGR", "HIREDATE", "SAL", "COMM", "DEPTNO") AS 
  SELECT
        "EMPNO",
        "ENAME",
        "JOB",
        "MGR",
        "HIREDATE",
        "SAL",
        "COMM",
        "DEPTNO"
    FROM
        dmaptest.emp;
