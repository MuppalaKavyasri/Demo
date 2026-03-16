create or replace procedure demo."decode_ex3"  (p1 inout varchar) as $body$
begin
select case when 3=1 then  'One' when 3=2 then  'Two'  else 'Not one or two' end  as decode into strict p1;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
