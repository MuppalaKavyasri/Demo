-- dmap_object_gen_tag : type : table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
create table "sporting_event_ticket"  (
id numeric not null,
sporting_event_id numeric not null,
sport_location_id numeric not null,
seat_level numeric(1) not null,
seat_section varchar(15) not null,
seat_row varchar(10) not null,
seat varchar(10) not null,
ticketholder_id numeric,
ticket_price decimal(8, 2) not null
) ;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket add constraint sporting_event_ticket_pk primary key (id);
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket alter column id set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket alter column sporting_event_id set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket alter column sport_location_id set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket alter column seat_level set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket alter column seat_section set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket alter column seat_row set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket alter column seat set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket alter column ticket_price set not null;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket add constraint set_person_id foreign key (ticketholder_id) references person(id) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket add constraint set_seat_fk foreign key (sport_location_id,seat_level,seat_section,seat_row,seat) references seat(sport_location_id,seat_level,seat_section,seat_row,seat) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : sporting_event_ticket
set search_path = yoda,oracle,dmap_extension,public;
alter table sporting_event_ticket add constraint set_sporting_event_fk foreign key (sporting_event_id) references sporting_event(id) on delete no action not deferrable initially immediate;
