CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."ROWN" ( i in out INT) as
-- PGV moved types start

-- PGV moved types end

begin
select empno into i from emp where empno = i and rownum=1;
end ;

/
