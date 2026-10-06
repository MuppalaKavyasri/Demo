-- dmap_object_gen_tag : type : sequence name : t1_seq
set search_path = yoda,oracle,dmap_extension,public;
create sequence "t1_seq"  increment 1 minvalue 1 no maxvalue start 1 cache 20;
