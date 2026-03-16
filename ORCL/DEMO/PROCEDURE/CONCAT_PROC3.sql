create or replace procedure demo."concat_proc3"  (p1 inout varchar) as $body$
declare
pl varchar(50);
begin
select concat(empno,ename) as concat into strict pl  from demo.employee;
perform dbms_output.put_line(p1);
exception
when others then
null;end;
$body$
language plpgsql
;
