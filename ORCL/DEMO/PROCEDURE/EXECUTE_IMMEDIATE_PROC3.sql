create or replace procedure demo."execute_immediate_proc3"  () as $body$
declare
v_emp_cursor refcursor;
emp_record      employee%rowtype;
v_stmt_str      varchar(200);
v_e_job         employee.job%type;
v_emp_cursor refcursor;
flg0 text;
begin
-- dynamic sql statement with placeholder:
v_stmt_str := 'SELECT * FROM employee WHERE job = j'; /* dmap converted statement */
-- open cursor & specify bind argument in using clause:
open v_emp_cursor for execute v_stmt_str using 'MANAGER';
-- fetch rows from result set one at a time:
loop
fetch v_emp_cursor into emp_record;
flg0 := found;
exit when (not flg0);/* apply on v_emp_cursor */
end loop;
-- close cursor:
close v_emp_cursor;
end;
$body$
language plpgsql
;
