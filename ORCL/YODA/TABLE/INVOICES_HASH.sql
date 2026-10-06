-- dmap_object_gen_tag : type : table name : invoices_hash
set search_path = yoda,oracle,dmap_extension,public;
create table "invoices_hash"  (
invoice_no numeric not null,
invoice_date timestamp(0) not null,
comments varchar(500)
) partition by hash (
invoice_no
) ;
-- dmap_object_gen_tag : type : alter table name : invoices_hash
set search_path = yoda,oracle,dmap_extension,public;
alter table invoices_hash alter column invoice_no set not null;
-- dmap_object_gen_tag : type : alter table name : invoices_hash
set search_path = yoda,oracle,dmap_extension,public;
alter table invoices_hash alter column invoice_date set not null;
