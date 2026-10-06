-- dmap_object_gen_tag : type : index name : enr_sect_fk_i
set search_path = yoda,oracle,dmap_extension,public;
create index enr_sect_fk_i on enrollment (section_id);
