create or replace procedure yoda.pkg_sample7_calc_stats_new1 ( a numeric, b numeric, result inout numeric ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
result:=a+b;end;
$body$
language plpgsql
;
