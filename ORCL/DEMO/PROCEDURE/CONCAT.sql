create or replace procedure demo."concat"  (p1 inout varchar) as $body$
declare
pl varchar(50);
begin
select concat('Let''s', ' learn Oracle') as concat into strict pl;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
