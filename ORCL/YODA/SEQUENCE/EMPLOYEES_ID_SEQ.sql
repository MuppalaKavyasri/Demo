-- dmap_object_gen_tag : type : sequence name : employees_id_seq
set search_path = yoda,oracle,dmap_extension,public;
create sequence "employees_id_seq"  increment 1 minvalue 1 no maxvalue start 3;
