create or replace procedure demo."dbms_random_proc1"  () as $body$
begin
/* dmap converted statement start */
for cur_rec in 1 ..5 loop
perform dbms_output.put_line( concat('value= ', random())) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
