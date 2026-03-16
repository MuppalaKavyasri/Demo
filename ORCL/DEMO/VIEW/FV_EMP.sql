-- dmap_object_gen_tag : type : view name : fv_emp
set search_path = demo,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "fv_emp"  ("empno", "ename", "job", "mgr", "hiredate", "sal", "comm", "deptno") as select empno,
ename,
job,
mgr,
hiredate,
sal,
comm,
deptno
from demo.emp;/* dmap converted statement end */
-- estimed cost of view [ fv_emp ]: 1.00;
