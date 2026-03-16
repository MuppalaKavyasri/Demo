-- dmap_object_gen_tag : type : sequence name : user_register_seq
set search_path = demo,oracle,dmap_extension,public;
create sequence "user_register_seq"  increment 1 minvalue 1 no maxvalue start 1 cache 20;
