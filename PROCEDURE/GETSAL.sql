CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."GETSAL" ( sal1 in out number) is
-- PGV moved types start

-- PGV moved types end

begin
select sal into sal1 from emp
where empno = sal1;
end ;




/
