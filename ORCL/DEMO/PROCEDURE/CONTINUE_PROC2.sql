create or replace procedure demo."continue_proc2"  () as $body$
begin
for n_index in 1 .. 10
loop
-- skip odd numbers
if mod( n_index, 2 ) = 1 then
continue;
end if;
perform dbms_output.put_line( n_index );
end loop;end;
$body$
language plpgsql
;
