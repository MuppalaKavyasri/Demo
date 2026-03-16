create or replace procedure demo."cast_proc3"  (id numeric ) as $body$
declare
v_name varchar(500);
begin
/* dmap converted statement start */
select string_agg(ename::text, ', '  order by  ename)
into strict v_name
from demo.employee
where deptno = 10;/* dmap converted statement end */
perform dbms_output.put_line(v_name);
exception
when others then
null;end;
$body$
language plpgsql
;
