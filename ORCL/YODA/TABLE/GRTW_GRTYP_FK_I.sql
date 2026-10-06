-- dmap_object_gen_tag : type : index name : grtw_grtyp_fk_i
set search_path = yoda,oracle,dmap_extension,public;
create index grtw_grtyp_fk_i on grade_type_weight (grade_type_code);
