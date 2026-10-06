-- dmap_object_gen_tag : type : view name : full_text_search_view
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "full_text_search_view"  ("id", "st_id", "cl_trn_data", "amount", "currency", "ip_address", "search_data", "creation_date", "modification_date", "lk_dt", "locked_by", "form_of_payment", "payment_for_service", "discriminator", "r") as select id, st_id, cl_trn_data, amount, currency, ip_address, search_data, creation_date, modification_date, lk_dt, locked_by, form_of_payment, payment_for_service, discriminator, r  from (
select id,st_id,cl_trn_data,amount,currency,ip_address,search_data,creation_date,modification_date,
lk_dt,locked_by,form_of_payment,payment_for_service,discriminator,
row_number() over ( order by  score(1) desc) r from full_text_search_tbl
where discriminator = 'PO'
and creation_date >= '10/09/21'
and creation_date <= '18/09/21'
and contains(search_data,'ET5B5H',1)>0
) alias4
where r between  0 and 200;/* dmap converted statement end */
-- estimed cost of view [ full_text_search_view ]: 3.00;
