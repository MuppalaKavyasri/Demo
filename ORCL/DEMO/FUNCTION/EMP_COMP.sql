create or replace  function  demo."emp_comp"  ( p_sal numeric, p_comm numeric ) returns numeric as $body$
begin
return(p_sal + coalesce(p_comm, 0)) * 24;end;
--dmap converted function completed
$body$
language plpgsql
stable;
