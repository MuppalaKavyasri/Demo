create or replace procedure demo."decode_proc3"  () as $body$
declare
v_name varchar(20);
v_empno varchar(50);
begin
select ename,
case when empno=7839 then  'KING' when empno=10001 then  'Microsoft' when empno=10002 then  'Hewlett Packard'  else 'Gateway' end  result
into strict v_name,v_empno
from demo.employee;/* dmap converted statement start */
perform dbms_output.put_line( concat(v_name, v_empno)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
