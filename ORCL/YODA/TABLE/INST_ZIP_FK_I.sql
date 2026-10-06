-- dmap_object_gen_tag : type : index name : inst_zip_fk_i
set search_path = yoda,oracle,dmap_extension,public;
create index inst_zip_fk_i on instructor (zip);
