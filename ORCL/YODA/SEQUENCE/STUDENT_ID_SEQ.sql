-- dmap_object_gen_tag : type : sequence name : student_id_seq
set search_path = yoda,oracle,dmap_extension,public;
create sequence "student_id_seq"  increment 1 minvalue 1 no maxvalue start 401;
