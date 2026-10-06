-- dmap_object_gen_tag : type : table name : name_data
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create table "name_data"  (
name_type varchar(15) not null,
"name" varchar(45) not null
) ;/* dmap converted statement end */
-- dmap_object_gen_tag : type : alter table name : name_data
set search_path = yoda,oracle,dmap_extension,public;
alter table name_data add constraint name_data_pk primary key (name_type,name);
-- dmap_object_gen_tag : type : alter table name : name_data
set search_path = yoda,oracle,dmap_extension,public;
alter table name_data alter column name_type set not null;
-- dmap_object_gen_tag : type : alter table name : name_data
set search_path = yoda,oracle,dmap_extension,public;
alter table name_data alter column name set not null;
