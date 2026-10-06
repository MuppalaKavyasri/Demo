create or replace procedure yoda."generate_tickets"  (p_event_id numeric) as $body$
declare
event_rec record;
event_cur cursor(p_id numeric) for
select id,location_id
from   sporting_event
where  id = p_id;
standard_price decimal(6,2);
begin 

standard_price := dbms_random.value(30,50);
for event_rec in select * from event_cur(p_event_id) loop
insert /*+ append */ into sporting_event_ticket(id,sporting_event_id,sport_location_id,seat_level,seat_section,seat_row,seat,ticket_price)
select nextval('sporting_event_ticket_seq')
,sporting_event.id
,seat.sport_location_id
,seat.seat_level
,seat.seat_section
,seat.seat_row
,seat.seat
,(case
when seat.seat_type = 'luxury' then 3*standard_price
when seat.seat_type = 'premium' then 2*standard_price
when seat.seat_type = 'standard' then standard_price
when seat.seat_type = 'sub-standard' then 0.8*standard_price
when seat.seat_type = 'obstructed' then 0.5*standard_price
when seat.seat_type = 'standing' then 0.5*standard_price
end ) ticket_price
from sporting_event
,seat
where sporting_event.location_id = seat.sport_location_id
and   sporting_event.id = event_rec.id;
end loop;end;
$body$
language plpgsql
SECURITY DEFINER
;
