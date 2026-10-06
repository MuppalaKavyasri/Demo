create or replace procedure yoda.pkg_sample4_proc_pragma_exception_init () as $body$
declare
-- pgv moved types start
-- pgv moved types end
n numeric := 5;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
for i in 1..n loop
perform dbms_output.put_line(i);
if i=n then
raise exception 'myex' using errcode = '50001';
end if;
end loop;
exception
when sqlstate '50001' then
perform dbms_output.put_line('loop finish');end;
$body$
language plpgsql
;
