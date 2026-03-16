create or replace  function  demo.emp_admin_update_emp_sal ( p_empno numeric, p_raise numeric ) returns numeric as $body$
declare
-- pgv moved types start
-- pgv moved types end
v_sal           numeric := 0;
begin
-- package does not have global variables
--dmap conversion comment: gtt declaration added
select sal into strict v_sal from emp where empno = p_empno;
v_sal := v_sal + p_raise;
update emp set sal = v_sal where empno = p_empno;
return v_sal;/* dmap converted statement start */
exception
when no_data_found then
perform dbms_output.put_line( concat('Employee ', p_empno , ' not found')) ;/* dmap converted statement end */
return -1;
when others then
perform dbms_output.put_line('The following is SQLERRM:');
perform dbms_output.put_line(sqlerrm);
perform dbms_output.put_line('The following is SQLCODE:');
perform dbms_output.put_line(sqlstate);
return -1;end;
--
--  procedure that inserts a new employee record into the emp table.
--
$body$
language plpgsql
;
