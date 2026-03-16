create or replace procedure demo."dbms_output_proc5"  () as $body$
declare
l_count numeric;
begin
select count(*) into strict l_count
from demo.employee
where ename like 'DA%';/* dmap converted statement start */
perform dbms_output.put_line( concat('Number of employee ', l_count)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
