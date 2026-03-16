-- dmap_object_gen_tag : type : view name : emp_view
set search_path = demo,oracle,dmap_extension,public;
 /* dmap converted statement start */
create or replace view "emp_view"  ("ename", "dept_no", "loc") as select emp.ename, dept.deptno, dept.loc
from emp,dept
where  emp.deptno=dept.deptno;
 /* dmap converted statement end */
-- estimed cost of view [ emp_view ]: 1.00;
