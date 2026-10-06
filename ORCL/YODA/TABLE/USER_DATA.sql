-- dmap_object_gen_tag : type : table name : user_data
set search_path = yoda,oracle,dmap_extension,public;
create table "user_data"  (
id numeric(10) not null,
first_name varchar(40) not null,
last_name varchar(40) not null,
gender varchar(1),
dob timestamp(0)
) ;
-- dmap_object_gen_tag : type : alter table name : user_data
set search_path = yoda,oracle,dmap_extension,public;
alter table user_data alter column id set not null;
-- dmap_object_gen_tag : type : alter table name : user_data
set search_path = yoda,oracle,dmap_extension,public;
alter table user_data alter column first_name set not null;
-- dmap_object_gen_tag : type : alter table name : user_data
set search_path = yoda,oracle,dmap_extension,public;
alter table user_data alter column last_name set not null;
