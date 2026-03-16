create or replace procedure demo."zone"  (cnt inout timestamp(0)) as $body$
begin
select clock_timestamp()  into strict cnt;
perform dbms_output.put_line(cnt);end;
$body$
language plpgsql
;
