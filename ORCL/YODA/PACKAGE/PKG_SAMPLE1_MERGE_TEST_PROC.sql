create or replace procedure yoda.pkg_sample1_merge_test_proc ( p_id numeric ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
--dmap conversion comment: global temp variables moved as local temp variables
v_char1_temp varchar;
--dmap conversion comment: declaration boundary ends
begin 

call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'PKG_SAMPLE1');--dmap conversion comment: gtt declaration added
merge into dest_tab a
using source_tab b
on (a.object_id = b.object_id)
when matched then
update set
owner       = b.owner,
object_name = b.object_name,
object_type = b.object_type
when not matched then
insert(object_id, owner, object_name, object_type)
values (b.object_id, b.owner, b.object_name, b.object_type);
exception
when others then
raise;end;
$body$
language plpgsql
;
