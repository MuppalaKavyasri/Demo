create or replace procedure yoda."loadnflteams"  () as $body$
declare
v_sport_type varchar(10) := 'football';
v_league     varchar(10) := 'NFL';
v_division   varchar(10);
begin 

v_division := 'AFC North';
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Baltimore Ravens','BAL',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Cincinnati Bengals','CIN',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Cleveland Browns','CLE',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Pittsburgh Steelers','PIT',v_sport_type,v_league,v_division);
v_division := 'AFC South';
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Houston Texans','HOU',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Indianapolis Colts','IND',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Jacksonville Jaguars','JAX',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Tennessee Titans','TEN',v_sport_type,v_league,v_division);
v_division := 'AFC East';
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Buffalo Bills','BUF',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Miami Dolphins','MIA',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('New England Patriots','NE',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('New York Jets','NYJ',v_sport_type,v_league,v_division);
v_division := 'AFC West';
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Denver Broncos','DEN',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Kansas City Chiefs','KC',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Oakland Raiders','OAK',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('San Diego Chargers','SD',v_sport_type,v_league,v_division);
v_division := 'NFC North';
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Chicago Bears','CHI',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Detroit Lions','DET',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Green Bay Packers','GB',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Minnesota Vikings','MIN',v_sport_type,v_league,v_division);
v_division := 'NFC South';
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Atlanta Falcons','ATL',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Carolina Panthers','CAR',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('New Orleans Saints','NO',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Tampa Bay Buccaneers','TB',v_sport_type,v_league,v_division);
v_division := 'NFC East';
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Dallas Cowboys','DAL',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('New York Giants','NYG',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Philadelphia Eagles','PHI',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Washington Redskins','WAS',v_sport_type,v_league,v_division);
v_division := 'NFC West';
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Arizona Cardinals','ARI',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Los Angeles Rams','LA',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('San Francisco 49ers','SF',v_sport_type,v_league,v_division);
insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
values ('Seattle Seahawks','SEA',v_sport_type,v_league,v_division);end;
$body$
language plpgsql
SECURITY DEFINER
;
