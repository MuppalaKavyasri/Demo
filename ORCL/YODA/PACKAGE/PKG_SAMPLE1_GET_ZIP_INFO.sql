create or replace  function  yoda.pkg_sample1_get_zip_info (in_zip varchar) returns pkg_sample1_zip_record as $body$
declare
-- pgv moved types start
-- pgv moved types end
rec pkg_sample1_zip_record;
--dmap conversion comment: global temp variables moved as local temp variables
v_char1_temp varchar;
--dmap conversion comment: declaration boundary ends
begin 

call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'PKG_SAMPLE1');/* dmap converted statement start */
--dmap conversion comment: gtt declaration added
perform dbms_output.put_line( concat('The input Zip Code is : ', in_zip)) ;/* dmap converted statement end */
select zip, city, state
into strict rec
from zipcode
where zip = in_zip;
return rec;
exception
when no_data_found then
perform dbms_output.put_line('NO_DATA_FOUND exception occured');
return null;/* dmap converted statement start */
when others then
raise exception '%',  concat('An error was encountered - ', sqlstate, ' -ERROR- ', sqlerrm)  using errcode = '45001';/* dmap converted statement end */end;
$body$
language plpgsql
;
