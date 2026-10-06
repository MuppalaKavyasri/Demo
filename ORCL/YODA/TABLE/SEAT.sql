-- dmap_object_gen_tag : type : table name : seat
set search_path = yoda,oracle,dmap_extension,public;
create table "seat"  (
sport_location_id numeric not null,
seat_level numeric(1) not null,
seat_section varchar(15) not null,
seat_row varchar(10) not null,
seat varchar(10) not null,
seat_type varchar(15)
) ;
-- dmap_object_gen_tag : type : alter table name : seat
set search_path = yoda,oracle,dmap_extension,public;
alter table seat add constraint seat_pk primary key (sport_location_id,seat_level,seat_section,seat_row,seat);
-- dmap_object_gen_tag : type : alter table name : seat
set search_path = yoda,oracle,dmap_extension,public;
alter table seat add constraint seat_type_fk foreign key (seat_type) references seat_type(name) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : seat
set search_path = yoda,oracle,dmap_extension,public;
alter table seat add constraint s_sport_location_fk foreign key (sport_location_id) references sport_location(id) on delete no action not deferrable initially immediate;
