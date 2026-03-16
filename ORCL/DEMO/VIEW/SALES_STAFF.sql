-- dmap_object_gen_tag : type : view name : sales_staff
set search_path = demo,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "sales_staff"  ("empno", "ename", "deptno") as select empno,  ename,  deptno
from emp
where deptno = 30
with check option;/* dmap converted statement end */
-- estimed cost of view [ sales_staff ]: 1.00;
