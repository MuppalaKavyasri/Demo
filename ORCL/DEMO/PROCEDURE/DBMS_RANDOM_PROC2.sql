create or replace procedure demo."dbms_random_proc2"  () as $body$
begin
/* dmap converted statement start */
for cur_rec in 1 ..5 loop
perform dbms_output.put_line( concat('value(1,100)= ', dbms_random.value(1,100))) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
