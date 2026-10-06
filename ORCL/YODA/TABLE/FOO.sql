-- dmap_object_gen_tag : type : table name : foo
set search_path = yoda,oracle,dmap_extension,public;
create table "foo"  (
foo numeric not null
) ;
-- dmap_object_gen_tag : type : alter table name : foo
set search_path = yoda,oracle,dmap_extension,public;
alter table foo add constraint foo_pk primary key (foo);
