create or replace procedure demo."decode_proc4"  (id numeric) as $body$
declare
v_name varchar(20);
v_empno varchar(50);
v_deptno numeric;
v_dname varchar(50);
begin
select e.ename,
case when e.empno=7839 then  'KING' when e.empno=10001 then  'Microsoft' when e.empno=10002 then  'Hewlett Packard'  else 'Gateway' end  result,
case when  d.deptno=10 then  'NEW YORK'  when  d.deptno=20 then  'DALLAS' when  d.deptno=30 then  'CHICAGO' when  d.deptno=40 then  'BOSTON' end ,
d.dname
into strict v_name,v_empno,v_deptno,v_dname
from demo.employee e,
demo.dept d
where 1=1
and e.deptno = d.deptno
and e.deptno = id;/* dmap converted statement start */
perform dbms_output.put_line( concat(v_name, v_empno, v_deptno, v_dname)) ;/* dmap converted statement end */
exception
when others then
null;end;
$body$
language plpgsql
;
