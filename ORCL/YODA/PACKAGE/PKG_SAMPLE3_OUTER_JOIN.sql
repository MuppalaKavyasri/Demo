create or replace  function  yoda.pkg_sample3_outer_join (p_in varchar) returns integer as $body$
declare
-- pgv moved types start
-- pgv moved types end
cnt integer;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
if p_in = 'left outer'
then
select count(*) into strict cnt from employee_outer_join e1 left outer join employee_details_outer_join e2
on
e1.mobile_no = e2.employee_mobile_number
;
return cnt;
elsif p_in = 'full outer'
then
select count(*) into strict cnt from employee_outer_join e1 full outer join employee_details_outer_join e2
on
e1.mobile_no = e2.employee_mobile_number
;
return cnt;
else
perform dbms_output.put_line('incorrect input');
return -1;
end if;
exception
when others then
perform dbms_output.put_line(sqlerrm);
return -1;end;
$body$
language plpgsql
;
