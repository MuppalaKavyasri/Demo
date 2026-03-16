-- dmap_object_gen_tag : type : index name : sys_mtable_00003f832_ind_2
set search_path = demo,oracle,dmap_extension,public;
create index sys_mtable_00003f832_ind_2 on sys_import_schema_01 (object_schema, original_object_name, object_type);
CREATE INDEX sys_mtable_00003f832_ind_2 ON demo."sys_import_schema_01" (object_schema,original_object_name,object_type);
