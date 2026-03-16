create or replace procedure demo."mer"  () as $body$
begin
merge into demo.member_staging x
using(select member_id, first_name, last_name, rank from demo.members) y
on (x.member_id  = y.member_id)
when matched then
update set x.first_name = y.first_name,
x.last_name = y.last_name,
x.rank = y.rank
when not matched then
insert(x.member_id, x.first_name, x.last_name, x.rank)
values (y.member_id, y.first_name, y.last_name, y.rank);end;
$body$
language plpgsql
;
