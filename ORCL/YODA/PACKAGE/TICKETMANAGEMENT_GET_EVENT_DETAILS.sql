create or replace  function  yoda.ticketmanagement_get_event_details (event_id numeric) returns ticketmanagement_eventrectype as $body$
declare
-- pgv moved types start
-- pgv moved types end
eventrec ticketmanagement_eventrectype;
p_event_id sporting_event.id%type := event_id;
--dmap conversion comment: global temp variables moved as local temp variables
g_min_person_id_temp numeric;
g_max_person_id_temp numeric;
--dmap conversion comment: declaration boundary ends
begin 

call yoda.ticketmanagement_dmap_test_onetime_block_init();
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'TICKETMANAGEMENT');
--dmap conversion comment: gtt declaration added
select e.sport_type_name
,h.name
,a.name
,l.name
,e.start_date_time
into strict eventrec.sport_name, eventrec.home_team_name, eventrec.away_team_name, eventrec.home_field, eventrec.date_time
from sporting_event e
,sport_team h
,sport_team a
,sport_location l
where e.id = p_event_id
and e.home_team_id = h.id
and e.away_team_id = a.id
and e.location_id = l.id;
return eventrec;end;
$body$
language plpgsql
;
