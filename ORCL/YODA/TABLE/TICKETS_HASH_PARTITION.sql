-- dmap_object_gen_tag : type : table name : tickets_hash_partition
set search_path = yoda,oracle,dmap_extension,public;
create table "tickets_hash_partition"  (
ticket_no numeric(18) not null,
ticket_date timestamp(0) not null,
reason varchar(20)
) partition by hash (
ticket_no
) ;
-- dmap_object_gen_tag : type : alter table name : tickets_hash_partition
set search_path = yoda,oracle,dmap_extension,public;
alter table tickets_hash_partition add primary key (ticket_no);
-- dmap_object_gen_tag : type : alter table name : tickets_hash_partition
set search_path = yoda,oracle,dmap_extension,public;
alter table tickets_hash_partition alter column ticket_no set not null;
-- dmap_object_gen_tag : type : alter table name : tickets_hash_partition
set search_path = yoda,oracle,dmap_extension,public;
alter table tickets_hash_partition alter column ticket_date set not null;
