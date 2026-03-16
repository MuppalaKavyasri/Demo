create or replace procedure demo."decode_proc5"  () as $body$
declare
c_id demo.employee.empno%type;
c_job demo.employee.job%type;
c_sal demo.employee.sal%type;
begin
select  case when job='MANAGER' then 20 when job='CLERK' then  10 when job='SALESMAN' then 30 when job = null then 40 end  job,
sal
into strict  c_job, c_sal
from demo.employee
where deptno = c_id;/* dmap converted statement start */
perform dbms_output.put_line( concat('Name: ', c_job)) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Salary: ', c_sal)) ;/* dmap converted statement end */
exception
when no_data_found then
perform dbms_output.put_line('No such employee!');
when others then
perform dbms_output.put_line('Error!');end;
$body$
language plpgsql
;
