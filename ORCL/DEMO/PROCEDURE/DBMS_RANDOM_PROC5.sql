create or replace procedure demo."dbms_random_proc5"  () as $body$
declare
l_hours_in_day numeric := 24;
l_mins_in_day  numeric := 24*60;
l_secs_in_day  numeric := 24*60*60;
begin
/* dmap converted statement start */
for i in 1 .. 5 loop
perform dbms_output.put_line( concat('hours= ', (trunc(clock_timestamp()) + (trunc(random()::numeric(0,1000))/l_hours_in_day)))) ;/* dmap converted statement end */
end loop;/* dmap converted statement start */
for i in 1 .. 5 loop
perform dbms_output.put_line( concat('mins = ', (trunc(clock_timestamp()) + (trunc(random()::numeric(0,1000))/l_mins_in_day)))) ;/* dmap converted statement end */
end loop;/* dmap converted statement start */
for i in 1 .. 5 loop
perform dbms_output.put_line( concat('secs = ', (trunc(clock_timestamp()) + (trunc(random()::numeric(0,1000))/l_secs_in_day)))) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
