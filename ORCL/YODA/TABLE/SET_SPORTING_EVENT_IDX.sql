-- dmap_object_gen_tag : type : index name : set_sporting_event_idx
set search_path = yoda,oracle,dmap_extension,public;
create index set_sporting_event_idx on sporting_event_ticket (sporting_event_id);
