create or replace procedure demo."getsal"  ( sal1 inout numeric) as $body$
begin
select sal into strict sal1 from emp
where empno = sal1;end;
$body$
language plpgsql
;
