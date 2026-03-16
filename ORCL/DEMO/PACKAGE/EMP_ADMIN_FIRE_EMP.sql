create or replace procedure demo.emp_admin_fire_emp ( p_empno numeric ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin
-- package does not have global variables
--dmap conversion comment: gtt declaration added
delete from emp where empno = p_empno;end;
$body$
language plpgsql
;
