-- dmap_object_gen_tag : type : index name : crse_crse_fk_i
set search_path = yoda,oracle,dmap_extension,public;
create index crse_crse_fk_i on course (prerequisite);
