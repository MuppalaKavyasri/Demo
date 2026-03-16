create or replace procedure demo."continue_proc4"  () as $body$
declare
l_number    numeric := 0;
begin
for i in 1 .. 100 loop
continue when mod(i,2) = 0;
l_number := l_number + 1;
end loop;/* dmap converted statement start */
perform dbms_output.put_line( concat('CONTINUE WHEN : ', l_number)) ;/* dmap converted statement end */
l_number := 0;
for i in 1 .. 100 loop
if mod(i,2) = 0 then
continue;
end if;
l_number := l_number + 1;
end loop;/* dmap converted statement start */
perform dbms_output.put_line( concat('IF .. CONTINUE: ', l_number)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
