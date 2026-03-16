create or replace procedure demo."dbms_output_proc3"  ( id numeric ) as $body$
declare
c1 cursor for
select e.empno,e.ename,d.dname,d.loc
from demo.employee e, demo.dept d
where 1=1
and e.deptno = d.deptno
and e.deptno = id;
begin
/* dmap converted statement start */
for row in c1
loop
perform dbms_output.put_line( concat('empno', 'ename' , 'dname' , 'loc')) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
