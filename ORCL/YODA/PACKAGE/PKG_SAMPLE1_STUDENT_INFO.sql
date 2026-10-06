create or replace  function  yoda.pkg_sample1_student_info (in_v_student_id numeric) returns varchar as $body$
declare
-- pgv moved types start
-- pgv moved types end
p_v_enrolled varchar(10) := 'NO';
--dmap conversion comment: global temp variables moved as local temp variables
v_char1_temp varchar;
--dmap conversion comment: declaration boundary ends
begin 

call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'PKG_SAMPLE1');
--dmap conversion comment: gtt declaration added
perform dbms_output.put_line('Check if the student is enrolled');
select 'YES'
into strict p_v_enrolled
from enrollment
where student_id = in_v_student_id;
perform dbms_output.put_line('The student is enrolled into one course');
return p_v_enrolled;
exception
when no_data_found then
perform dbms_output.put_line('NO_DATA_FOUND -- The student is not enrolled');
return null;
when too_many_rows then
perform dbms_output.put_line('TOO_MANY_ROWS -- The student is enrolled in too many courses');
return null;end;
$body$
language plpgsql
;
