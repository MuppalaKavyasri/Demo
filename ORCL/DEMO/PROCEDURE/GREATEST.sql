create or replace procedure demo."greatest"  (cnt inout integer) as $body$
begin
select oracle.greatest(5,4,7,2,6,1)  into strict cnt;
perform dbms_output.put_line(cnt);end;
$body$
language plpgsql
;
