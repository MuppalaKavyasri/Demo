create or replace procedure demo."subquery"  () as $body$
begin
perform ename
from testconst.emp
where ename not in (select ename
from testconst.emp
where ename = null);end;
$body$
language plpgsql
;
