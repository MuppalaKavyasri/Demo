create or replace procedure yoda.ticketmanagement_generatetransferactivity (transaction_delay numeric default 5, max_transactions numeric default 100) as $body$
declare
-- pgv moved types start
-- pgv moved types end
txn_count numeric := 0;
min_tik_id sporting_event_ticket.id%type;
max_tik_id sporting_event_ticket.id%type;
tik_id     sporting_event_ticket.id%type;
new_ticketholder person.id%type;
xfer_all  boolean;
chg_price boolean;
new_price sporting_event_ticket.ticket_price%type;
--dmap conversion comment: global temp variables moved as local temp variables
g_min_person_id_temp numeric;
g_max_person_id_temp numeric;
--dmap conversion comment: declaration boundary ends
begin 

call yoda.ticketmanagement_dmap_test_onetime_block_init();
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'TICKETMANAGEMENT');
--dmap conversion comment: gtt declaration added
while txn_count < max_transactions loop
select min(sporting_event_ticket_id), max(sporting_event_ticket_id)
into strict   min_tik_id, max_tik_id
from  ticket_purchase_hist;
select max(sporting_event_ticket_id)
into strict   tik_id
from   ticket_purchase_hist
where  sporting_event_ticket_id <= dbms_random.value(min_tik_id,max_tik_id);
new_ticketholder := trunc(dbms_random.value(dmap_extension.f_dmap_get_pkg_var('YODA' , 'TICKETMANAGEMENT', 'G_MIN_PERSON_ID', 'number', 'Y')::numeric,dmap_extension.f_dmap_get_pkg_var('YODA' , 'TICKETMANAGEMENT', 'G_MAX_PERSON_ID', 'number', 'Y')::numeric));
xfer_all := (round(dbms_random.value(1::numeric,5)) < 5);
new_price := null;
chg_price := (round(dbms_random.value(1,3)) = 1);
if chg_price  then
select dbms_random.value(0.8,1.2) * ticket_price into strict new_price
from   sporting_event_ticket
where  id = tik_id;
end if;
call ticketmanagement_transferticket(tik_id, new_ticketholder, xfer_all, new_price);
txn_count := txn_count +1;/* dmap converted statement start */
select pg_sleep (transaction_delay);/* dmap converted statement end */
end loop;
exception when no_data_found then
perform dbms_output.put_line('No tickets available to transfer.');end;
$body$
language plpgsql
;
