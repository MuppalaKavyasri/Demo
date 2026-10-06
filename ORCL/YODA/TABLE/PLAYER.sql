-- dmap_object_gen_tag : type : table name : player
set search_path = yoda,oracle,dmap_extension,public;
create table "player"  (
id numeric not null,
sport_team_id numeric not null,
last_name varchar(30),
first_name varchar(30),
full_name varchar(30)
) ;
-- dmap_object_gen_tag : type : alter table name : player
set search_path = yoda,oracle,dmap_extension,public;
alter table player add constraint player_pk primary key (id);
-- dmap_object_gen_tag : type : alter table name : player
set search_path = yoda,oracle,dmap_extension,public;
alter table player alter column id set not null;
-- dmap_object_gen_tag : type : alter table name : player
set search_path = yoda,oracle,dmap_extension,public;
alter table player alter column sport_team_id set not null;
-- dmap_object_gen_tag : type : alter table name : player
set search_path = yoda,oracle,dmap_extension,public;
alter table player add constraint sport_team_fk foreign key (sport_team_id) references sport_team(id) on delete no action not deferrable initially immediate;
