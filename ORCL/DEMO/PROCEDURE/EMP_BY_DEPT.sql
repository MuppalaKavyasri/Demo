CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."EMP_BY_DEPT" (
    p_deptno        emp.deptno%TYPE ,v_ename    out     emp.ename%TYPE
)
as
-- PGV moved types start

-- PGV moved types end

   
BEGIN
  SELECT ename into v_ename  FROM demo.emp WHERE deptno = p_deptno and rownum=1;


    end;

/
