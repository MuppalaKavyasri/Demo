create or replace procedure demo."emp_by_dept"  ( p_deptno emp.deptno%type ,v_ename inout emp.ename%type ) as $body$
begin
select ename into strict v_ename  from demo.emp where deptno = p_deptno  limit 1;end;
$body$
language plpgsql
;
