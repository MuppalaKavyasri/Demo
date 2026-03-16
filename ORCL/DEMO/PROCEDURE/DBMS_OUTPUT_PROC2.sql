create or replace procedure demo."dbms_output_proc2"  ( id numeric ) as $body$
declare
c1 cursor for
select * from demo.employee where deptno = id;
begin
/* dmap converted statement start */
for row in c1
loop
perform dbms_output.put_line( concat('empno', 'ename')) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
