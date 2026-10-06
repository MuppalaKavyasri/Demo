create or replace procedure yoda.ticketmanagement_dmap_test_onetime_block_init () as $body$
declare
-- pgv moved types start
-- pgv moved types end
l_one_time_block_invoked text;
--dmap conversion comment: global temp variables moved as local temp variables
g_min_person_id_temp numeric;
g_max_person_id_temp numeric;
--dmap conversion comment: declaration boundary ends
begin 

call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'TICKETMANAGEMENT');
--dmap conversion comment: gtt declaration added
l_one_time_block_invoked := dmap_extension.f_dmap_get_pkg_var('YODA','TICKETMANAGEMENT', 'ONE_TIME_BLOCK_INVOKED', null);
if nullif(l_one_time_block_invoked::text, '') is null then
select min(id),max(id) into strict g_min_person_id_temp, g_max_person_id_temp from person;
call dmap_extension.p_dmap_set_pkg_var('YODA' , 'TICKETMANAGEMENT', 'G_MIN_PERSON_ID', 'number',(g_min_person_id_temp)::text, 'Y');
call dmap_extension.p_dmap_set_pkg_var('YODA' , 'TICKETMANAGEMENT', 'G_MAX_PERSON_ID', 'number',(g_max_person_id_temp)::text, 'Y');
call dmap_extension.p_dmap_set_pkg_var('YODA','TICKETMANAGEMENT', 'ONE_TIME_BLOCK_INVOKED', null, null, 'Y');
end if;
exception
when others then
raise notice ' error %', sqlerrm;
null;end;
$body$
language plpgsql
;
