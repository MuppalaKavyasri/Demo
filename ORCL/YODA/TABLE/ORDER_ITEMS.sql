-- dmap_object_gen_tag : type : table name : order_items
set search_path = yoda,oracle,dmap_extension,public;
create table "order_items"  (
order_id numeric(12) not null,
line_item_id numeric(3) not null,
product_id numeric(6) not null,
unit_price decimal(8,2),
quantity numeric(8)
) -- unsupported partition type, please check
;
-- dmap_object_gen_tag : type : alter table name : order_items
set search_path = yoda,oracle,dmap_extension,public;
alter table order_items alter column order_id set not null;
-- dmap_object_gen_tag : type : alter table name : order_items
set search_path = yoda,oracle,dmap_extension,public;
alter table order_items alter column line_item_id set not null;
-- dmap_object_gen_tag : type : alter table name : order_items
set search_path = yoda,oracle,dmap_extension,public;
alter table order_items alter column product_id set not null;
