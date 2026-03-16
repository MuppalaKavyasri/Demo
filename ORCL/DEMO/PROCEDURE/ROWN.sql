create or replace procedure demo."rown"  ( i inout integer) as $body$
begin
select empno into strict i from emp where empno = i  limit 1;end;
$body$
language plpgsql
;
