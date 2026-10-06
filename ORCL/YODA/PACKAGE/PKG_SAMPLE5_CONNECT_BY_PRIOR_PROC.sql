create or replace procedure yoda.pkg_sample5_connect_by_prior_proc () as $body$
declare
-- pgv moved types start
-- pgv moved types end
c_emp_no hier_test.emp_no%type;
c_name hier_test.ename%type;
c_job hier_test.job%type;
c_level hier_test.manager_no%type;
cursor_name cursor for
with recursive cte as (
select  emp_no,ename,job,1 as level
from hier_test where nullif(manager_no::text, '') is null
union all
select  emp_no,ename,job,(c.level+1)
from hier_test join cte c on (c.emp_no = manager_no)
) select * from cte
order by  level;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
open cursor_name;
loop
fetch  cursor_name  into c_emp_no,c_name,c_job,c_level;
exit when not found; /* dmap converted statement start *//* apply on cursor_name */
perform dbms_output.put_line( concat(c_emp_no, ' ' , c_name , ' ' , c_job, ' ' , c_level)) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
