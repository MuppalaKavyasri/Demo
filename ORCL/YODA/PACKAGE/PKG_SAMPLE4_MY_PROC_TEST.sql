create or replace  function  yoda.pkg_sample4_my_proc_test (v_number numeric) returns refcursor as $body$
declare
-- pgv moved types start
-- pgv moved types end
p_rc refcursor;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
call pkg_sample4_my_proc(v_number,p_rc);
return p_rc;end;
$body$
language plpgsql
stable;
