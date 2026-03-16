create or replace procedure demo."tonum"  ( i inout numeric) as $body$
begin
select (12345.555)::numeric  into strict i;end;
$body$
language plpgsql
;
