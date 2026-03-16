-- dmap_object_gen_tag : type : materialized view name : mviewmulti
set search_path = demo,oracle,dmap_extension,public;
create materialized view mviewmulti as
select e.empno from demo.emp e,demo.dept d where e.deptno=d.deptno;
