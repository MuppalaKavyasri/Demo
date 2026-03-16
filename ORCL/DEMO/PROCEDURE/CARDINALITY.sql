create or replace procedure demo."cardinality"  (cnt inout integer) as $body$
begin
/* dmap converted statement start */
select /*+ seqscan */ sal into strict cnt
from emp where ename='MILLER';/* dmap converted statement end */
perform dbms_output.put_line(cnt);end;
$body$
language plpgsql
;
