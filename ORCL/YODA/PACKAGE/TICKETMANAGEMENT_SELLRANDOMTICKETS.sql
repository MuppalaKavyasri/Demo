create or replace procedure yoda.ticketmanagement_sellrandomtickets () as $body$
declare
-- pgv moved types start
-- pgv moved types end
event_tab ticketmanagement_eventtab;
ticket_holder person.id%type;
row_ct numeric(8);
event_idx numeric(8);
event_id numeric;
quantity numeric;
--dmap conversion comment: global temp variables moved as local temp variables
g_min_person_id_temp numeric;
g_max_person_id_temp numeric;
--dmap conversion comment: declaration boundary ends
begin 

call yoda.ticketmanagement_dmap_test_onetime_block_init();
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'TICKETMANAGEMENT');
--dmap conversion comment: gtt declaration added
event_tab := ticketmanagement_get_open_events;
row_ct    := COALESCE(array_length(event_tab, 1), 0);
event_idx := trunc(dbms_random.value(1,row_ct));
event_id := event_tab[event_idx].id;
ticket_holder := trunc(dbms_random.value(dmap_extension.f_dmap_get_pkg_var('YODA' , 'TICKETMANAGEMENT', 'G_MIN_PERSON_ID', 'number', 'Y')::numeric,dmap_extension.f_dmap_get_pkg_var('YODA' , 'TICKETMANAGEMENT', 'G_MAX_PERSON_ID', 'number', 'Y')::numeric));
quantity := dbms_random.value(1,6);
call ticketmanagement_selltickets(ticket_holder,event_id,quantity);end;
$body$
language plpgsql
;
