-- dmap_object_gen_tag : type : index name : md_app_file_type_idx
set search_path = demo,oracle,dmap_extension,public;
create index md_app_file_type_idx on md_applicationfiles (type, id);
CREATE INDEX md_app_file_type_idx ON demo."md_applicationfiles" (type,id);
