create or replace procedure yoda.pkg_sample3_check_temp () as $body$
declare
-- pgv moved types start
-- pgv moved types end
v_count integer;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
select count(*) into strict v_count from my_temp_table;/* dmap converted statement start */
perform dbms_output.put_line( concat('count: ', v_count)) ;/* dmap converted statement end */
call pkg_sample3_update_temp(1);end;
$body$
language plpgsql
;
