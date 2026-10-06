create or replace procedure yoda.pkg_sample5_connect_by_isleaf_proc () as $body$
declare
-- pgv moved types start
-- pgv moved types end
c_emp_no hier_test.emp_no%type;
c_name hier_test.ename%type;
c_job hier_test.job%type;
c_mgr numeric;
c_level numeric;
c_path varchar(100);
c_isleaf varchar(100);
cursor_name cursor for
with recursive cte as (
select emp_no,ename,job,manager_no,1 as level,ename path,connect_by_isleaf  isleaf,array[ row_number() over (order by  job) ] as hierarchy
from hier_test where nullif(manager_no::text, '') is null
union all
select emp_no,ename,job,manager_no,(c.level+1),c.path || ';' || ename path,connect_by_isleaf  isleaf, array_append(c.hierarchy, row_number() over (order by  job))  as hierarchy
from hier_test join cte c on (c.emp_no = manager_no)
) select * from cte
order by hierarchy;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
open cursor_name;
loop
fetch  cursor_name  into c_emp_no,c_name,c_job,c_mgr,c_level,c_path,c_isleaf;
exit when not found; /* dmap converted statement start *//* apply on cursor_name */
perform dbms_output.put_line( concat(c_emp_no, ' ' , c_name , ' ' , c_job, ' ' , c_level)) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
