create or replace procedure demo."decode_ex4"  (p1 inout varchar) as $body$
begin
select case when 1='Southlake' then                               2 when 1='San Francisco' then                               3 when 1='New Jersey' then                               4 when 1='Seattle' then                                 'Non domestic' end
as location_of_inventory into strict p1;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
