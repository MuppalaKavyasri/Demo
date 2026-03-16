create or replace procedure demo."dbms_random_proc4"  () as $body$
begin
/* dmap converted statement start */
for i in 1 .. 5 loop
perform dbms_output.put_line( concat('date= ', trunc(clock_timestamp() + dbms_random.value(0,366)))) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
