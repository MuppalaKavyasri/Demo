create or replace procedure demo."getname"  ( i numeric, n inout varchar) as $body$
begin
select oracle.substr(ename,1,2) into strict n from emp
where empno = i;end;
$body$
language plpgsql
;
