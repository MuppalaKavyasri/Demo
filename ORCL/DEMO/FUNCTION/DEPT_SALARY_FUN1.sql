create or replace  function  demo."dept_salary_fun1"  (dnum numeric) returns numeric as $body$
declare
emp_cursor cursor for
select sal, comm from demo.emp where deptno = dnum;
total_wages    decimal(11,2) := 0;
counter        numeric(10) := 1;
begin
for emp_record in emp_cursor loop
emp_record.comm := coalesce(emp_record.comm, 0);
total_wages := total_wages + emp_record.sal
+ emp_record.comm;/* dmap converted statement start */
perform dbms_output.put_line( concat('Loop number = ', counter , '; Wages = ', to_char(total_wages))) ;  /* dmap converted statement end *//* debug line */
counter := counter + 1; /* increment debug counter */
end loop;/* dmap converted statement start */
/* debug line */
perform dbms_output.put_line( concat('Total wages = ', to_char(total_wages))) ;/* dmap converted statement end */
return total_wages;end;
--dmap converted function completed
$body$
language plpgsql
stable;
