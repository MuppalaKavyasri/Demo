create or replace procedure yoda."ins_upd_sport_type"  (p_name varchar, p_desc varchar) as $body$
begin 

merge into yoda.sport_type s1
using(select p_name name ) s2
on (s1.name = s2.name)
when matched then
update set description= p_desc
when not matched then
insert(s1.name, s1.description)
values (p_name, p_desc);
/*
-- test cases:
select * from yoda.sport_type;
exec call yoda.ins_upd_sport_type ('cricket', 'Twenty20 cricket league');
select * from yoda.sport_type;
exec call yoda.ins_upd_sport_type ('cricket', 'The Indian Premier League is a professional men''s Twenty20 cricket league');
select * from yoda.sport_type;
rollback;
*/
end;
$body$
language plpgsql
SECURITY DEFINER
;
