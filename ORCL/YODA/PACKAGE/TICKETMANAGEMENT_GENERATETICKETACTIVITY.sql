create or replace procedure yoda.ticketmanagement_generateticketactivity (transaction_delay numeric, max_transactions numeric default 1000) as $body$
declare
-- pgv moved types start
-- pgv moved types end
txn_count numeric := 0;
--dmap conversion comment: global temp variables moved as local temp variables
g_min_person_id_temp numeric;
g_max_person_id_temp numeric;
--dmap conversion comment: declaration boundary ends
begin 

call yoda.ticketmanagement_dmap_test_onetime_block_init();
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'TICKETMANAGEMENT');
--dmap conversion comment: gtt declaration added
while txn_count < max_transactions loop
call ticketmanagement_sellrandomtickets();
txn_count := txn_count +1;/* dmap converted statement start */
select pg_sleep (transaction_delay);/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
