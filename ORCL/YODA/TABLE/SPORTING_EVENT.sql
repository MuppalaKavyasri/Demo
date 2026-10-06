-- dmap_object_gen_tag : type : table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
create table "sporting_event"  (
id numeric not null,
sport_type_name varchar(15) not null,
home_team_id numeric not null,
away_team_id numeric not null,
location_id numeric not null,
start_date_time timestamp(0) not null,
sold_out numeric(1) not null default 0
) ;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event add constraint sporting_event_pk primary key (id);
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event add constraint chk_sold_out check (sold_out in (0,1));
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event alter column id set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event alter column sport_type_name set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event alter column home_team_id set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event alter column away_team_id set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event alter column location_id set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event alter column start_date_time set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event alter column sold_out set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event add constraint se_away_team_id_fk foreign key (away_team_id) references sport_team(id) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event add constraint se_home_team_id_fk foreign key (home_team_id) references sport_team(id) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event add constraint se_location_id_fk foreign key (location_id) references sport_location(id) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : sporting_event
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event add constraint se_sport_type_fk foreign key (sport_type_name) references sport_type(name) on delete no action not deferrable initially immediate;
