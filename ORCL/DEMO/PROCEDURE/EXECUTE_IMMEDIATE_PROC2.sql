create or replace procedure demo."execute_immediate_proc2"  () as $body$
declare
empdtl empdtlrec;
begin
execute 'select empno, ename, deptno from demo.employee where empno = 7839;' into strict empdtl; /* dmap converted statement */
end;
$body$
language plpgsql
;
