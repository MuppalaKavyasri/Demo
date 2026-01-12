CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."CONCAT_PROC5" (id number) as
-- PGV moved types start

-- PGV moved types end

pl varchar2(50);
V_CONCAT1 varchar2(50);
V_CONCAT2 varchar2(50);
BEGIN
 SELECT CONCAT(e.empno,e.ename) CONCAT1, CONCAT (d.dname,d.loc ) CONCAT2 INTO V_CONCAT1,V_CONCAT2
 from DEMO.EMPLOYEE E, DEMO.DEPT D
 where 1=1
 and e.deptno = d.deptno
 and e.deptno = id;
dbms_output.put_line(V_CONCAT1||V_CONCAT2);
EXCEPTION
     WHEN OTHERS THEN
     NULL;
END ;
/
