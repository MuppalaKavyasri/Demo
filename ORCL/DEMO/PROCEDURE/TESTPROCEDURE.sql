create or replace procedure demo."testprocedure"  ( name varchar , ur_name inout varchar ) as $body$
begin
ur_name := name;end;
$body$
language plpgsql
;
