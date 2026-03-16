create or replace procedure demo."concat_proc5"  (id numeric) as $body$
declare
pl varchar(50);
v_concat1 varchar(50);
v_concat2 varchar(50);
begin
select concat(e.empno,e.ename) concat1, concat(d.dname,d.loc ) concat2 into strict v_concat1,v_concat2
from demo.employee e, demo.dept d
where 1=1
and e.deptno = d.deptno
and e.deptno = id;/* dmap converted statement start */
perform dbms_output.put_line( concat(v_concat1, v_concat2)) ;/* dmap converted statement end */
exception
when others then
null;end;
$body$
language plpgsql
;
