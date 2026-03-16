create or replace procedure demo."nopara"  (cnt inout numeric) as $body$
begin
set max_parallel_workers_per_gather = 0;  /* dmap converted statement start */select count(*) into strict cnt from all_bill_resources d;/* dmap converted statement end */
perform dbms_output.put_line(cnt);end;
$body$
language plpgsql
;
