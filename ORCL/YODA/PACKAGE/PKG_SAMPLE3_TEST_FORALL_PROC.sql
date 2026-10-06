create or replace procedure yoda.pkg_sample3_test_forall_proc ( p_id numeric ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
/*
type emp_info_type is  table of employee%rowtype;
*/
emp_info_type_tbl employee[];

v_sql varchar(400);

starttime integer:= dbms_utility.get_time;

begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
v_sql := 'select e.em:p_id, e.emp_name, e.email_id, e.date_of_birth, e.joining_date, e.salary, e.comm, e.department, e.mobile_no, e.address from employee e where e.em:p_id=:p_id'; /* dmap converted statement */
execute v_sql bulk collect into strict emp_info_type_tbl using p_id;FOR i IN 1 .. COALESCE(array_length(emp_info_type_tbl,
LOOP
 1), 0)
merge into employee_bkp a
using employee b
on (a.emp_id = b.emp_id)
when matched then
update set
emp_name       = emp_info_type_tbl[i].emp_name,
email_id = emp_info_type_tbl[i].email_id,
salary = emp_info_type_tbl[i].salary,
department=emp_info_type_tbl[i].department,
address=emp_info_type_tbl[i].address,
mobile_no=emp_info_type_tbl[i].mobile_no,
date_of_birth=emp_info_type_tbl[i].date_of_birth,
joining_date=emp_info_type_tbl[i].joining_date
when not matched then
insert(emp_id,emp_name, email_id, salary, department,address,mobile_no,date_of_birth,joining_date)
values (emp_info_type_tbl[i].emp_id,
emp_info_type_tbl[i].emp_name,
emp_info_type_tbl[i].email_id,
emp_info_type_tbl[i].salary,
emp_info_type_tbl[i].department,
emp_info_type_tbl[i].address,
emp_info_type_tbl[i].mobile_no,
emp_info_type_tbl[i].date_of_birth,
emp_info_type_tbl[i].joining_date);/* dmap converted statement start */
perform dbms_output.put_line( concat('Total Time taken to load the table:  - ', to_char(round((select dmap_extension.dmap_dbms_utility_get_time() -
starttime) / 6000,
2)) , ' Minutes')) ;/* dmap converted statement end */

END LOOP;
exception
when others then
rollback;
raise;end;
$body$
language plpgsql
;
