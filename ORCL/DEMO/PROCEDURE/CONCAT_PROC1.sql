create or replace procedure demo."concat_proc1"  (p1 inout numeric) as $body$
begin
select concat(concat('A', 'B'),'C') as concat into strict p1;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
