-- dmap_object_gen_tag : type : table name : bar
set search_path = yoda,oracle,dmap_extension,public;
create table "bar"  (
foo numeric not null,
bar numeric not null
) ;
-- dmap_object_gen_tag : type : alter table name : bar
set search_path = yoda,oracle,dmap_extension,public;
alter table bar add constraint bar_pk primary key (foo,bar);
