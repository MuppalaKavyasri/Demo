-- dmap_object_gen_tag : type : table name : sport_team
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create table "sport_team"  (
id numeric not null,
"name" varchar(30) not null,
abbreviated_name varchar(10),
home_field_id numeric(3),
sport_type_name varchar(15) not null,
sport_league_short_name varchar(10) not null,
sport_division_short_name varchar(10)
) ;/* dmap converted statement end */
-- dmap_object_gen_tag : type : alter table name : sport_team
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_team add constraint sport_team_pk primary key (id);
-- dmap_object_gen_tag : type : alter table name : sport_team
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_team alter column id set not null;
-- dmap_object_gen_tag : type : alter table name : sport_team
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_team alter column name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_team
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_team alter column sport_type_name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_team
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_team alter column sport_league_short_name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_team
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_team add constraint home_field_fk foreign key (home_field_id) references sport_location(id) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : sport_team
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_team add constraint st_sport_type_fk foreign key (sport_type_name) references sport_type(name) on delete no action not deferrable initially immediate;
