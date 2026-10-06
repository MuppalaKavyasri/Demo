-- dmap_object_gen_tag : type : sequence name : sporting_event_seq
set search_path = yoda,oracle,dmap_extension,public;
create sequence "sporting_event_seq"  increment 10 minvalue 1 no maxvalue start 11601 cache 20;
