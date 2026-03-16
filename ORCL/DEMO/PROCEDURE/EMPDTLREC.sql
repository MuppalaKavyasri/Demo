-- dmap_object_gen_tag : type : procedure name : empdtlrec;
set search_path = demo,oracle,dmap_extension,public;
drop type  if exists empdtlrec;
-- dmap_object_gen_tag : type : procedure name : DEMO.empdtlrec
set search_path = demo,oracle,dmap_extension,public;
create type DEMO.empdtlrec as (empno  numeric(4),ename  varchar(20),deptno  numeric(2));
