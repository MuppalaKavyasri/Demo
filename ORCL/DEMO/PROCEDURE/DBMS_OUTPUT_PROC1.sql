create or replace procedure demo."dbms_output_proc1"  () as $body$
begin
perform dbms_output.put_line( 'One' );
perform dbms_output.put_line( 'Two' );
perform dbms_output.enable;
perform dbms_output.put_line( 'Three' );end;
$body$
language plpgsql
;
