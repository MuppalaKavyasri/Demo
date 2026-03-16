-- dmap_object_gen_tag : type : index name : sys_mtable_00001902e_ind_2
set search_path = demo,oracle,dmap_extension,public;
create index sys_mtable_00001902e_ind_2 on "imp_sd_274-01_07_52" (
object_schema,
original_object_name,
object_type
);
CREATE INDEX sys_mtable_00001902e_ind_2 ON demo."imp_sd_274-01_07_52" (object_schema,original_object_name,object_type);
