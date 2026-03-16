-- dmap_object_gen_tag : type : type name : dept_wise_employee_first_names
set search_path = demo,oracle,dmap_extension,public;
create type "dept_wise_employee_first_names"  as (dept_wise_employee_first_names varchar(100)[]);
