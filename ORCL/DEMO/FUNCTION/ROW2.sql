create or replace  function  demo."row2"  () returns numeric as $body$
declare
--compree_num number;
cnt         numeric;
rr oid;
v_str  varchar(100);
r_id   numeric;
c_date timestamp(0);
begin
/* dmap converted statement start */
select row_number() over ()  into strict r_id from all_bill_resources;/* dmap converted statement end */
exception
when others then
return -1;end;
--dmap converted function completed
$body$
language plpgsql
stable;
