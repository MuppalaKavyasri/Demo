-- dmap_object_gen_tag : type : table name : nfl_stadium_data
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create table "nfl_stadium_data"  (
stadium varchar(60),
seating_capacity numeric,
"location" varchar(40),
surface varchar(80),
roof varchar(30),
team varchar(40),
opened varchar(10),
sport_location_id numeric
) ;/* dmap converted statement end */
