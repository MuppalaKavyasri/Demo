create or replace  function  yoda.pkg_sample1_student_info_usrdefnd_exc (in_v_student_id numeric) returns numeric as $body$
declare
-- pgv moved types start
-- pgv moved types end
v_total_courses numeric;
--dmap conversion comment: global temp variables moved as local temp variables
v_char1_temp varchar;
--dmap conversion comment: declaration boundary ends
begin 

call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'PKG_SAMPLE1');
--dmap conversion comment: gtt declaration added
if in_v_student_id < 0 then
raise exception 'e_invalid_id' using errcode = '50001';
else
select count(*)
into strict v_total_courses
from enrollment
where student_id = in_v_student_id;/* dmap converted statement start */
perform dbms_output.put_line( concat('The student is registered for ', v_total_courses, ' courses')) ;/* dmap converted statement end */
return v_total_courses;
end if;
perform dbms_output.put_line('No exception has been raised');
exception
when sqlstate '50001' then
perform dbms_output.put_line('An id cannot be negative');
return null;end;
$body$
language plpgsql
;
