create or replace procedure demo."exceotion_proc1"  () as $body$
declare
c_id demo.employee.empno%type;
c_name demo.employee.ename%type;
c_sal demo.employee.sal%type;
begin
select  ename, sal into strict  c_name, c_sal
from demo.employee
where deptno = c_id;/* dmap converted statement start */
perform dbms_output.put_line( concat('Name: ', c_name)) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Address: ', c_sal)) ;/* dmap converted statement end */
exception
when no_data_found then
perform dbms_output.put_line('No such employee!');
when others then
perform dbms_output.put_line('Error!');end;
$body$
language plpgsql
;
