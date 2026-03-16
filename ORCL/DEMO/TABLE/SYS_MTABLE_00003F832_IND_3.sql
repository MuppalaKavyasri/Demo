-- dmap_object_gen_tag : type : index name : sys_mtable_00003f832_ind_3
set search_path = demo,oracle,dmap_extension,public;
create index sys_mtable_00003f832_ind_3 on sys_import_schema_01 (object_schema, object_name, object_type, partition_name, subpartition_name);
CREATE INDEX sys_mtable_00003f832_ind_3 ON demo."sys_import_schema_01" (object_schema,object_name,object_type,partition_name,subpartition_name);
