-- dmap_object_gen_tag : type : type name : department_t
set search_path = demo,oracle,dmap_extension,public;
create type "department_t"  as (deptno numeric(10),dname char(30));
