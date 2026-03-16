create or replace procedure demo."decode_ex2"  (p1 inout varchar) as $body$
begin
select case when 1=2 then  'One'  else 'Not one' end  as decode into strict p1;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
