create or replace procedure demo."translate_proc1"  (pl inout varchar) as $body$
begin
select translate( 'KINDER', 'D', 'DET' ) into strict pl;
perform dbms_output.put_line(pl);end;
$body$
language plpgsql
;
