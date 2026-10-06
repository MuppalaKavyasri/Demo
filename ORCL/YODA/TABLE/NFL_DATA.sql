-- dmap_object_gen_tag : type : table name : nfl_data
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create table "nfl_data"  (
position varchar(5),
player_number numeric(3),
"name" varchar(40),
status varchar(10),
stat1 varchar(10),
stat1_val varchar(10),
stat2 varchar(10),
stat2_val varchar(10),
stat3 varchar(10),
stat3_val varchar(10),
stat4 varchar(10),
stat4_val varchar(10),
team varchar(10)
) ;/* dmap converted statement end */
