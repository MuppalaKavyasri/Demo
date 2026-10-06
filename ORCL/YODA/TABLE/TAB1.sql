-- dmap_object_gen_tag : type : table name : tab1
set search_path = yoda,oracle,dmap_extension,public;
create table "tab1"  (
id numeric not null,
parent_id numeric
) ;
-- dmap_object_gen_tag : type : alter table name : tab1
set search_path = yoda,oracle,dmap_extension,public;
alter table tab1 add constraint tab1_pk primary key (id);
-- dmap_object_gen_tag : type : alter table name : tab1
set search_path = yoda,oracle,dmap_extension,public;
alter table tab1 add constraint tab1_tab1_fk foreign key (parent_id) references tab1(id) on delete no action not deferrable initially immediate;
