create or replace procedure demo."concat_ex1"  (p1 inout varchar) as $body$
begin
select concat(concat('A', 'B'),'C') as concat into strict p1;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
