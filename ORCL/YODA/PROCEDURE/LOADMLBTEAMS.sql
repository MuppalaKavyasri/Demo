create or replace procedure yoda."loadmlbteams"  () as $body$
declare
v_div sport_division.short_name%type;
mlb_teams cursor for
select distinct case when trim(both mlb_team)='AAA' then 'LAA'  else mlb_team end  a_name,
case when trim(both mlb_team_long)='Anaheim Angels' then  'Los Angeles Angels'  else mlb_team_long end  l_name
from mlb_data;
begin 

for trec in mlb_teams loop
case
when trec.a_name in ('BAL', 'BOS', 'TOR', 'TB', 'NYY')  then v_div := 'AL East';
when trec.a_name in ('CLE','DET','KC','CWS','MIN') then v_div := 'AL Central';
when trec.a_name in ('TEX','SEA','HOU','OAK','LAA') then v_div := 'AL West';
when trec.a_name in ('WSH','MIA','NYM','PHI','ATL')then v_div := 'NL East';
when trec.a_name in ('CHC','STL','PIT','MIL','CIN') then v_div := 'NL Central';
when trec.a_name in ('COL','SD','LAD','SF','ARI') then v_div := 'NL West';
end case;
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values (trec.l_name, trec.a_name, 'baseball','MLB',v_div);
end loop;end;
$body$
language plpgsql
SECURITY DEFINER
;
