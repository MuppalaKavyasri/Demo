create or replace procedure yoda.pkg_sample3_update_temp ( p_id integer ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
v_id integer;
v_description varchar(10);
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
update my_temp_table set description='tested' where id=p_id;
select id,description into strict v_id,v_description from my_temp_table where id=p_id;/* dmap converted statement start */
perform dbms_output.put_line( concat('id ', v_id, 'description ', v_description)) ;/* dmap converted statement end */
call pkg_sample3_stop_temp(1);end;
$body$
language plpgsql
;
