-- dmap_object_gen_tag : type : table name : emp_mv
set search_path = yoda,oracle,dmap_extension,public;
create table "emp_mv"  (
course_no numeric(8),
description varchar(50),
cost decimal(9, 2),
prerequisite numeric(8),
created_by varchar(30),
created_date timestamp(0),
modified_by varchar(30),
modified_date timestamp(0)
) ;
