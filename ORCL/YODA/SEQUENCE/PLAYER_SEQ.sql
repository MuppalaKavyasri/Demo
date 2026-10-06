-- dmap_object_gen_tag : type : sequence name : player_seq
set search_path = yoda,oracle,dmap_extension,public;
create sequence "player_seq"  increment 10 minvalue 1 no maxvalue start 51601 cache 20;
