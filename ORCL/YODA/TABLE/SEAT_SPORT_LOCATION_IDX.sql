-- dmap_object_gen_tag : type : index name : seat_sport_location_idx
set search_path = yoda,oracle,dmap_extension,public;
create index seat_sport_location_idx on seat (sport_location_id);
