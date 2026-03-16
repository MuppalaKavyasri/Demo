create or replace procedure demo."lappend"  (cnt inout varchar) as $body$
begin
insert /*+ append_values */ into members values (1,'a','b','c');
select 'success' into strict cnt;
perform dbms_output.put_line('test');end;
$body$
language plpgsql
;
