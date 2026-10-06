-- dmap_object_gen_tag : type : table name : orders_m
set search_path = yoda,oracle,dmap_extension,public;
create table "orders_m"  (
id numeric not null,
country_code varchar(5),
customer_id numeric,
order_date timestamp(0),
order_total decimal(8, 2)
) partition by list (
(country_code::text)
) ;
-- dmap_object_gen_tag : type : alter table name : orders_m
set search_path = yoda,oracle,dmap_extension,public;
alter table orders_m add constraint orders_m_pk primary key (id,country_code);
