create or replace procedure demo.pack2_rmt1 (x numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin
-- package does not have global variables
--dmap conversion comment: gtt declaration added
perform dbms_output.put_line(x*x);end;
$body$
language plpgsql
;
