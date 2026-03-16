create or replace procedure demo."concat_ex4"  (p1 inout varchar) as $body$
declare
pl varchar(50);
begin
select concat('Oracle', ' is in my database.') as concat into strict pl;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
