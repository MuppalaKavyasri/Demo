create or replace procedure yoda."loadmlbplayers"  () as $body$
declare
t_id numeric;
mlb_players cursor for
select distinct
case when trim(both mlb_team_long)='Anaheim Angels' then  'Los Angeles Angels'  else mlb_team_long end  t_name
,trim(both mlb_name) name
,oracle.substr(trim(both mlb_name),1,position(' ' in mlb_name)) l_name
,oracle.substr(trim(both mlb_name),position(' ' in mlb_name)) f_name
from mlb_data;
begin 

for trec in mlb_players loop
select id into strict t_id from sport_team
where sport_type_name = 'baseball'
and   sport_league_short_name = 'MLB'
and   name = trec.t_name;
insert into player(sport_team_id, last_name, first_name, full_name)
values (t_id, trec.l_name, trec.f_name, trec.name);
end loop;end;
$body$
language plpgsql
SECURITY DEFINER
;
