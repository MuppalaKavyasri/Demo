create or replace procedure yoda.pkg_sample7_calc_stats_new2 ( a numeric, b numeric ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
--a number := 4;
-- b number := 7;
plsql_block varchar(100);
output numeric;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
plsql_block := 'DO $$ DECLARE BEGIN pkg_sample7_calc_stats_new1(:a, :b, :output);END '; /* dmap converted statement */
execute plsql_block using a, b,out output;  -- calc_stats(a, a, b, a)
/* dmap converted statement start */
perform dbms_output.put_line( concat('output:', output)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
