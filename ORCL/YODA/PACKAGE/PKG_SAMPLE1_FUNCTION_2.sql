create or replace procedure yoda.pkg_sample1_function_2 (test_id numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
--dmap conversion comment: global temp variables moved as local temp variables
v_char1_temp varchar;
--dmap conversion comment: declaration boundary ends
begin 

call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'PKG_SAMPLE1');/* dmap converted statement start */
--dmap conversion comment: gtt declaration added
perform dbms_output.put_line(  concat('v_char-', dmap_extension.f_dmap_get_pkg_var('YODA' , 'PKG_SAMPLE1', 'V_CHAR1', 'VARCHAR2', 'N')::varchar)) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line(  concat('v_num-', dmap_extension.f_dmap_get_pkg_var('YODA' , 'PKG_SAMPLE1', 'V_NUM', 'number', 'N')::numeric)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
