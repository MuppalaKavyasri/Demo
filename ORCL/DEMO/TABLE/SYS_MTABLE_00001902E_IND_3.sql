-- dmap_object_gen_tag : type : index name : sys_mtable_00001902e_ind_3
set search_path = demo,oracle,dmap_extension,public;
create index sys_mtable_00001902e_ind_3 on "imp_sd_274-01_07_52" (
object_schema,
object_name,
object_type,
partition_name,
subpartition_name
);
CREATE INDEX sys_mtable_00001902e_ind_3 ON demo."imp_sd_274-01_07_52" (object_schema,object_name,object_type,partition_name,subpartition_name);
