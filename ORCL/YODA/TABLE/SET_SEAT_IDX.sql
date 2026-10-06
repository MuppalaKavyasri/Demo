-- dmap_object_gen_tag : type : index name : set_seat_idx
set search_path = yoda,oracle,dmap_extension,public;
create index set_seat_idx on sporting_event_ticket (sport_location_id, seat_level, seat_section, seat_row, seat);
