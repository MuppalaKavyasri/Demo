-- dmap_object_gen_tag : type : table name : sport_division
set search_path = yoda,oracle,dmap_extension,public;
create table "sport_division"  (
sport_type_name varchar(15) not null,
sport_league_short_name varchar(10) not null,
short_name varchar(10) not null,
long_name varchar(60),
description varchar(120)
) ;
-- dmap_object_gen_tag : type : alter table name : sport_division
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_division add constraint sport_division_pk primary key (sport_type_name,sport_league_short_name,short_name);
-- dmap_object_gen_tag : type : alter table name : sport_division
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_division alter column sport_type_name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_division
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_division alter column sport_league_short_name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_division
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_division alter column short_name set not null;
-- dmap_object_gen_tag : type : alter table name : sport_division
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_division add constraint sd_sport_league_fk foreign key (sport_league_short_name) references sport_league(short_name) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : sport_division
set search_path = yoda,oracle,dmap_extension,public;
alter table sport_division add constraint sd_sport_type_fk foreign key (sport_type_name) references sport_type(name) on delete no action not deferrable initially immediate;
