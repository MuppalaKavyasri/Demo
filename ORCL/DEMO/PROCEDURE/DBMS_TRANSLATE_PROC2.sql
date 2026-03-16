create or replace procedure demo."dbms_translate_proc2"  (p1 inout varchar) as $body$
declare
pl varchar(50);
begin
select
translate( 'KINDER', 'D', 'DET' ) into strict pl;
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
