create or replace procedure demo."varc"  (op inout varchar ) as $body$
begin
select cast('This is a sample data' as varchar(40)) into strict op;end;
$body$
language plpgsql
;
