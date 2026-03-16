create or replace procedure demo.example_pkg_valid_procedure2 () as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin
-- package does not have global variables
--dmap conversion comment: gtt declaration added
perform dbms_output.put_line('Executing valid_procedure2');end;
$body$
language plpgsql
;
