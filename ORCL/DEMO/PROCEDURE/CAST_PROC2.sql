create or replace procedure demo."cast_proc2"  () as $body$
declare
l_date timestamp(0);
v_date timestamp(0);
begin
select hiredate,
cast(hiredate as timestamp) as output_value
into strict l_date,v_date
from demo.employee;/* dmap converted statement start */
perform dbms_output.put_line( concat(l_date, v_date)) ;/* dmap converted statement end */
exception
when others then
null;end;
$body$
language plpgsql
;
