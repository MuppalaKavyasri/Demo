-- dmap_object_gen_tag : type : index name : set_ticketholder_idx
set search_path = yoda,oracle,dmap_extension,public;
create index set_ticketholder_idx on sporting_event_ticket (ticketholder_id);
