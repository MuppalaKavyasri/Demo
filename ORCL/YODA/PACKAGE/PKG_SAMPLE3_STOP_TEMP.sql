create or replace procedure yoda.pkg_sample3_stop_temp (p_id integer) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
delete from my_temp_table where id=p_id;
perform dbms_output.put_line('data deleted');end;
$body$
language plpgsql
;
