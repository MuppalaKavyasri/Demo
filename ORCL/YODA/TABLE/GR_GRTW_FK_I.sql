-- dmap_object_gen_tag : type : index name : gr_grtw_fk_i
set search_path = yoda,oracle,dmap_extension,public;
create index gr_grtw_fk_i on grade (section_id, grade_type_code);
