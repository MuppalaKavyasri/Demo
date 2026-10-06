-- dmap_object_gen_tag : type : table name : sport_location
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create table "sport_location"  (
id numeric(3) not null,
"name" varchar(60) not null,
city varchar(60) not null,
seating_capacity numeric(7),
levels numeric(1),
sections numeric(4)
) ;/* dmap converted statement end */
-- dmap_object_gen_tag : type : alter table name : sport_location
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_location add constraint sport_location_pk primary key (id);
-- dmap_object_gen_tag : type : alter table name : sport_location
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_location alter column id set not null;
-- dmap_object_gen_tag : type : alter table name : sport_location
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_location alter column name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_location
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_location alter column city set not null;
