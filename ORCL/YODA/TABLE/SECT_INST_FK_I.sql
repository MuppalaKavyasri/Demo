-- dmap_object_gen_tag : type : index name : sect_inst_fk_i
set search_path = yoda,oracle,dmap_extension,public;
create index sect_inst_fk_i on section (instructor_id);
