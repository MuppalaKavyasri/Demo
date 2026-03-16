create or replace  function  demo."balance"  (acct_id numeric) returns numeric as $body$
declare
acct_bal numeric;
begin
select bal into strict acct_bal from accts
where acct_no = acct_id;
return acct_bal;end;
--dmap converted function completed
$body$
language plpgsql
stable;
