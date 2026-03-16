create or replace procedure demo."continue_proc1"  () as $body$
declare
a numeric(2) := 10;
begin
/* dmap converted statement start */
-- while loop execution
while a < 20 loop
perform dbms_output.put_line( concat('value of a: ', a)) ;/* dmap converted statement end */
a := a::numeric + 1;
if a = 15 then
-- skip the loop using the continue statement
a := a::numeric + 1;
continue;
end if;
end loop;end;
$body$
language plpgsql
;
