-- dmap_object_gen_tag : type : type name : pkg_global_var_test_1.emp_data_tbl_row
set search_path = yoda,oracle,dmap_extension,public;
create or replace type pkg_global_var_test_1.emp_data_tbl_row as table of_dmap_rowtype employees%rowtype;
