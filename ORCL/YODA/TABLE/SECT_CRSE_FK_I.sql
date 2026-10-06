-- dmap_object_gen_tag : type : index name : sect_crse_fk_i
set search_path = yoda,oracle,dmap_extension,public;
create index sect_crse_fk_i on section (course_no);
