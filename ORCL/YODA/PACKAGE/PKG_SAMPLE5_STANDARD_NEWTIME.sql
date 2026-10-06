create or replace procedure yoda.pkg_sample5_standard_newtime (tm1 timestamp) as $body$
declare
-- pgv moved types start
-- pgv moved types end
tm2 timestamp;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
tm2 := tm1;
select
to_char(new_time( to_timestamp(tm2,'MM-DD-YYYY HH24:MI:SS'),  'est', 'ast'), 'MM-DD-YYYY HH24:MI:SS') into strict tm2
;end;
-- build a pipelined table function.
$body$
language plpgsql
;
