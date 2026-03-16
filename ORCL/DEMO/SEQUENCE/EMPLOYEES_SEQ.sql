-- dmap_object_gen_tag : type : sequence name : employees_seq
set search_path = demo,oracle,dmap_extension,public;
create sequence "employees_seq"  increment 1 minvalue 0 no maxvalue start 40 cache 20;
