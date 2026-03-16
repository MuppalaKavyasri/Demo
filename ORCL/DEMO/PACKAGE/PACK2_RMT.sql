create or replace  function  demo.pack2_rmt (x numeric) returns numeric as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin
-- package does not have global variables
--dmap conversion comment: gtt declaration added
return(x*x);end;
$body$
language plpgsql
stable;
