-- dmap_object_gen_tag : type : table name : employee_details_new
set search_path = yoda,oracle,dmap_extension,public;
create table "employee_details_new"  (
employee_id numeric,
employee_name varchar(10),
employee_mobile_number numeric,
employee_branch varchar(10),
employee_join_date timestamp(0),
employee_salary numeric,
employee_comm numeric
) ;
