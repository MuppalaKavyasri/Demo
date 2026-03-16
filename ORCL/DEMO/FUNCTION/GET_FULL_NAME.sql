create or replace  function  demo."get_full_name"  (p_employee_id numeric) returns varchar as $body$
declare
v_full_name varchar(100);
begin
/* dmap converted statement start */
select  concat(first_name, ' ' , last_name)  into strict v_full_name
from employees
where employee_id = p_employee_id;/* dmap converted statement end */
return v_full_name;end;
--dmap converted function completed
$body$
language plpgsql
stable;
