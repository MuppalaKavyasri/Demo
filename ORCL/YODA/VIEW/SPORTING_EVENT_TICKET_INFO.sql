-- dmap_object_gen_tag : type : view name : sporting_event_ticket_info
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "sporting_event_ticket_info"  ("ticket_id", "event_id", "sport", "event_date_time", "home_team", "away_team", "location", "city", "seat_level", "seat_section", "seat_row", "seat", "ticket_price", "ticketholder") as select t.id as ticket_id
, e.event_id
, e.sport
, e.event_date_time
, e.home_team
, e.away_team
, e.location
, e.city
, t.seat_level
, t.seat_section
, t.seat_row
, t.seat
, t.ticket_price
, p.full_name as "ticketholder"
from sporting_event_info e, sporting_event_ticket t
left outer join person p on (t.ticketholder_id = p.id)
where t.sporting_event_id = e.event_id;/* dmap converted statement end */
-- estimed cost of view [ sporting_event_ticket_info ]: 1.00;
