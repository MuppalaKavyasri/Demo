-- dmap_object_gen_tag : type : index name : sys_mtable_00003f832_ind_5
set search_path = demo,oracle,dmap_extension,public;
create index sys_mtable_00003f832_ind_5 on sys_import_schema_01 (original_object_schema, original_object_name, partition_name);
CREATE INDEX sys_mtable_00003f832_ind_5 ON demo."sys_import_schema_01" (original_object_schema,original_object_name,partition_name);
