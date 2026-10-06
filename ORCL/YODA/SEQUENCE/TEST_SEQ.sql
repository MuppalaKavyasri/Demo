-- dmap_object_gen_tag : type : sequence name : test_seq
set search_path = yoda,oracle,dmap_extension,public;
create sequence "test_seq"  increment 1 minvalue 1 no maxvalue start 1 cache 20;
