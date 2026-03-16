create or replace procedure demo."concat_proc4"  (id numeric,p1 inout varchar) as $body$
declare
pl varchar(50);
begin
select concat(deptno,dname) as concat into strict pl
from demo.dept
where deptno = id;
perform dbms_output.put_line(p1);
exception
when others then
null;end;
$body$
language plpgsql
;
