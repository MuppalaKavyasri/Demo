-- dmap_object_gen_tag : type : view name : emp_v
set search_path = demo,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "emp_v"  ("empno", "ename", "deptno") as select empno,  ename,  deptno
from emp;/* dmap converted statement end */
-- estimed cost of view [ emp_v ]: 1.00;
