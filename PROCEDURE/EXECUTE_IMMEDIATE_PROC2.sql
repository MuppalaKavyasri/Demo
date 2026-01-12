CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."EXECUTE_IMMEDIATE_PROC2" 
as
-- PGV moved types start

-- PGV moved types end
  type empdtlrec is record (empno  number(4),
                           ename  varchar2(20),
                           deptno  number(2));
 empdtl empdtlrec;
begin
 execute immediate 'select empno, ename, deptno ' ||
                   'from demo.employee where empno = 7839'
   into empdtl;
end;
/
