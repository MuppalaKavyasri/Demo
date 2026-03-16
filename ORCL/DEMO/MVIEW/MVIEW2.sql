-- dmap_object_gen_tag : type : materialized view name : mview2
set search_path = demo,oracle,dmap_extension,public;
create materialized view mview2 as
select emp.empno empno,emp.ename ename,emp.job job,emp.mgr mgr,emp.hiredate hiredate,emp.sal sal,emp.comm comm,emp.deptno deptno from demo.emp emp;
create index sys_c_snap$_324pk_emp on mview2 (empno);
