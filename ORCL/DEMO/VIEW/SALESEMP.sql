-- dmap_object_gen_tag : type : view name : salesemp
set search_path = demo,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "salesemp"  ("empno", "ename", "hiredate", "sal", "comm") as select empno,  ename,  hiredate,  sal,  comm  from emp where job = 'SALESMAN';/* dmap converted statement end */
-- estimed cost of view [ salesemp ]: 1.00;
