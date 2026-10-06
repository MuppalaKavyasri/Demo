-- dmap_object_gen_tag : type : table name : interval_sales
set search_path = yoda,oracle,dmap_extension,public;
create table "interval_sales"  (
prod_id numeric(6),
cust_id numeric,
time_id timestamp(0),
channel_id char(1),
promo_id numeric(6),
quantity_sold numeric(3),
amount_sold decimal(10, 2)
) partition by range (
time_id
) ;
