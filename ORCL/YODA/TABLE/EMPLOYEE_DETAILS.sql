-- dmap_object_gen_tag : type : table name : employee_details
set search_path = yoda,oracle,dmap_extension,public;
create table "employee_details"  (
employee_id numeric,
employee_name varchar(10),
employee_branch_code varchar(5),
employee_mobile_number numeric,
employee_salary numeric,
employee_comm numeric,
employee_join_date timestamp(0)
) ;
