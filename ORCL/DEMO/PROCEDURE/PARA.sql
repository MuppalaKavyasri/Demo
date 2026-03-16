create or replace procedure demo."para"  (cnt inout integer) as $body$
begin
set max_parallel_workers_per_gather = 4 ;/* dmap converted statement start */
select  count(*) into strict cnt from emp;/* dmap converted statement end */
perform dbms_output.put_line(cnt);end;
$body$
language plpgsql
;
