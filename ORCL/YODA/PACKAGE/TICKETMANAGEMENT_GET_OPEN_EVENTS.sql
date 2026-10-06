create or replace  function  yoda.ticketmanagement_get_open_events () returns ticketmanagement_eventtab as $body$
declare
-- pgv moved types start
-- pgv moved types end
event_tab ticketmanagement_eventtab;
open_events cursor for
select *
from   sporting_event
where  sold_out = 0
order by start_date_time;
row_num integer := 1;
--dmap conversion comment: global temp variables moved as local temp variables
g_min_person_id_temp numeric;
g_max_person_id_temp numeric;
--dmap conversion comment: declaration boundary ends
begin 

call yoda.ticketmanagement_dmap_test_onetime_block_init();
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'TICKETMANAGEMENT');
--dmap conversion comment: gtt declaration added
for oe_rec in open_events loop
event_tab(row_num) := oe_rec;
row_num := row_num +1;
end loop;
return event_tab;end;
ticketmanagement;
$body$
language plpgsql
;
