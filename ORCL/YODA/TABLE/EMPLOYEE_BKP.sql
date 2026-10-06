-- dmap_object_gen_tag : type : table name : employee_bkp
set search_path = yoda,oracle,dmap_extension,public;
create table "employee_bkp"  (
emp_id numeric,
emp_name varchar(20),
email_id varchar(20),
date_of_birth timestamp(0),
joining_date timestamp(0),
salary decimal(10, 2),
comm decimal(10, 2),
department varchar(10),
mobile_no numeric,
address varchar(20)
) ;
