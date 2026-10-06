-- dmap_object_gen_tag : type : table name : orders
set search_path = yoda,oracle,dmap_extension,public;
create table "orders"  (
order_id numeric(12) not null,
order_date timestamp(0),
order_mode varchar(8),
customer_id numeric(6),
order_status numeric(2),
order_total decimal(8, 2),
sales_rep_id numeric(6),
promotion_id numeric(6)
) partition by range (
order_date
) ;
-- dmap_object_gen_tag : type : alter table name : orders
set search_path = yoda,oracle,dmap_extension,public;
alter table orders add constraint orders_pk primary key (order_id,order_date);
