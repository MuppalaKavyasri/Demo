-- dmap_object_gen_tag : type : table name : sport_type
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create table "sport_type"  (
"name" varchar(15) not null,
description varchar(120)
) ;/* dmap converted statement end */
-- dmap_object_gen_tag : type : alter table name : sport_type
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_type add constraint sport_type_pk primary key (name);
-- dmap_object_gen_tag : type : alter table name : sport_type
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_type alter column name set not null;
