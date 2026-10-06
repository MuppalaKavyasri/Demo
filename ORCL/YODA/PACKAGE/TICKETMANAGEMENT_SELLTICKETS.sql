create or replace procedure yoda.ticketmanagement_selltickets (person_id numeric, event_id numeric, quantity numeric default 1) as $body$
declare
-- pgv moved types start
-- pgv moved types end
p_person_id person.id%type := person_id;
p_event_id sporting_event.id%type := event_id;
p_quantity numeric := quantity;
r_seat_level   sporting_event_ticket.seat_level%type;
r_seat_section sporting_event_ticket.seat_section%type;
r_seat_row     sporting_event_ticket.seat_row%type;
event_rec ticketmanagement_eventrectype;
adjacent_seats cursor(p_seat_level numeric, p_seat_section varchar, p_seat_row varchar) for
select * from sporting_event_ticket
where sporting_event_id = p_event_id
and   seat_level = p_seat_level
and   seat_section = p_seat_section
and   seat_row = p_seat_row
order by  seat_level, seat_section, seat_row
for update of ticketholder_id;
cur_ticket sporting_event_ticket%rowtype;
--dmap conversion comment: global temp variables moved as local temp variables
g_min_person_id_temp numeric;
g_max_person_id_temp numeric;
--dmap conversion comment: declaration boundary ends
begin 

call yoda.ticketmanagement_dmap_test_onetime_block_init();
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'TICKETMANAGEMENT');
--dmap conversion comment: gtt declaration added
event_rec := ticketmanagement_get_event_details(p_event_id);
begin
select seat_level, seat_section, seat_row
into strict  r_seat_level, r_seat_section, r_seat_row
from (select seat_level,seat_section,seat_row
from sporting_event_ticket
where sporting_event_id = p_event_id
and   nullif(ticketholder_id::text, '') is null
group by seat_level,seat_section,seat_row
having count(*) >= p_quantity) alias1 limit 1;
exception when no_data_found then
raise exception 'not_enough_seats' using errcode = '50001';
end;
open adjacent_seats(r_seat_level,r_seat_section,r_seat_row);
for i in 1..p_quantity loop
fetch adjacent_seats into cur_ticket;
update sporting_event_ticket
set    ticketholder_id = p_person_id
where current of adjacent_seats;
insert into ticket_purchase_hist(sporting_event_ticket_id, purchased_by_id, transaction_date_time, purchase_price)
values (cur_ticket.id, p_person_id, clock_timestamp(), cur_ticket.ticket_price);
end loop;/* dmap converted statement start */
/* commit; */
exception when sqlstate '50001' then
perform dbms_output.put_line( concat('sorry, there aren''t ', p_quantity , ' adjacent seats for event:')) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('   ', event_rec.home_team_name , ' VS ' , event_rec.away_team_name , '   (' , event_rec.sport_name , ')')  );/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('   ', event_rec.home_field , ':  ' , to_char(event_rec.date_time,'DD-MON-YYYY HH:MI'))) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
