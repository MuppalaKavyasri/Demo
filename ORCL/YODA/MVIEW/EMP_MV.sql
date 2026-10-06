-- dmap_object_gen_tag : type : materialized view name : emp_mv
set search_path = yoda,oracle,dmap_extension,public;
create materialized view emp_mv as
select * from course@db1.world;
