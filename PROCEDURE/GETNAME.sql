CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."GETNAME" ( i in  number, n OUT VARCHAR) is
-- PGV moved types start

-- PGV moved types end

begin
select substr(ENAME,1,2) INTO n from emp
where empno = i;
end ;

/
