create or replace procedure demo."tabpart"  (p1 inout varchar) as $body$
begin
/* dmap converted statement start */
select partition_name into strict p1 from (select nmsp_child.nspname  as partition_name
from pg_inherits
join pg_class parent on pg_inherits.inhparent = parent.oid
join pg_class child on pg_inherits.inhrelid = child.oid
join pg_namespace nmsp_parent   on nmsp_parent.oid  = parent.relnamespace
join pg_namespace nmsp_child on nmsp_child.oid   = child.relnamespace)a;/* dmap converted statement end */
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
