create or replace procedure demo."continue_proc3"  () as $body$
declare
x numeric := 0;
begin
/* dmap converted statement start */
loop
perform dbms_output.put_line( concat('Inside loop:  x = ', to_char(x))) ;/* dmap converted statement end */
x := x + 1;
if x < 3 then
continue;
end if;/* dmap converted statement start */
perform dbms_output.put_line( concat('Inside loop, after CONTINUE:  x = ', to_char(x))) ;/* dmap converted statement end */
exit when x = 5;
end loop;/* dmap converted statement start */
perform dbms_output.put_line( concat(' After loop:  x = ', to_char(x))) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
