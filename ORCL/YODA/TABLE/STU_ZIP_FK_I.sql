-- dmap_object_gen_tag : type : index name : stu_zip_fk_i
set search_path = yoda,oracle,dmap_extension,public;
create index stu_zip_fk_i on student (zip);
