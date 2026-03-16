create or replace procedure demo."dbms_random_proc3"  () as $body$
begin
/* dmap converted statement start */
for i in 1 .. 5 loop
perform dbms_output.put_line( concat('string(''l'',?)= ', dbms_random.string('l',select string('L',trunc(dbms_random$value(10,21))))) ;;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
