create or replace procedure yoda.pkg_sample4_my_proc ( v_number numeric,p_rc inout refcursor ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
open p_rc
for select 1 col1
;end;
$body$
language plpgsql
;
