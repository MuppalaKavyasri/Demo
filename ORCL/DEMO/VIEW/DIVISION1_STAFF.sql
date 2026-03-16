-- dmap_object_gen_tag : type : view name : division1_staff
set search_path = demo,oracle,dmap_extension,public;
 /* dmap converted statement start */
create or replace view "division1_staff"  ("ename", "empno", "job", "dname") as select ename,  empno,  job,  dname
from emp, dept
where  emp.deptno in (10, 30)
and emp.deptno = dept.deptno;
 /* dmap converted statement end */
-- estimed cost of view [ division1_staff ]: 1.00;
