-- dmap_object_gen_tag : type : view name : fv_dept
set search_path = demo,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "fv_dept"  ("deptno", "dname", "loc") as select deptno, dname, loc  from demo.dept;/* dmap converted statement end */
-- estimed cost of view [ fv_dept ]: 1.00;
