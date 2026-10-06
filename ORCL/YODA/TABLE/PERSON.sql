-- dmap_object_gen_tag : type : table name : person
set search_path = yoda,oracle,dmap_extension,public;
create table "person"  (
id numeric not null,
full_name varchar(60) not null,
last_name varchar(30),
first_name varchar(30)
) ;
-- dmap_object_gen_tag : type : alter table name : person
set search_path = yoda,oracle,dmap_extension,public;
alter table person add constraint person_pk primary key (id);
-- dmap_object_gen_tag : type : alter table name : person
set search_path = yoda,oracle,dmap_extension,public;
alter table person alter column id set not null;
-- dmap_object_gen_tag : type : alter table name : person
set search_path = yoda,oracle,dmap_extension,public;
alter table person alter column full_name set not null;
