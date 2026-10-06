-- dmap_object_gen_tag : type : view name : sporting_event_info
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "sporting_event_info"  ("event_id", "sport", "event_date_time", "home_team", "away_team", "location", "city") as select e.id as event_id
,  e.sport_type_name sport
,  e.start_date_time event_date_time
,  h.name home_team
,  a.name away_team
, l.name "location"
,  l.city city
from sporting_event e, sport_team h, sport_team a, sport_location l
where e.home_team_id = h.id
and e.away_team_id = a.id
and e.location_id = l.id;/* dmap converted statement end */
-- estimed cost of view [ sporting_event_info ]: 1.00;
