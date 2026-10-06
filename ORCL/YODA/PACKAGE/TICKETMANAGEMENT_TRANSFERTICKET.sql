create or replace procedure yoda.ticketmanagement_transferticket (ticket_id numeric, new_ticketholder_id numeric, transfer_all boolean default false, price numeric default null) as $body$
declare
xrec record;
-- pgv moved types start
-- pgv moved types end
p_ticket_id           numeric := ticket_id;
p_new_ticketholder_id numeric := new_ticketholder_id;
p_price               numeric := price;
xferall               numeric := 0;
old_ticketholder_id   numeric;
last_txn_date         timestamp(0);
txfr_cur cursor(p_purchased_by numeric, p_txn_date_time timestamp(0)) is
select * from ticket_purchase_hist
where  purchased_by_id = p_purchased_by
and    transaction_date_time = p_txn_date_time;
--dmap conversion comment: global temp variables moved as local temp variables
g_min_person_id_temp numeric;
g_max_person_id_temp numeric;
--dmap conversion comment: declaration boundary ends
begin 

call yoda.ticketmanagement_dmap_test_onetime_block_init();
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'TICKETMANAGEMENT');
--dmap conversion comment: gtt declaration added
if transfer_all then
xferall := 1;
end if;
select max(h.transaction_date_time) as transaction_date_time
,t.ticketholder_id as ticketholder_id
into strict  last_txn_date, old_ticketholder_id
from   ticket_purchase_hist h
,sporting_event_ticket t
where  t.id = p_ticket_id
and    h.purchased_by_id = t.ticketholder_id
and    ((h.sporting_event_ticket_id = p_ticket_id) or (xferall = 1) )
group by t.ticketholder_id;
for xrec in select * from txfr_cur(old_ticketholder_id, last_txn_date) loop
update sporting_event_ticket
set    ticketholder_id = p_new_ticketholder_id
where  id = xrec.sporting_event_ticket_id;
insert into ticket_purchase_hist(sporting_event_ticket_id, purchased_by_id, transferred_from_id, transaction_date_time, purchase_price)
values (xrec.sporting_event_ticket_id,  p_new_ticketholder_id, old_ticketholder_id, clock_timestamp(), coalesce(p_price,xrec.purchase_price));
end loop;
/* commit; */
exception when others then
rollback;end;
$body$
language plpgsql
;
