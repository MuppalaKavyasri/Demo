-- dmap_object_gen_tag : type : view name : emp_dept_oj1
set search_path = demo,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "emp_dept_oj1"  ("empno", "ename", "deptno", "loc", "dname") as select e.empno, e.ename, e.deptno,  loc,  d.dname
from emp_v e
left outer join dept d on (e.deptno = d.deptno);/* dmap converted statement end */
-- estimed cost of view [ emp_dept_oj1 ]: 1.00;
