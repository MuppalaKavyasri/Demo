create or replace procedure demo."subst"  (v1 inout varchar) as $body$
begin
select oracle.substr('This is a test', 6, 2) into strict v1;
perform dbms_output.put_line(v1);end;
$body$
language plpgsql
;
