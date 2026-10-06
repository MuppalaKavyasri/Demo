-- dmap_object_gen_tag : type : table name : range_partition_table
set search_path = yoda,oracle,dmap_extension,public;
create table "range_partition_table"  (
invoice_no numeric not null,
invoice_date timestamp(0) not null,
comments varchar(500)
) partition by range (
invoice_date
) ;
-- dmap_object_gen_tag : type : alter table name : range_partition_table
set search_path = yoda,oracle,dmap_extension,public;
alter table range_partition_table alter column invoice_no set not null;
-- dmap_object_gen_tag : type : alter table name : range_partition_table
set search_path = yoda,oracle,dmap_extension,public;
alter table range_partition_table alter column invoice_date set not null;
