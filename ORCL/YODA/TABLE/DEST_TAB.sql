-- dmap_object_gen_tag : type : table name : dest_tab
set search_path = yoda,oracle,dmap_extension,public;
create table "dest_tab"  (
object_id numeric not null,
owner varchar(128) not null,
object_name varchar(128) not null,
object_type varchar(23)
) ;
-- dmap_object_gen_tag : type : alter table name : dest_tab
set search_path = yoda,oracle,dmap_extension,public;
alter table dest_tab add constraint dest_tab_pk primary key (object_id);
-- dmap_object_gen_tag : type : alter table name : dest_tab
set search_path = yoda,oracle,dmap_extension,public;
alter table dest_tab alter column object_id set not null;
-- dmap_object_gen_tag : type : alter table name : dest_tab
set search_path = yoda,oracle,dmap_extension,public;
alter table dest_tab alter column owner set not null;
-- dmap_object_gen_tag : type : alter table name : dest_tab
set search_path = yoda,oracle,dmap_extension,public;
alter table dest_tab alter column object_name set not null;
