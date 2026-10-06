-- dmap_object_gen_tag : type : table name : seat_type
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create table "seat_type"  (
"name" varchar(15) not null,
description varchar(120),
relative_quality numeric(2)
) ;/* dmap converted statement end */
-- dmap_object_gen_tag : type : alter table name : seat_type
set search_path = yoda,oracle,dmap_extension,public;
alter table seat_type add constraint st_seat_type_pk primary key (name);
-- dmap_object_gen_tag : type : alter table name : seat_type
set search_path = yoda,oracle,dmap_extension,public;
alter table seat_type alter column name set not null;
