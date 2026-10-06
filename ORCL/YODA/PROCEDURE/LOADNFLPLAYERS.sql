create or replace procedure yoda."loadnflplayers"  () as $body$
declare
t_id numeric;
nfl_players cursor for
select team
,name
,rtrim(trim(both oracle.substr(trim(both name),1,position(',' in name))),',') l_name
,trim(both ltrim(trim(both oracle.substr(trim(both name),position(',' in name))),',')) f_name
from nfl_data;
begin 

for prec in nfl_players loop
select id into strict t_id from sport_team
where sport_type_name = 'football'
and   sport_league_short_name = 'NFL'
and   abbreviated_name = prec.team;
insert into player(sport_team_id, last_name, first_name, full_name)
values (t_id, prec.l_name, prec.f_name, prec.name);
end loop;end;
$body$
language plpgsql
SECURITY DEFINER
;
