-- dmap_object_gen_tag : type : table name : hier_test
set search_path = yoda,oracle,dmap_extension,public;
create table "hier_test"  (
emp_no numeric,
ename varchar(5),
job varchar(9),
manager_no numeric
) ;
