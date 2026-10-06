-- dmap_object_gen_tag : type : table name : sport_league
set search_path = yoda,oracle,dmap_extension,public;
create table "sport_league"  (
sport_type_name varchar(15) not null,
short_name varchar(10) not null,
long_name varchar(60) not null,
description varchar(120)
) ;
-- dmap_object_gen_tag : type : alter table name : sport_league
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_league add constraint sport_league_pk primary key (short_name);
-- dmap_object_gen_tag : type : alter table name : sport_league
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_league alter column sport_type_name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_league
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_league alter column short_name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_league
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_league alter column long_name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_league
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_league add constraint sl_sport_type_fk foreign key (sport_type_name) references sport_type(name) on delete no action not deferrable initially immediate;
