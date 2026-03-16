create or replace procedure demo."decode_ex1"  (p1 inout varchar) as $body$
begin
select case when 1=1 then  'One' end  as decode into strict p1;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
